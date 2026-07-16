import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['th', 'en', 'km'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? thText = '',
    String? enText = '',
    String? kmText = '',
  }) =>
      [thText, enText, kmText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'yzgvhu8z': {
      'th': 'ការផ្សព្វផ្សាយ',
      'en': 'The study of the world',
      'km': 'ការសិក្សាអំពីពិភពលោក',
    },
    'xvdqcbt7': {
      'th': 'សេចក្តីប្រកាស',
      'en': 'The work of the people',
      'km': 'ការងាររបស់ប្រជាជន',
    },
    'msu2mycr': {
      'th': 'Home Page',
      'en': 'Home Page',
      'km': 'ទំព័រដើម',
    },
    'eg4l3lia': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // LoginPage
  {
    '3yrob4sh': {
      'th': 'Employee Id',
      'en': 'Employee ID',
      'km': 'អត្តសញ្ញាណបុគ្គលិក',
    },
    'ohcpr05u': {
      'th': 'Password',
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    'nu4foeva': {
      'th': 'LOGIN',
      'en': 'LOGIN',
      'km': 'ចូលគណនី',
    },
    '89vtvrx8': {
      'th': 'Copyright ©2025.  SAWAD Rung Reung Finance.',
      'en': 'Copyright ©2025.  SAWAD Rung Reung Finance.',
      'km': 'រក្សាសិទ្ធិ ©២០២៥។ គ្រឹះស្ថានហិរញ្ញវត្ថុ រុងរឿង។',
    },
    '55w51qku': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // SetPinPage
  {
    'whuc4k7q': {
      'th': 'កំណត់ម្ជុលរបស់អ្នក។',
      'en': 'The work of the people',
      'km': 'ការងាររបស់ប្រជាជន',
    },
    'dsthx89z': {
      'th': 'ម្ជុលនេះនឹងប្រើដើម្បីបញ្ចូលកម្មវិធីនៅពេលបន្ទាប់',
      'en': 'The study of the world The study of the world',
      'km': 'ការសិក្សាអំពីពិភពលោក ការសិក្សាអំពីពិភពលោក',
    },
    'sfwe1e1n': {
      'th': 'Confirm',
      'en': 'Confirm',
      'km': 'បញ្ជាក់',
    },
    'ri2ckbax': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // PinLoginPage
  {
    'z2i5fddm': {
      'th': 'Logout',
      'en': 'Logout',
      'km': 'ចាកចេញ',
    },
    '8xgh3dxe': {
      'th': 'Clear Cache',
      'en': 'Clear Cache',
      'km': 'សម្អាតឃ្លាំងសម្ងាត់',
    },
    'tz2mjpkn': {
      'th': 'សូមស្វាគមន៍មកកាន់ Morning Khmer',
      'en': 'Good Morning Khmer',
      'km': 'សួស្តីពេលព្រឹកខ្មែរ',
    },
    'enk1y9d4': {
      'th': 'បញ្ចូល Pin ដើម្បីប្រើកម្មវិធី',
      'en': 'Pin on the beauty of the world',
      'km': 'ភ្ជាប់ជាមួយភាពស្រស់ស្អាតនៃពិភពលោក',
    },
    'y04do6re': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // DashboardCheckinPage
  {
    'k8at514u': {
      'th': 'Menu',
      'en': 'Menu',
      'km': 'ម៉ឺនុយ',
    },
    'wjqdrmls': {
      'th': 'Check in-out',
      'en': 'Check in-out',
      'km': 'ពិនិត្យចូល-ចេញ',
    },
    'dva10aoi': {
      'th': 'Check-in history',
      'en': 'Check-in history',
      'km': 'ប្រវត្តិ​ចុះឈ្មោះ​ចូល',
    },
    'lfsyksyp': {
      'th': 'Change location',
      'en': 'Change location',
      'km': 'ផ្លាស់ប្តូរទីតាំង',
    },
    '0169bjjg': {
      'th': 'Check in - Check out',
      'en': 'Check in - Check out',
      'km': 'ចូល - ចេញ',
    },
    'z2b59qdx': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // EmployeeCheckinPage
  {
    'lzuw1jai': {
      'th': 'Clock in/Clock out',
      'en': 'Clock in/Clock out',
      'km': 'ចូល/ចេញម៉ោង',
    },
    'cco8jndc': {
      'th': 'Select: ',
      'en': 'Select:',
      'km': 'ជ្រើសរើស៖',
    },
    '331wm3rp': {
      'th': 'Check-in location...',
      'en': 'Check-in location...',
      'km': 'ទីតាំងចុះឈ្មោះចូល...',
    },
    'grm5nu76': {
      'th': 'search',
      'en': 'The branch where I will check in...',
      'km': 'សាខាដែលខ្ញុំនឹងចុះឈ្មោះចូល...',
    },
    'x5og49oq': {
      'th': '',
      'en': '',
      'km': '',
    },
    's9635h0e': {
      'th': 'Reason:',
      'en': 'Reason:',
      'km': 'ហេតុផល៖',
    },
    'zird1tx0': {
      'th': 'Please provide a reason.',
      'en': 'Please provide a reason.',
      'km': 'សូមផ្តល់ហេតុផល។',
    },
    'u583xjfq': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wcu5tpgh': {
      'th': 'Clock in-out',
      'en': 'Clock in-out',
      'km': 'នាឡិកាចូល-ចេញ',
    },
    'owbuqmn5': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // CheckinStatusPage
  {
    'tn6tzlk6': {
      'th': 'Clock-in/out Time',
      'en': 'Clock-in/out Time',
      'km': 'ម៉ោងចូល/ចេញ',
    },
    'avs84rsb': {
      'th': '',
      'en': '',
      'km': '',
    },
    'xvusk7tl': {
      'th':
          '** Branches with special operating hours and branches with two shifts.',
      'en':
          '** Branches with special operating hours and branches with two shifts.',
      'km': '** សាខាដែលមានម៉ោងធ្វើការពិសេស និងសាខាដែលមានវេនពីរ។',
    },
    'acg5eqid': {
      'th': 'Tap to read more',
      'en': 'Tap to read more',
      'km': 'ចុចដើម្បីអានបន្ថែម',
    },
    'fl8zkr9w': {
      'th':
          '- ให้บันทึกเวลาในโปรเเกรมอรุณสวัสดิ์ ระบบจะส่งเวลาทำงานไปยังระบบ coach\n- ให้ตรวจสอบเวลางานผ่านระบบ coach อีกครั้งในวันถัดไป',
      'en':
          '- Record your work time in the \"Good Morning\" program. The system will send your work time to the coach system.\n- Please check your work time again through the coach system the following day.',
      'km':
          '- កត់ត្រាពេលវេលាធ្វើការរបស់អ្នកនៅក្នុងកម្មវិធី \"អរុណសួស្តី\"។ ប្រព័ន្ធនឹងផ្ញើពេលវេលាធ្វើការរបស់អ្នកទៅប្រព័ន្ធគ្រូបង្វឹក។\n- សូមពិនិត្យមើលពេលវេលាធ្វើការរបស់អ្នកម្តងទៀតតាមរយៈប្រព័ន្ធគ្រូបង្វឹកនៅថ្ងៃបន្ទាប់។',
    },
    'quxg2e8q': {
      'th': 'Current month',
      'en': 'Current month',
      'km': 'ខែបច្ចុប្បន្ន',
    },
    'k5j5k196': {
      'th': 'Date',
      'en': 'Date',
      'km': 'កាលបរិច្ឆេទ',
    },
    '8rng1l0k': {
      'th': 'Clock in',
      'en': 'Clock in',
      'km': 'ចូលម៉ោង',
    },
    'ow0p1i28': {
      'th': 'Clock out',
      'en': 'Clock out',
      'km': 'អស់ម៉ោង',
    },
    'k2wawfqu': {
      'th': 'Status',
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    '079rkutr': {
      'th': 'Last month',
      'en': 'Last month',
      'km': 'ខែមុន',
    },
    '1m54a6jn': {
      'th': 'Date',
      'en': 'Date',
      'km': 'កាលបរិច្ឆេទ',
    },
    'daclcm7k': {
      'th': 'Clock in',
      'en': 'Clock in',
      'km': 'ចូលម៉ោង',
    },
    'g1mtmsfv': {
      'th': 'Clock out',
      'en': 'Clock out',
      'km': 'អស់ម៉ោង',
    },
    'mpc0mifr': {
      'th': 'Status',
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    '5t9uglm9': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // CheckinSuccessPage
  {
    '4h065n2k': {
      'th': 'Success!',
      'en': 'Success!',
      'km': 'ជោគជ័យ!',
    },
    '6t48v7i9': {
      'th': 'Checkin Successful',
      'en': 'Check-in Successful',
      'km': 'ការចុះឈ្មោះចូលបានជោគជ័យ',
    },
    'avymu6f4': {
      'th': 'Return to Dashboard',
      'en': 'Return to Dashboard',
      'km': 'ត្រឡប់ទៅផ្ទាំងគ្រប់គ្រងវិញ',
    },
    'hdz2a7oq': {
      'th': 'Check Statue',
      'en': 'Check Statue',
      'km': 'រូបសំណាកពិនិត្យ',
    },
    'kg27wa5r': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // ProfilePage
  {
    'bamscwtt': {
      'th': 'รหัสพนักงาน',
      'en': 'Employee ID',
      'km': 'អត្តសញ្ញាណបុគ្គលិក',
    },
    'v8sbzo3x': {
      'th': ' :',
      'en': '',
      'km': '',
    },
    'j6m15xs2': {
      'th': 'สาขา',
      'en': 'branch',
      'km': 'សាខា',
    },
    'dewdxdgi': {
      'th': ' :',
      'en': '',
      'km': '',
    },
    'arqfmoj2': {
      'th': 'วันเริ่มงาน',
      'en': 'Start day',
      'km': 'ថ្ងៃចាប់ផ្តើម',
    },
    'vezelw6g': {
      'th': ' :',
      'en': '',
      'km': '',
    },
    '3uytyrks': {
      'th': 'Profile',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // SuperAppPage
  {
    'pu6vzha4': {
      'th': 'สวัสดีคุณ',
      'en': 'hello',
      'km': 'សួស្តី',
    },
    'h0q2icc8': {
      'th': '1',
      'en': '',
      'km': '',
    },
    '7wfh7wwu': {
      'th': 'Service',
      'en': 'Service',
      'km': 'សេវាកម្ម',
    },
    '7soacm6f': {
      'th': 'Check in-out',
      'en': 'Check in-out',
      'km': 'ពិនិត្យចូល-ចេញ',
    },
    '6wwky192': {
      'th': '1',
      'en': '',
      'km': '',
    },
    'gsbwzmz4': {
      'th': 'Leave Request',
      'en': '',
      'km': '',
    },
    '4zeu6934': {
      'th': 'Location\nemployee',
      'en': '',
      'km': '',
    },
    'x9wr11l2': {
      'th': 'Tools',
      'en': 'Tools',
      'km': 'ឧបករណ៍',
    },
    'kauig3p1': {
      'th': '',
      'en': '',
      'km': '',
    },
    'lc7us92u': {
      'th': '',
      'en': '',
      'km': '',
    },
    'sd7g2it4': {
      'th': '',
      'en': '',
      'km': '',
    },
    'llniz19b': {
      'th': '',
      'en': '',
      'km': '',
    },
    '08lp0w2u': {
      'th': 'Incentive สาขา',
      'en': '',
      'km': '',
    },
    '0jckdxuq': {
      'th': '06-10-2022',
      'en': '',
      'km': '',
    },
    '7bfeez4r': {
      'th': 'โปรโมชั่น การขายพิเศษ',
      'en': '',
      'km': '',
    },
    'oznxz7a0': {
      'th': 'version 1.0.0',
      'en': 'version 1.0.0',
      'km': 'កំណែ 1.0.0',
    },
    '6l8asw44': {
      'th': 'Language Settings',
      'en': 'Language Settings',
      'km': 'ការកំណត់ភាសា',
    },
    'ei1svzkf': {
      'th': '',
      'en': '',
      'km': '',
    },
    'tafhmsdu': {
      'th': 'Log Out',
      'en': 'Log Out',
      'km': 'ចាកចេញ',
    },
    'z85tog55': {
      'th': '',
      'en': '',
      'km': '',
    },
    'olt0zzt9': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // BlankPage
  {
    'yoz20h01': {
      'th': 'Page Title',
      'en': 'Page Title',
      'km': 'ចំណងជើងទំព័រ',
    },
    '07df7hxh': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // AddLeavePage
  {
    'ujwk988e': {
      'th': 'Submit approval request',
      'en': '',
      'km': '',
    },
    'uftzsdn6': {
      'th': 'Leave Type :',
      'en': '',
      'km': '',
    },
    'f8bq5dp5': {
      'th': 'Time Period :',
      'en': '',
      'km': '',
    },
    'og9req83': {
      'th': 'Please select...',
      'en': '',
      'km': '',
    },
    'vx13v0o3': {
      'th': 'Search...',
      'en': '',
      'km': '',
    },
    '3el6hdfy': {
      'th': 'full',
      'en': '',
      'km': '',
    },
    'qq6ohxgh': {
      'th': 'Leave Date :',
      'en': '',
      'km': '',
    },
    'q51sk1b2': {
      'th': 'Number of leave days :',
      'en': '',
      'km': '',
    },
    '1htd1ret': {
      'th': '',
      'en': '',
      'km': '',
    },
    'kpvsl577': {
      'th': 'Number of leave days in other years :',
      'en': '',
      'km': '',
    },
    'lku4rtsw': {
      'th': '',
      'en': '',
      'km': '',
    },
    '1fmqvl7s': {
      'th': 'Contact phone number :',
      'en': '',
      'km': '',
    },
    'mwb2wro4': {
      'th': '',
      'en': '',
      'km': '',
    },
    'k110ub8y': {
      'th': 'Please enter your phone number.',
      'en': '',
      'km': '',
    },
    'j8vqlgrs': {
      'th': 'กรุณากรอกเบอร์โทรศัพท์',
      'en': '',
      'km': '',
    },
    '7s76sd9z': {
      'th': 'Please choose an option from the dropdown',
      'en': '',
      'km': '',
    },
    'pyfuqn3y': {
      'th': 'Reason for leave :',
      'en': '',
      'km': '',
    },
    'jdlfbcl3': {
      'th': '',
      'en': '',
      'km': '',
    },
    'igutu2ha': {
      'th': 'Please enter...',
      'en': '',
      'km': '',
    },
    'so3ualw3': {
      'th': 'Attach leave file :',
      'en': '',
      'km': '',
    },
    'hqvi18au': {
      'th': '[Attach image file]',
      'en': '',
      'km': '',
    },
    '2hj3ux8x': {
      'th': 'Save',
      'en': '',
      'km': '',
    },
    'be2ft1ls': {
      'th': 'จำนวนวันที่ปีปัจจุบันลา :',
      'en': '',
      'km': '',
    },
    'wrjvyg1m': {
      'th': '',
      'en': '',
      'km': '',
    },
    'jge42n89': {
      'th': 'จำนวนวันที่ลาปีอื่น :',
      'en': '',
      'km': '',
    },
    'hw57c62d': {
      'th': 'Hello World',
      'en': '',
      'km': '',
    },
    'jralnhbk': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // leaveShowPage
  {
    'fsp9g3j9': {
      'th': 'Approval request list',
      'en': '',
      'km': '',
    },
    '6opwwzik': {
      'th': '',
      'en': '',
      'km': '',
    },
    'kcxlfllh': {
      'th': 'Please select the month you want to search for',
      'en': 'Please select the month you want to search for',
      'km': 'សូមជ្រើសរើសខែដែលអ្នកចង់ស្វែងរក',
    },
    'jgysw1qo': {
      'th': 'previous year',
      'en': '',
      'km': '',
    },
    'nxdyt0io': {
      'th': 'current year',
      'en': '',
      'km': '',
    },
    'yrst9rn3': {
      'th': 'next year',
      'en': '',
      'km': '',
    },
    'q8gbofl6': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wxm753ko': {
      'th': 'Please select the month you want to search for',
      'en': '',
      'km': '',
    },
    'cjk56qty': {
      'th': 'January',
      'en': '',
      'km': '',
    },
    'zyhgfxxn': {
      'th': 'February',
      'en': '',
      'km': '',
    },
    '1yxuzoy6': {
      'th': 'March',
      'en': '',
      'km': '',
    },
    '1r223pyf': {
      'th': 'April',
      'en': '',
      'km': '',
    },
    'j495iana': {
      'th': 'May',
      'en': '',
      'km': '',
    },
    '8dzl2frc': {
      'th': 'June',
      'en': '',
      'km': '',
    },
    '55siobqk': {
      'th': 'July',
      'en': '',
      'km': '',
    },
    'ihjr388y': {
      'th': 'August',
      'en': '',
      'km': '',
    },
    '0d7wk9z1': {
      'th': 'September',
      'en': '',
      'km': '',
    },
    '1b3iyukf': {
      'th': 'October',
      'en': '',
      'km': '',
    },
    'zcefwify': {
      'th': 'November',
      'en': '',
      'km': '',
    },
    'ndgzf9y6': {
      'th': 'December',
      'en': '',
      'km': '',
    },
    '1x6yyt6q': {
      'th': 'Leave',
      'en': '',
      'km': '',
    },
    '0i66w6a2': {
      'th': '',
      'en': '',
      'km': '',
    },
    'efypo8mj': {
      'th': 'ดูรายละเอียด',
      'en': '',
      'km': '',
    },
    'qzi7gp84': {
      'th': 'Type of leave:',
      'en': '',
      'km': '',
    },
    '91fo0slx': {
      'th': '',
      'en': '',
      'km': '',
    },
    'zhnkz0ph': {
      'th': 'Transaction date:',
      'en': '',
      'km': '',
    },
    'tm1f47em': {
      'th': '',
      'en': '',
      'km': '',
    },
    'x7ezrdub': {
      'th': 'Leave date:',
      'en': '',
      'km': '',
    },
    'rne2p229': {
      'th': '',
      'en': '',
      'km': '',
    },
    'cl6qob0z': {
      'th': 'Number of leave days:',
      'en': '',
      'km': '',
    },
    'sejicad5': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wcw4izdt': {
      'th': 'Period of time:',
      'en': '',
      'km': '',
    },
    'icun7jg4': {
      'th': '',
      'en': '',
      'km': '',
    },
    '2slr501i': {
      'th': 'Reason for leave:',
      'en': '',
      'km': '',
    },
    '9ehkbsde': {
      'th': '',
      'en': '',
      'km': '',
    },
    'kx64bk1h': {
      'th': 'Approver:',
      'en': '',
      'km': '',
    },
    'n0zirmxb': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0w0tntkt': {
      'th': 'Status:',
      'en': '',
      'km': '',
    },
    '12qldpvq': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wcmnt8nv': {
      'th': 'Attached file:',
      'en': '',
      'km': '',
    },
    'dfrcgliu': {
      'th': 'Edit',
      'en': '',
      'km': '',
    },
    'twwkoxsu': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    'lytjxb3q': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // AddResignPage
  {
    't9oiyl2z': {
      'th': '[Some hint text...]',
      'en': '',
      'km': '',
    },
    'tkbab8yi': {
      'th': 'ประเภทการลา: ลาออก',
      'en': '',
      'km': '',
    },
    '01e44qzn': {
      'th': 'วันที่ทำงานวันสุดท้าย  :',
      'en': '',
      'km': '',
    },
    'jalrwahi': {
      'th': 'ระบุวันที่',
      'en': '',
      'km': '',
    },
    'esy7gtzj': {
      'th': 'เหตุผลที่ตัดสินใจลาออก (ระบุได้มากกว่า 1 ข้อ)  :',
      'en': '',
      'km': '',
    },
    'rlgflz8s': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    's67ewl11': {
      'th': 'อื่นๆ  :',
      'en': '',
      'km': '',
    },
    'u5zfrmko': {
      'th': 'ระบุ...',
      'en': '',
      'km': '',
    },
    '8f2q914t': {
      'th': 'อยากให้บริษัทปรับปรุงการทำงานด้านใดบ้าง  :',
      'en': '',
      'km': '',
    },
    '0mzl9pup': {
      'th': 'กรุณากรอก...',
      'en': '',
      'km': '',
    },
    '7ma6frkg': {
      'th': 'ในช่วงที่แจ้งลาออก สามารถติดต่อได้ที่ :',
      'en': '',
      'km': '',
    },
    'cpohqmrv': {
      'th': 'กรุณาเลือกจังหวัด...',
      'en': '',
      'km': '',
    },
    '46e1gce7': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    'pmvgcj9l': {
      'th': 'กรุณาเลือกอำเภอ...',
      'en': '',
      'km': '',
    },
    'umion64m': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    '2elzp6e1': {
      'th': 'กรุณาเลือกตำบล...',
      'en': '',
      'km': '',
    },
    'dea4bnlo': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    '4c9b5v4r': {
      'th': 'กรุณาเลือกรหัสไปรษณีย์...',
      'en': '',
      'km': '',
    },
    'lh7zebwr': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    'u587w1ov': {
      'th': 'ระบุหมู่ที่/ถนน',
      'en': '',
      'km': '',
    },
    'h5veb4jl': {
      'th': 'เบอร์ติดต่อ',
      'en': '',
      'km': '',
    },
    '2tyevilb': {
      'th': 'หากมีโอกาสจะกลับมาร่วมงานกับบริษัทหรือไม่  :',
      'en': '',
      'km': '',
    },
    'xav2srd6': {
      'th': 'กรุณาเลือก...',
      'en': '',
      'km': '',
    },
    'z66ho6vx': {
      'th': 'ร่วมงาน',
      'en': '',
      'km': '',
    },
    'iygn6hu2': {
      'th': 'ไม่ร่วมงาน',
      'en': '',
      'km': '',
    },
    '5op5j9pz': {
      'th': 'ทรัพย์สินของบริษัทที่ต้องส่งคืน (ระบุได้มากกว่า 1 ข้อ)  :',
      'en': '',
      'km': '',
    },
    '9hw32fog': {
      'th': 'Option 1',
      'en': '',
      'km': '',
    },
    '1wpw4thv': {
      'th': 'อื่นๆ  :',
      'en': '',
      'km': '',
    },
    'mk2d3gj1': {
      'th': 'ระบุ...',
      'en': '',
      'km': '',
    },
    'b98bsef7': {
      'th': 'บันทึก',
      'en': '',
      'km': '',
    },
    'qmjyufc2': {
      'th': 'ยื่นเรื่องขออนุมัติลาออก',
      'en': '',
      'km': '',
    },
    'gtp23i0u': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // LeavePage
  {
    'lols01n9': {
      'th': 'Leave List',
      'en': 'Leave List',
      'km': 'បញ្ជីចាកចេញ',
    },
    '2m29jiq2': {
      'th': '',
      'en': '',
      'km': '',
    },
    'f8wjs069': {
      'th': 'All',
      'en': 'All',
      'km': 'ទាំងអស់',
    },
    'ky78loae': {
      'th': 'Used',
      'en': 'Used',
      'km': 'ប្រើរួច',
    },
    '03pz2k86': {
      'th': 'Remaining',
      'en': 'Remaining',
      'km': 'នៅសល់',
    },
    '1ac23a0d': {
      'th': 'ลาก่อน',
      'en': 'goodbye',
      'km': 'លាហើយ',
    },
    'k31ctwg1': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // ApprovedLeavePage
  {
    '1jq2dwje': {
      'th': 'Approve many people',
      'en': '',
      'km': '',
    },
    '4thwrqfe': {
      'th': 'Select all',
      'en': '',
      'km': '',
    },
    'oq59xnd1': {
      'th': 'Approve selected',
      'en': '',
      'km': '',
    },
    'fuw0b5bl': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    '94ua3b58': {
      'th': '',
      'en': '',
      'km': '',
    },
    'z1jah8ml': {
      'th': 'Status:',
      'en': '',
      'km': '',
    },
    'k4fbntgl': {
      'th': '',
      'en': '',
      'km': '',
    },
    'v6cjlnzr': {
      'th': 'Nickname:',
      'en': '',
      'km': '',
    },
    'wenaag34': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ksy0ziy9': {
      'th': 'Department affiliation:',
      'en': '',
      'km': '',
    },
    'mmmoxx90': {
      'th': '[รอดำเนินการ]',
      'en': '',
      'km': '',
    },
    'bifue8gq': {
      'th': 'Type of leave:',
      'en': '',
      'km': '',
    },
    '63faskh0': {
      'th': '',
      'en': '',
      'km': '',
    },
    '5ykip8ce': {
      'th': 'Transaction date:',
      'en': '',
      'km': '',
    },
    'ys3ofnss': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0y5187ny': {
      'th': 'Leave date:',
      'en': '',
      'km': '',
    },
    'in48vb92': {
      'th': '',
      'en': '',
      'km': '',
    },
    'irwbu5gl': {
      'th': 'Number of leave days:',
      'en': '',
      'km': '',
    },
    '5tch4un8': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ba52ra74': {
      'th': 'Time period:',
      'en': '',
      'km': '',
    },
    'aozk7yhi': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ko1t63gc': {
      'th': 'Reason for leave:',
      'en': '',
      'km': '',
    },
    '60io1xwm': {
      'th': '',
      'en': '',
      'km': '',
    },
    'r7v1sy2p': {
      'th': 'Contact telephone number:',
      'en': '',
      'km': '',
    },
    'swdoil63': {
      'th': '',
      'en': '',
      'km': '',
    },
    'xcsyjw8s': {
      'th': 'Attachment:',
      'en': '',
      'km': '',
    },
    '1hactgyx': {
      'th': 'Approve',
      'en': '',
      'km': '',
    },
    'hd1zpea4': {
      'th': 'Do not approve',
      'en': '',
      'km': '',
    },
    '8ns92ey4': {
      'th': 'Leave approval list',
      'en': '',
      'km': '',
    },
    'vrf4h7fo': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // ApproveShowPage
  {
    '9ovfglr2': {
      'th': '',
      'en': '',
      'km': '',
    },
    '1lpsqcjf': {
      'th': 'Please select the month you want to search for',
      'en': '',
      'km': '',
    },
    'ymzm1fih': {
      'th': 'previous year',
      'en': '',
      'km': '',
    },
    '68vjxl98': {
      'th': 'current year',
      'en': '',
      'km': '',
    },
    'jdk5a2v5': {
      'th': 'next year',
      'en': '',
      'km': '',
    },
    'miovlw84': {
      'th': '',
      'en': '',
      'km': '',
    },
    '6z72qpuf': {
      'th': 'Please select the month you want to search for',
      'en': '',
      'km': '',
    },
    'udbrvpsc': {
      'th': 'January',
      'en': '',
      'km': '',
    },
    'hnhmxon8': {
      'th': 'February',
      'en': '',
      'km': '',
    },
    'l90qge73': {
      'th': 'March',
      'en': '',
      'km': '',
    },
    '3hikdqos': {
      'th': 'April',
      'en': '',
      'km': '',
    },
    'uf833dtt': {
      'th': 'May',
      'en': '',
      'km': '',
    },
    'opof0yq0': {
      'th': 'June',
      'en': '',
      'km': '',
    },
    '23tgvkik': {
      'th': 'July',
      'en': '',
      'km': '',
    },
    '7s54z3d9': {
      'th': 'August',
      'en': '',
      'km': '',
    },
    'l7rvgo1r': {
      'th': 'September',
      'en': '',
      'km': '',
    },
    'dk27bygi': {
      'th': 'October',
      'en': '',
      'km': '',
    },
    'j2tk113w': {
      'th': 'November',
      'en': '',
      'km': '',
    },
    'votcj883': {
      'th': 'December',
      'en': '',
      'km': '',
    },
    'af90frzm': {
      'th': 'Approve',
      'en': '',
      'km': '',
    },
    '36ry9wg9': {
      'th': '',
      'en': '',
      'km': '',
    },
    '4ms6wxsc': {
      'th': 'Type of leave:',
      'en': '',
      'km': '',
    },
    'aikrh377': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0iaafxfg': {
      'th': 'Transaction date:',
      'en': '',
      'km': '',
    },
    'lkyyyops': {
      'th': '',
      'en': '',
      'km': '',
    },
    '48r2qftr': {
      'th': 'Leave date:',
      'en': '',
      'km': '',
    },
    't6d7k2n8': {
      'th': '',
      'en': '',
      'km': '',
    },
    'w50iklzc': {
      'th': 'Number of leave days:',
      'en': '',
      'km': '',
    },
    'iq8vhixq': {
      'th': '',
      'en': '',
      'km': '',
    },
    'qug2c71k': {
      'th': 'Time period:',
      'en': '',
      'km': '',
    },
    'i63jfq1t': {
      'th': '',
      'en': '',
      'km': '',
    },
    'mye976ih': {
      'th': 'Reason for leave:',
      'en': '',
      'km': '',
    },
    'y5onqqha': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ycs4f6x7': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    'j4tx92qm': {
      'th': 'Not approved',
      'en': '',
      'km': '',
    },
    'csdjbrx9': {
      'th': '',
      'en': '',
      'km': '',
    },
    'avhozj98': {
      'th': 'Type of leave:',
      'en': '',
      'km': '',
    },
    'mn6o06md': {
      'th': '[ลากิจ]',
      'en': '',
      'km': '',
    },
    'qx5tjh1w': {
      'th': 'Transaction date:',
      'en': '',
      'km': '',
    },
    'g4mj40jn': {
      'th': '[01/11/2565]',
      'en': '',
      'km': '',
    },
    'hu6t7whs': {
      'th': 'Leave date:',
      'en': '',
      'km': '',
    },
    '784bd1td': {
      'th': '[11/11/2565-12/11/2565]',
      'en': '',
      'km': '',
    },
    'a3iqej9c': {
      'th': 'Number of leave days:',
      'en': '',
      'km': '',
    },
    '8yuqgilf': {
      'th': '[2]',
      'en': '',
      'km': '',
    },
    'iy9vpqor': {
      'th': 'Time period:',
      'en': '',
      'km': '',
    },
    '2s8sjnpa': {
      'th': '[ลาเต็มวัน]',
      'en': '',
      'km': '',
    },
    '8xyie5u9': {
      'th': 'Reason for leave:',
      'en': '',
      'km': '',
    },
    '6ssrbsv1': {
      'th': '[]',
      'en': '',
      'km': '',
    },
    'sa8npvrq': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    'ccxd7go5': {
      'th': 'นางสาวมนฑิรา ยอดแสง',
      'en': '',
      'km': '',
    },
    'rrb2em3t': {
      'th': 'Type of leave:',
      'en': '',
      'km': '',
    },
    '5zhocack': {
      'th': '[ลากิจ]',
      'en': '',
      'km': '',
    },
    'jzd5oh6h': {
      'th': 'Transaction date:',
      'en': '',
      'km': '',
    },
    '4qcl33d4': {
      'th': '[01/11/2565]',
      'en': '',
      'km': '',
    },
    'tpai7l0p': {
      'th': 'Leave date:',
      'en': '',
      'km': '',
    },
    '3f3r2ksr': {
      'th': '[11/11/2565-12/11/2565]',
      'en': '',
      'km': '',
    },
    '2xmg28mr': {
      'th': 'Number of leave days:',
      'en': '',
      'km': '',
    },
    'h9k6cqxb': {
      'th': '',
      'en': '',
      'km': '',
    },
    '5r5m7wk6': {
      'th': 'Time period:',
      'en': '',
      'km': '',
    },
    'zsdw21f9': {
      'th': '[ลาเต็มวัน]',
      'en': '',
      'km': '',
    },
    '4fnwyem3': {
      'th': 'Reason for leave:',
      'en': '',
      'km': '',
    },
    'mrs3y10t': {
      'th': '[]',
      'en': '',
      'km': '',
    },
    '52jrj08j': {
      'th': 'Canceled by:',
      'en': '',
      'km': '',
    },
    'lp6e3990': {
      'th': '[]',
      'en': '',
      'km': '',
    },
    'ysmso6zd': {
      'th': 'List',
      'en': '',
      'km': '',
    },
    '4wsoj8cg': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // EditLeavePage
  {
    'ificuq2n': {
      'th': 'ยื่นเรื่องขออนุมัติ',
      'en': '',
      'km': '',
    },
    'fodqx9uc': {
      'th': 'ประเภทการลา :',
      'en': '',
      'km': '',
    },
    'b29dbyuo': {
      'th': 'ช่วงเวลา :',
      'en': '',
      'km': '',
    },
    '2ib16uo0': {
      'th': 'กรุณาเลือก...',
      'en': '',
      'km': '',
    },
    '8kkmr7pm': {
      'th': 'Search...',
      'en': '',
      'km': '',
    },
    '60h3106u': {
      'th': 'ลาเต็มวัน',
      'en': '',
      'km': '',
    },
    'ogpaz9vg': {
      'th': 'ลาครึ่งวัน',
      'en': '',
      'km': '',
    },
    'b76kcikg': {
      'th': 'วันที่ลา :',
      'en': '',
      'km': '',
    },
    'wrw5c1zg': {
      'th': 'จำนวนวันที่ลา :',
      'en': '',
      'km': '',
    },
    'uepvh7sm': {
      'th': 'TextField',
      'en': '',
      'km': '',
    },
    'gsrsh3zb': {
      'th': 'เบอร์โทรติดต่อ :',
      'en': '',
      'km': '',
    },
    'j7nptk08': {
      'th': 'กรุณากรอกเบอร์โทรศัพท์',
      'en': '',
      'km': '',
    },
    'o4t7tiro': {
      'th': 'เหตุผลการลา :',
      'en': '',
      'km': '',
    },
    'kqyqcq3i': {
      'th': '',
      'en': '',
      'km': '',
    },
    'bndjea7h': {
      'th': 'กรุณากรอก...',
      'en': '',
      'km': '',
    },
    'aheaf15h': {
      'th': 'แนบไฟล์การลา :',
      'en': '',
      'km': '',
    },
    '3vqk49tl': {
      'th': '[Attach image file]',
      'en': '',
      'km': '',
    },
    'tc8wty7s': {
      'th': 'Save',
      'en': '',
      'km': '',
    },
    '1y7nxlsg': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // CalendarPage
  {
    'klwmnx5g': {
      'th': 'print date',
      'en': '',
      'km': '',
    },
    '2ks9nhe0': {
      'th': 'ตกลง',
      'en': '',
      'km': '',
    },
    't0y2y3mb': {
      'th': 'เลือกวันที่ต้องการลา',
      'en': '',
      'km': '',
    },
    'z3yk1ts0': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // DashboardLeavePage
  {
    'k3n9jgmb': {
      'th': 'Leave list',
      'en': '',
      'km': '',
    },
    '2vgir6r5': {
      'th': 'Menu',
      'en': '',
      'km': '',
    },
    'zyesa252': {
      'th': 'Leave list',
      'en': '',
      'km': '',
    },
    'e1s6zfp5': {
      'th': 'Leave approval request list',
      'en': '',
      'km': '',
    },
    '7r86wbjz': {
      'th': 'Leave approval',
      'en': '',
      'km': '',
    },
    '8eusxn5b': {
      'th': 'Approved leave list',
      'en': '',
      'km': '',
    },
    'gjv9vyea': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // CancelPage
  {
    'n96rjx6a': {
      'th': 'ยืนยันยกเลิกการลา',
      'en': '',
      'km': '',
    },
    'nmh2w1gg': {
      'th': 'ระบุเหตุผล...',
      'en': '',
      'km': '',
    },
    'agdhntog': {
      'th': 'ตกลง',
      'en': '',
      'km': '',
    },
    'ci2ialvg': {
      'th': 'ยกเลิก',
      'en': '',
      'km': '',
    },
    'a5sxkvsl': {
      'th': 'ยกเลิกการลา',
      'en': '',
      'km': '',
    },
    'mzzsebg2': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // ConfirmEmailPage
  {
    'yvp12ypk': {
      'th': 'กรุณากรอก Email ที่ต้องการรับข้อมูล',
      'en': '',
      'km': '',
    },
    '2tus85gr': {
      'th': 'ระบุ Email',
      'en': '',
      'km': '',
    },
    'y50xyu31': {
      'th': 'ตกลง',
      'en': '',
      'km': '',
    },
    'tyidngqx': {
      'th': 'ยกเลิก',
      'en': '',
      'km': '',
    },
    '7crkve3l': {
      'th': 'ยืนยัน Email',
      'en': '',
      'km': '',
    },
    'msu28vom': {
      'th': 'Home',
      'en': '',
      'km': '',
    },
  },
  // dropdownComponent
  {
    'ikjz62v6': {
      'th': 'Type Keyword',
      'en': '',
      'km': '',
    },
  },
  // SelectLanguageComponent
  {
    'ua7uyxhz': {
      'th': 'Select Language',
      'en': 'Select Language',
      'km': 'ជ្រើសរើសភាសា',
    },
    'k189s5dn': {
      'th': 'Select...',
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    '2590amkq': {
      'th': 'Search...',
      'en': '',
      'km': '',
    },
    'uk5aj70g': {
      'th': 'English',
      'en': 'English',
      'km': 'English',
    },
    'p4cdkrl0': {
      'th': 'កម្ពុជា',
      'en': 'កម្ពុជា',
      'km': 'កម្ពុជា',
    },
    '2xhlgi1g': {
      'th': 'ไทย',
      'en': 'ไทย',
      'km': 'ไทย',
    },
    '7xf0177c': {
      'th': 'Apply',
      'en': 'Apply',
      'km': 'ដាក់ពាក្យ',
    },
  },
  // DatailLeaveRequet
  {
    'b24fv3p6': {
      'th': 'Leave details',
      'en': '',
      'km': '',
    },
    '4d7u9rw0': {
      'th': 'ประเภทการลา',
      'en': '',
      'km': '',
    },
    'atxgu6s6': {
      'th': 'วันที่ลา: ',
      'en': '',
      'km': '',
    },
    '66hwwepx': {
      'th': 'ช่วงเวลา:  ',
      'en': '',
      'km': '',
    },
  },
  // ConfirmCancelLeaveComponent
  {
    '676bwhfl': {
      'th': 'Confirm leave cancellation.',
      'en': '',
      'km': '',
    },
    'fxx8fx4l': {
      'th': 'Specify the reason...',
      'en': '',
      'km': '',
    },
    '1yrtdn80': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    '6gdsajun': {
      'th': 'OK',
      'en': '',
      'km': '',
    },
  },
  // Miscellaneous
  {
    'wtnstumt': {
      'th': '',
      'en': '',
      'km': '',
    },
    '7d137fyi': {
      'th': '',
      'en': '',
      'km': '',
    },
    'jhfnarpq': {
      'th': '',
      'en': '',
      'km': '',
    },
    '5lbxpxsr': {
      'th': '',
      'en': '',
      'km': '',
    },
    'i6qeykl5': {
      'th': '',
      'en': '',
      'km': '',
    },
    '501mo2ax': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wxfihjii': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ncb7s6is': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0dhgvcpn': {
      'th': '',
      'en': '',
      'km': '',
    },
    'hli2s63h': {
      'th': '',
      'en': '',
      'km': '',
    },
    'yrhwbozu': {
      'th': '',
      'en': '',
      'km': '',
    },
    'isrpgdf2': {
      'th': '',
      'en': '',
      'km': '',
    },
    'v2wtwfm7': {
      'th': '',
      'en': '',
      'km': '',
    },
    'qtgwenvr': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ugimhyew': {
      'th': '',
      'en': '',
      'km': '',
    },
    'p83juk1f': {
      'th': '',
      'en': '',
      'km': '',
    },
    '9fwl9bik': {
      'th': '',
      'en': '',
      'km': '',
    },
    '511ynro9': {
      'th': '',
      'en': '',
      'km': '',
    },
    'tnnqxraa': {
      'th': '',
      'en': '',
      'km': '',
    },
    'evv6yd0q': {
      'th': '',
      'en': '',
      'km': '',
    },
    '1grd4966': {
      'th': '',
      'en': '',
      'km': '',
    },
    'syy0868e': {
      'th': '',
      'en': '',
      'km': '',
    },
    '8davwsd6': {
      'th': '',
      'en': '',
      'km': '',
    },
    '3nnpr2kl': {
      'th': '',
      'en': '',
      'km': '',
    },
    'nrfqp7fl': {
      'th': '',
      'en': '',
      'km': '',
    },
    'zw9f4gzp': {
      'th': '',
      'en': '',
      'km': '',
    },
    '3c8n9fml': {
      'th': '',
      'en': '',
      'km': '',
    },
    'y55nsnoe': {
      'th': '',
      'en': '',
      'km': '',
    },
    '92tz6kiu': {
      'th': '',
      'en': '',
      'km': '',
    },
    'erjo5jg1': {
      'th': '',
      'en': '',
      'km': '',
    },
    '7e7iv5ma': {
      'th': '',
      'en': '',
      'km': '',
    },
    'sqqvxveu': {
      'th': '',
      'en': '',
      'km': '',
    },
  },
].reduce((a, b) => a..addAll(b));
