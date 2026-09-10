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
      'en': 'Password',
      'km': 'ពាក្យសម្ងាត់',
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
      'en': 'search',
      'km': 'ស្វែងរក',
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
      'km': 'ម៉ោងចូល/ម៉ោងចេញ',
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
      'en': ':',
      'km': ':',
    },
    'j6m15xs2': {
      'th': 'สาขา',
      'en': 'branch',
      'km': 'សាខា',
    },
    'dewdxdgi': {
      'th': ' :',
      'en': ':',
      'km': ':',
    },
    'arqfmoj2': {
      'th': 'วันเริ่มงาน',
      'en': 'Start day',
      'km': 'ថ្ងៃចាប់ផ្តើម',
    },
    'vezelw6g': {
      'th': ' :',
      'en': ':',
      'km': ':',
    },
    '3uytyrks': {
      'th': 'Profile',
      'en': 'Profile',
      'km': 'ប្រវត្តិរូប',
    },
  },
  // SuperAppPage
  {
    'pu6vzha4': {
      'th': 'สวัสดีคุณ',
      'en': 'Hello, sir/madam.',
      'km': 'សួស្តីលោក/លោកស្រី។',
    },
    'h0q2icc8': {
      'th': '1',
      'en': '1',
      'km': '១',
    },
    '7wfh7wwu': {
      'th': 'บริการ',
      'en': 'Service',
      'km': 'សេវាកម្ម',
    },
    '7soacm6f': {
      'th': 'เช็คอิน',
      'en': 'Check in-out',
      'km': 'ពិនិត្យចូល-ចេញ',
    },
    '6wwky192': {
      'th': '1',
      'en': '1',
      'km': '១',
    },
    'gsbwzmz4': {
      'th': 'อนุมัติลา',
      'en': 'Leave a Request',
      'km': 'ទុកសំណើមួយ',
    },
    '4zeu6934': {
      'th': 'Location\nพนักงาน',
      'en': 'Location\nemployee',
      'km': 'ទីតាំង\nបុគ្គលិក',
    },
    'x9wr11l2': {
      'th': 'เครื่องมือ',
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
      'en': 'Incentive Branch',
      'km': 'សាខាលើកទឹកចិត្ត',
    },
    '0jckdxuq': {
      'th': '06-10-2022',
      'en': '06-10-2022',
      'km': '០៦-១០-២០២២',
    },
    '7bfeez4r': {
      'th': 'โปรโมชั่น การขายพิเศษ',
      'en': 'Promotion, Special Sale',
      'km': 'ការផ្សព្វផ្សាយ, ការលក់ពិសេស',
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
      'en': 'Submit approval request',
      'km': 'ដាក់ស្នើសំណើសុំការអនុម័ត',
    },
    'uftzsdn6': {
      'th': 'Leave Type :',
      'en': 'Leave Type:',
      'km': 'ប្រភេទនៃការចាកចេញ៖',
    },
    'f8bq5dp5': {
      'th': 'Time Period :',
      'en': 'Time Period :',
      'km': 'រយៈពេល៖',
    },
    'og9req83': {
      'th': 'Please select...',
      'en': 'Please select...',
      'km': 'សូមជ្រើសរើស...',
    },
    'vx13v0o3': {
      'th': 'Search...',
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '3el6hdfy': {
      'th': 'full',
      'en': 'full',
      'km': 'ពេញ',
    },
    'qq6ohxgh': {
      'th': 'Leave Date :',
      'en': 'Leave Date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    'q51sk1b2': {
      'th': 'Number of leave days :',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    '1htd1ret': {
      'th': '',
      'en': '',
      'km': '',
    },
    'kpvsl577': {
      'th': 'Number of leave days in other years :',
      'en': 'Number of leave days in other years :',
      'km': 'ចំនួនថ្ងៃឈប់សំរាកក្នុងឆ្នាំផ្សេងទៀត៖',
    },
    'lku4rtsw': {
      'th': '',
      'en': '',
      'km': '',
    },
    '1fmqvl7s': {
      'th': 'Contact phone number :',
      'en': 'Contact phone number:',
      'km': 'លេខទូរស័ព្ទទំនាក់ទំនង៖',
    },
    'mwb2wro4': {
      'th': '',
      'en': '',
      'km': '',
    },
    'k110ub8y': {
      'th': 'Please enter your phone number.',
      'en': 'Please enter your phone number.',
      'km': 'សូមបញ្ចូលលេខទូរស័ព្ទរបស់អ្នក។',
    },
    'j8vqlgrs': {
      'th': 'กรุณากรอกเบอร์โทรศัพท์',
      'en': 'Please enter your phone number.',
      'km': 'សូមបញ្ចូលលេខទូរស័ព្ទរបស់អ្នក។',
    },
    '7s76sd9z': {
      'th': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសមួយពីម៉ឺនុយទម្លាក់ចុះ',
    },
    'pyfuqn3y': {
      'th': 'Reason for leave :',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    'jdlfbcl3': {
      'th': '',
      'en': '',
      'km': '',
    },
    'igutu2ha': {
      'th': 'Please enter...',
      'en': 'Please enter...',
      'km': 'សូមបញ្ចូល...',
    },
    'so3ualw3': {
      'th': 'Attach leave file :',
      'en': 'Attach leave file:',
      'km': 'ភ្ជាប់ឯកសារឈប់សម្រាក៖',
    },
    'hqvi18au': {
      'th': '[Attach image file]',
      'en': '[Attach image file]',
      'km': '[ភ្ជាប់ឯកសាររូបភាព]',
    },
    '2hj3ux8x': {
      'th': 'Save',
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'be2ft1ls': {
      'th': 'จำนวนวันที่ปีปัจจุบันลา :',
      'en': 'Number of days of leave taken in the current year:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាកក្នុងឆ្នាំបច្ចុប្បន្ន៖',
    },
    'wrjvyg1m': {
      'th': '',
      'en': '',
      'km': '',
    },
    'jge42n89': {
      'th': 'จำนวนวันที่ลาปีอื่น :',
      'en': 'Number of days of leave in other years:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាកក្នុងឆ្នាំផ្សេងទៀត៖',
    },
    'hw57c62d': {
      'th': 'Hello World',
      'en': 'Hello World',
      'km': 'សួស្តីពិភពលោក',
    },
    'jralnhbk': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // leaveShowPage
  {
    'fsp9g3j9': {
      'th': 'Approval request list',
      'en': 'Approval request list',
      'km': 'បញ្ជីសំណើសុំការអនុម័ត',
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
      'en': 'previous year',
      'km': 'ឆ្នាំមុន',
    },
    'nxdyt0io': {
      'th': 'current year',
      'en': 'current year',
      'km': 'ឆ្នាំបច្ចុប្បន្ន',
    },
    'yrst9rn3': {
      'th': 'next year',
      'en': 'next year',
      'km': 'ឆ្នាំក្រោយ',
    },
    'q8gbofl6': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wxm753ko': {
      'th': 'Please select the month you want to search for',
      'en': 'Please select the month you want to search for',
      'km': 'សូមជ្រើសរើសខែដែលអ្នកចង់ស្វែងរក',
    },
    'cjk56qty': {
      'th': 'January',
      'en': 'January',
      'km': 'ខែមករា',
    },
    'zyhgfxxn': {
      'th': 'February',
      'en': 'February',
      'km': 'ខែកុម្ភៈ',
    },
    '1yxuzoy6': {
      'th': 'March',
      'en': 'March',
      'km': 'ខែមីនា',
    },
    '1r223pyf': {
      'th': 'April',
      'en': 'April',
      'km': 'ខែមេសា',
    },
    'j495iana': {
      'th': 'May',
      'en': 'May',
      'km': 'ឧសភា',
    },
    '8dzl2frc': {
      'th': 'June',
      'en': 'June',
      'km': 'ខែមិថុនា',
    },
    '55siobqk': {
      'th': 'July',
      'en': 'July',
      'km': 'ខែកក្កដា',
    },
    'ihjr388y': {
      'th': 'August',
      'en': 'August',
      'km': 'ខែសីហា',
    },
    '0d7wk9z1': {
      'th': 'September',
      'en': 'September',
      'km': 'ខែកញ្ញា',
    },
    '1b3iyukf': {
      'th': 'October',
      'en': 'October',
      'km': 'ខែតុលា',
    },
    'zcefwify': {
      'th': 'November',
      'en': 'November',
      'km': 'ខែវិច្ឆិកា',
    },
    'ndgzf9y6': {
      'th': 'December',
      'en': 'December',
      'km': 'ខែធ្នូ',
    },
    '1x6yyt6q': {
      'th': 'Leave',
      'en': 'Leave',
      'km': 'ចាកចេញ',
    },
    '0i66w6a2': {
      'th': '',
      'en': '',
      'km': '',
    },
    'efypo8mj': {
      'th': 'ดูรายละเอียด',
      'en': 'See details.',
      'km': 'សូមមើលព័ត៌មានលម្អិត។',
    },
    'qzi7gp84': {
      'th': 'Type of leave:',
      'en': 'Type of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    '91fo0slx': {
      'th': '',
      'en': '',
      'km': '',
    },
    'zhnkz0ph': {
      'th': 'Transaction date:',
      'en': 'Transaction date:',
      'km': 'កាលបរិច្ឆេទប្រតិបត្តិការ៖',
    },
    'tm1f47em': {
      'th': '',
      'en': '',
      'km': '',
    },
    'x7ezrdub': {
      'th': 'Leave date:',
      'en': 'Leave date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    'rne2p229': {
      'th': '',
      'en': '',
      'km': '',
    },
    'cl6qob0z': {
      'th': 'Number of leave days:',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    'sejicad5': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wcw4izdt': {
      'th': 'Period of time:',
      'en': 'Period of time:',
      'km': 'រយៈពេល៖',
    },
    'icun7jg4': {
      'th': '',
      'en': '',
      'km': '',
    },
    '2slr501i': {
      'th': 'Reason for leave:',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    '9ehkbsde': {
      'th': '',
      'en': '',
      'km': '',
    },
    'kx64bk1h': {
      'th': 'Approver:',
      'en': 'Approved:',
      'km': 'អនុម័ត៖',
    },
    'n0zirmxb': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0w0tntkt': {
      'th': 'Status:',
      'en': 'Status:',
      'km': 'ស្ថានភាព៖',
    },
    '12qldpvq': {
      'th': '',
      'en': '',
      'km': '',
    },
    'wcmnt8nv': {
      'th': 'Attached file:',
      'en': 'Attached file:',
      'km': 'ឯកសារភ្ជាប់៖',
    },
    'dfrcgliu': {
      'th': 'Edit',
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'twwkoxsu': {
      'th': 'Cancel',
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'lytjxb3q': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // AddResignPage
  {
    't9oiyl2z': {
      'th': '[Some hint text...]',
      'en': '[Some hint text...]',
      'km': '[អត្ថបទណែនាំមួយចំនួន...]',
    },
    'tkbab8yi': {
      'th': 'ประเภทการลา: ลาออก',
      'en': 'Leave type: Resignation',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖ ការលាលែងពីតំណែង',
    },
    '01e44qzn': {
      'th': 'วันที่ทำงานวันสุดท้าย  :',
      'en': 'Last day of work:',
      'km': 'ថ្ងៃចុងក្រោយនៃការងារ៖',
    },
    'jalrwahi': {
      'th': 'ระบุวันที่',
      'en': 'Specify the date.',
      'km': 'បញ្ជាក់កាលបរិច្ឆេទ។',
    },
    'esy7gtzj': {
      'th': 'เหตุผลที่ตัดสินใจลาออก (ระบุได้มากกว่า 1 ข้อ)  :',
      'en': 'Reasons for deciding to resign (you can list more than one):',
      'km':
          'ហេតុផលសម្រាប់ការសម្រេចចិត្តលាលែងពីតំណែង (អ្នកអាចរាយបញ្ជីច្រើនជាងមួយ):',
    },
    'rlgflz8s': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    's67ewl11': {
      'th': 'อื่นๆ  :',
      'en': 'other  :',
      'km': 'ផ្សេងទៀត៖',
    },
    'u5zfrmko': {
      'th': 'ระบุ...',
      'en': 'specify...',
      'km': 'បញ្ជាក់...',
    },
    '8f2q914t': {
      'th': 'อยากให้บริษัทปรับปรุงการทำงานด้านใดบ้าง  :',
      'en': 'What areas of work would you like the company to improve?',
      'km': 'តើអ្នកចង់ឱ្យក្រុមហ៊ុនកែលម្អផ្នែកការងារអ្វីខ្លះ?',
    },
    '0mzl9pup': {
      'th': 'กรุณากรอก...',
      'en': 'Please fill in...',
      'km': 'សូមបំពេញ...',
    },
    '7ma6frkg': {
      'th': 'ในช่วงที่แจ้งลาออก สามารถติดต่อได้ที่ :',
      'en':
          'During the period of submitting your resignation, you can be contacted at:',
      'km':
          'ក្នុងអំឡុងពេលនៃការដាក់ពាក្យលាលែងពីតំណែងរបស់អ្នក អ្នកអាចទាក់ទងបានតាមរយៈ៖',
    },
    'cpohqmrv': {
      'th': 'กรุณาเลือกจังหวัด...',
      'en': 'Please select a province...',
      'km': 'សូមជ្រើសរើសខេត្តមួយ...',
    },
    '46e1gce7': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    'pmvgcj9l': {
      'th': 'กรุณาเลือกอำเภอ...',
      'en': 'Please select a district...',
      'km': 'សូមជ្រើសរើសស្រុក...',
    },
    'umion64m': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    '2elzp6e1': {
      'th': 'กรุณาเลือกตำบล...',
      'en': 'Please select a subdistrict...',
      'km': 'សូមជ្រើសរើសស្រុករង...',
    },
    'dea4bnlo': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    '4c9b5v4r': {
      'th': 'กรุณาเลือกรหัสไปรษณีย์...',
      'en': 'Please select a postal code...',
      'km': 'សូមជ្រើសរើសលេខកូដប្រៃសណីយ៍...',
    },
    'lh7zebwr': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    'u587w1ov': {
      'th': 'ระบุหมู่ที่/ถนน',
      'en': 'Specify village/street number.',
      'km': 'សូមបញ្ជាក់លេខភូមិ/ផ្លូវ។',
    },
    'h5veb4jl': {
      'th': 'เบอร์ติดต่อ',
      'en': 'Contact number',
      'km': 'លេខទូរស័ព្ទទំនាក់ទំនង',
    },
    '2tyevilb': {
      'th': 'หากมีโอกาสจะกลับมาร่วมงานกับบริษัทหรือไม่  :',
      'en':
          'Would you consider returning to work for the company if given the chance?',
      'km': 'តើអ្នកនឹងពិចារណាត្រលប់ទៅធ្វើការឱ្យក្រុមហ៊ុនវិញទេ ប្រសិនបើមានឱកាស?',
    },
    'xav2srd6': {
      'th': 'กรุณาเลือก...',
      'en': 'Please select...',
      'km': 'សូមជ្រើសរើស...',
    },
    'z66ho6vx': {
      'th': 'ร่วมงาน',
      'en': 'Join the event',
      'km': 'ចូលរួមព្រឹត្តិការណ៍',
    },
    'iygn6hu2': {
      'th': 'ไม่ร่วมงาน',
      'en': 'Not attending the event.',
      'km': 'មិនបានចូលរួមព្រឹត្តិការណ៍នោះទេ។',
    },
    '5op5j9pz': {
      'th': 'ทรัพย์สินของบริษัทที่ต้องส่งคืน (ระบุได้มากกว่า 1 ข้อ)  :',
      'en':
          'Company assets that must be returned (more than one can be specified):',
      'km':
          'ទ្រព្យសកម្មរបស់ក្រុមហ៊ុនដែលត្រូវតែប្រគល់ជូនវិញ (អាចបញ្ជាក់បានច្រើនជាងមួយ)៖',
    },
    '9hw32fog': {
      'th': 'Option 1',
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    '1wpw4thv': {
      'th': 'อื่นๆ  :',
      'en': 'other  :',
      'km': 'ផ្សេងទៀត៖',
    },
    'mk2d3gj1': {
      'th': 'ระบุ...',
      'en': 'specify...',
      'km': 'បញ្ជាក់...',
    },
    'b98bsef7': {
      'th': 'บันทึก',
      'en': 'record',
      'km': 'កំណត់ត្រា',
    },
    'qmjyufc2': {
      'th': 'ยื่นเรื่องขออนุมัติลาออก',
      'en': 'Submitting a resignation request.',
      'km': 'ការដាក់ពាក្យសុំលាលែងពីតំណែង។',
    },
    'gtp23i0u': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
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
      'en': 'Approve many people',
      'km': 'យល់ព្រមលើមនុស្សជាច្រើន',
    },
    '4thwrqfe': {
      'th': 'Select all',
      'en': 'Select all',
      'km': 'ជ្រើសរើសទាំងអស់',
    },
    'oq59xnd1': {
      'th': 'Approve selected',
      'en': 'Approve selected',
      'km': 'យល់ព្រមលើការជ្រើសរើស',
    },
    'fuw0b5bl': {
      'th': 'Cancel',
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '94ua3b58': {
      'th': '',
      'en': '',
      'km': '',
    },
    'z1jah8ml': {
      'th': 'Status:',
      'en': 'Status:',
      'km': 'ស្ថានភាព៖',
    },
    'k4fbntgl': {
      'th': '',
      'en': '',
      'km': '',
    },
    'v6cjlnzr': {
      'th': 'Nickname:',
      'en': 'Nickname:',
      'km': 'ឈ្មោះហៅក្រៅ៖',
    },
    'wenaag34': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ksy0ziy9': {
      'th': 'Department affiliation:',
      'en': 'Department affiliation:',
      'km': 'សម្ព័ន្ធភាពនាយកដ្ឋាន៖',
    },
    'mmmoxx90': {
      'th': '[รอดำเนินการ]',
      'en': '[Pending]',
      'km': '[កំពុងរង់ចាំ]',
    },
    'bifue8gq': {
      'th': 'Type of leave:',
      'en': 'Type of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    '63faskh0': {
      'th': '',
      'en': '',
      'km': '',
    },
    '5ykip8ce': {
      'th': 'Transaction date:',
      'en': 'Transaction date:',
      'km': 'កាលបរិច្ឆេទប្រតិបត្តិការ៖',
    },
    'ys3ofnss': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0y5187ny': {
      'th': 'Leave date:',
      'en': 'Leave date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    'in48vb92': {
      'th': '',
      'en': '',
      'km': '',
    },
    'irwbu5gl': {
      'th': 'Number of leave days:',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    '5tch4un8': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ba52ra74': {
      'th': 'Time period:',
      'en': 'Time period:',
      'km': 'រយៈពេល៖',
    },
    'aozk7yhi': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ko1t63gc': {
      'th': 'Reason for leave:',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    '60io1xwm': {
      'th': '',
      'en': '',
      'km': '',
    },
    'r7v1sy2p': {
      'th': 'Contact telephone number:',
      'en': 'Contact telephone number:',
      'km': 'លេខទូរស័ព្ទទំនាក់ទំនង៖',
    },
    'swdoil63': {
      'th': '',
      'en': '',
      'km': '',
    },
    'xcsyjw8s': {
      'th': 'Attachment:',
      'en': 'Attachment:',
      'km': 'ឯកសារភ្ជាប់៖',
    },
    '1hactgyx': {
      'th': 'Approve',
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'hd1zpea4': {
      'th': 'Do not approve',
      'en': 'Do not approve',
      'km': 'មិនយល់ព្រមទេ',
    },
    '8ns92ey4': {
      'th': 'Leave approval list',
      'en': 'Leave approval list',
      'km': 'ចាកចេញពីបញ្ជីការអនុម័ត',
    },
    'vrf4h7fo': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
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
      'en': 'Please select the month you want to search for',
      'km': 'សូមជ្រើសរើសខែដែលអ្នកចង់ស្វែងរក',
    },
    'ymzm1fih': {
      'th': 'previous year',
      'en': 'previous year',
      'km': 'ឆ្នាំមុន',
    },
    '68vjxl98': {
      'th': 'current year',
      'en': 'current year',
      'km': 'ឆ្នាំបច្ចុប្បន្ន',
    },
    'jdk5a2v5': {
      'th': 'next year',
      'en': 'next year',
      'km': 'ឆ្នាំក្រោយ',
    },
    'miovlw84': {
      'th': '',
      'en': '',
      'km': '',
    },
    '6z72qpuf': {
      'th': 'Please select the month you want to search for',
      'en': 'Please select the month you want to search for',
      'km': 'សូមជ្រើសរើសខែដែលអ្នកចង់ស្វែងរក',
    },
    'udbrvpsc': {
      'th': 'January',
      'en': 'January',
      'km': 'ខែមករា',
    },
    'hnhmxon8': {
      'th': 'February',
      'en': 'February',
      'km': 'ខែកុម្ភៈ',
    },
    'l90qge73': {
      'th': 'March',
      'en': 'March',
      'km': 'ខែមីនា',
    },
    '3hikdqos': {
      'th': 'April',
      'en': 'April',
      'km': 'ខែមេសា',
    },
    'uf833dtt': {
      'th': 'May',
      'en': 'May',
      'km': 'ឧសភា',
    },
    'opof0yq0': {
      'th': 'June',
      'en': 'June',
      'km': 'ខែមិថុនា',
    },
    '23tgvkik': {
      'th': 'July',
      'en': 'July',
      'km': 'ខែកក្កដា',
    },
    '7s54z3d9': {
      'th': 'August',
      'en': 'August',
      'km': 'ខែសីហា',
    },
    'l7rvgo1r': {
      'th': 'September',
      'en': 'September',
      'km': 'ខែកញ្ញា',
    },
    'dk27bygi': {
      'th': 'October',
      'en': 'October',
      'km': 'ខែតុលា',
    },
    'j2tk113w': {
      'th': 'November',
      'en': 'November',
      'km': 'ខែវិច្ឆិកា',
    },
    'votcj883': {
      'th': 'December',
      'en': 'December',
      'km': 'ខែធ្នូ',
    },
    'af90frzm': {
      'th': 'Approve',
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    '36ry9wg9': {
      'th': '',
      'en': '',
      'km': '',
    },
    '4ms6wxsc': {
      'th': 'Type of leave:',
      'en': 'Type of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    'aikrh377': {
      'th': '',
      'en': '',
      'km': '',
    },
    '0iaafxfg': {
      'th': 'Transaction date:',
      'en': 'Transaction date:',
      'km': 'កាលបរិច្ឆេទប្រតិបត្តិការ៖',
    },
    'lkyyyops': {
      'th': '',
      'en': '',
      'km': '',
    },
    '48r2qftr': {
      'th': 'Leave date:',
      'en': 'Leave date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    't6d7k2n8': {
      'th': '',
      'en': '',
      'km': '',
    },
    'w50iklzc': {
      'th': 'Number of leave days:',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    'iq8vhixq': {
      'th': '',
      'en': '',
      'km': '',
    },
    'qug2c71k': {
      'th': 'Time period:',
      'en': 'Time period:',
      'km': 'រយៈពេល៖',
    },
    'i63jfq1t': {
      'th': '',
      'en': '',
      'km': '',
    },
    'mye976ih': {
      'th': 'Reason for leave:',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    'y5onqqha': {
      'th': '',
      'en': '',
      'km': '',
    },
    'ycs4f6x7': {
      'th': 'Cancel',
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'j4tx92qm': {
      'th': 'Not approved',
      'en': 'Not approved',
      'km': 'មិនត្រូវបានអនុម័តទេ',
    },
    'csdjbrx9': {
      'th': '',
      'en': '',
      'km': '',
    },
    'avhozj98': {
      'th': 'Type of leave:',
      'en': 'Type of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    'mn6o06md': {
      'th': '[ลากิจ]',
      'en': '[Leave of absence]',
      'km': '[ការឈប់សម្រាក]',
    },
    'qx5tjh1w': {
      'th': 'Transaction date:',
      'en': 'Transaction date:',
      'km': 'កាលបរិច្ឆេទប្រតិបត្តិការ៖',
    },
    'g4mj40jn': {
      'th': '[01/11/2565]',
      'en': '[01/11/2565]',
      'km': '[០១/១១/២៥៦៥]',
    },
    'hu6t7whs': {
      'th': 'Leave date:',
      'en': 'Leave date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    '784bd1td': {
      'th': '[11/11/2565-12/11/2565]',
      'en': '[11/11/2565-12/11/2565]',
      'km': '[១១/១១/២៥៦៥-១២/១១/២៥៦៥]',
    },
    'a3iqej9c': {
      'th': 'Number of leave days:',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    '8yuqgilf': {
      'th': '[2]',
      'en': '[2]',
      'km': '[2]',
    },
    'iy9vpqor': {
      'th': 'Time period:',
      'en': 'Time period:',
      'km': 'រយៈពេល៖',
    },
    '2s8sjnpa': {
      'th': '[ลาเต็มวัน]',
      'en': '[Full day off]',
      'km': '[ឈប់សម្រាកពេញមួយថ្ងៃ]',
    },
    '8xyie5u9': {
      'th': 'Reason for leave:',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    '6ssrbsv1': {
      'th': '[]',
      'en': '[]',
      'km': '[]',
    },
    'sa8npvrq': {
      'th': 'Cancel',
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'ccxd7go5': {
      'th': 'นางสาวมนฑิรา ยอดแสง',
      'en': 'Ms. Monthira Yodsang',
      'km': 'អ្នកស្រី ម៉ុនធីរ៉ា យ៉តសាំង',
    },
    'rrb2em3t': {
      'th': 'Type of leave:',
      'en': 'Type of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    '5zhocack': {
      'th': '[ลากิจ]',
      'en': '[Leave of absence]',
      'km': '[ការឈប់សម្រាក]',
    },
    'jzd5oh6h': {
      'th': 'Transaction date:',
      'en': 'Transaction date:',
      'km': 'កាលបរិច្ឆេទប្រតិបត្តិការ៖',
    },
    '4qcl33d4': {
      'th': '[01/11/2565]',
      'en': '[01/11/2565]',
      'km': '[០១/១១/២៥៦៥]',
    },
    'tpai7l0p': {
      'th': 'Leave date:',
      'en': 'Leave date:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    '3f3r2ksr': {
      'th': '[11/11/2565-12/11/2565]',
      'en': '[11/11/2565-12/11/2565]',
      'km': '[១១/១១/២៥៦៥-១២/១១/២៥៦៥]',
    },
    '2xmg28mr': {
      'th': 'Number of leave days:',
      'en': 'Number of leave days:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    'h9k6cqxb': {
      'th': '',
      'en': '',
      'km': '',
    },
    '5r5m7wk6': {
      'th': 'Time period:',
      'en': 'Time period:',
      'km': 'រយៈពេល៖',
    },
    'zsdw21f9': {
      'th': '[ลาเต็มวัน]',
      'en': '[Full day off]',
      'km': '[ឈប់សម្រាកពេញមួយថ្ងៃ]',
    },
    '4fnwyem3': {
      'th': 'Reason for leave:',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    'mrs3y10t': {
      'th': '[]',
      'en': '[]',
      'km': '[]',
    },
    '52jrj08j': {
      'th': 'Canceled by:',
      'en': 'Canceled by:',
      'km': 'បានលុបចោលដោយ៖',
    },
    'lp6e3990': {
      'th': '[]',
      'en': '[]',
      'km': '[]',
    },
    'ysmso6zd': {
      'th': 'List',
      'en': 'List',
      'km': 'បញ្ជី',
    },
    '4wsoj8cg': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // EditLeavePage
  {
    'ificuq2n': {
      'th': 'ยื่นเรื่องขออนุมัติ',
      'en': 'Submit a request for approval.',
      'km': 'ដាក់ស្នើសំណើសុំការអនុម័ត។',
    },
    'fodqx9uc': {
      'th': 'ประเภทการลา :',
      'en': 'Types of leave:',
      'km': 'ប្រភេទនៃការឈប់សម្រាក៖',
    },
    'b29dbyuo': {
      'th': 'ช่วงเวลา :',
      'en': 'period :',
      'km': 'រយៈពេល៖',
    },
    '2ib16uo0': {
      'th': 'กรุณาเลือก...',
      'en': 'Please select...',
      'km': 'សូមជ្រើសរើស...',
    },
    '8kkmr7pm': {
      'th': 'Search...',
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '60h3106u': {
      'th': 'ลาเต็มวัน',
      'en': 'Full day off',
      'km': 'ថ្ងៃឈប់សម្រាកពេញមួយថ្ងៃ',
    },
    'ogpaz9vg': {
      'th': 'ลาครึ่งวัน',
      'en': 'Half day off',
      'km': 'ឈប់សម្រាកពាក់កណ្តាលថ្ងៃ',
    },
    'b76kcikg': {
      'th': 'วันที่ลา :',
      'en': 'Leave dates:',
      'km': 'កាលបរិច្ឆេទចាកចេញ៖',
    },
    'wrw5c1zg': {
      'th': 'จำนวนวันที่ลา :',
      'en': 'Number of days of leave:',
      'km': 'ចំនួនថ្ងៃឈប់សំរាក៖',
    },
    'uepvh7sm': {
      'th': 'TextField',
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'gsrsh3zb': {
      'th': 'เบอร์โทรติดต่อ :',
      'en': 'Contact number:',
      'km': 'លេខទំនាក់ទំនង៖',
    },
    'j7nptk08': {
      'th': 'กรุณากรอกเบอร์โทรศัพท์',
      'en': 'Please enter your phone number.',
      'km': 'សូមបញ្ចូលលេខទូរស័ព្ទរបស់អ្នក។',
    },
    'o4t7tiro': {
      'th': 'เหตุผลการลา :',
      'en': 'Reason for leave:',
      'km': 'មូលហេតុនៃការឈប់សម្រាក៖',
    },
    'kqyqcq3i': {
      'th': '',
      'en': '',
      'km': '',
    },
    'bndjea7h': {
      'th': 'กรุณากรอก...',
      'en': 'Please fill in...',
      'km': 'សូមបំពេញ...',
    },
    'aheaf15h': {
      'th': 'แนบไฟล์การลา :',
      'en': 'Attach leave request file:',
      'km': 'ភ្ជាប់ឯកសារស្នើសុំឈប់សម្រាក៖',
    },
    '3vqk49tl': {
      'th': '[Attach image file]',
      'en': '[Attach image file]',
      'km': '[ភ្ជាប់ឯកសាររូបភាព]',
    },
    'tc8wty7s': {
      'th': 'Save',
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    '1y7nxlsg': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // CalendarPage
  {
    'klwmnx5g': {
      'th': 'print date',
      'en': 'print date',
      'km': 'កាលបរិច្ឆេទបោះពុម្ព',
    },
    '2ks9nhe0': {
      'th': 'ตกลง',
      'en': 'agree',
      'km': 'យល់ព្រម',
    },
    't0y2y3mb': {
      'th': 'เลือกวันที่ต้องการลา',
      'en': 'Select your desired leave dates.',
      'km': 'ជ្រើសរើសកាលបរិច្ឆេទឈប់សម្រាកដែលអ្នកចង់បាន។',
    },
    'z3yk1ts0': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // DashboardLeavePage
  {
    'k3n9jgmb': {
      'th': 'Leave list',
      'en': 'Leave list',
      'km': 'ចាកចេញពីបញ្ជី',
    },
    '2vgir6r5': {
      'th': 'Menu',
      'en': 'Menu',
      'km': 'ម៉ឺនុយ',
    },
    'zyesa252': {
      'th': 'Leave list',
      'en': 'Leave list',
      'km': 'ចាកចេញពីបញ្ជី',
    },
    'e1s6zfp5': {
      'th': 'Leave approval request list',
      'en': 'Leave approval request list',
      'km': 'ចាកចេញពីបញ្ជីសំណើសុំការអនុម័ត',
    },
    '7r86wbjz': {
      'th': 'Leave approval',
      'en': 'Leave approval',
      'km': 'ការយល់ព្រមចាកចេញ',
    },
    '8eusxn5b': {
      'th': 'Approved leave list',
      'en': 'Approved leave list',
      'km': 'បញ្ជីឈប់សម្រាកដែលត្រូវបានអនុម័ត',
    },
    'gjv9vyea': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // CancelPage
  {
    'n96rjx6a': {
      'th': 'ยืนยันยกเลิกการลา',
      'en': 'Confirm cancellation of leave.',
      'km': 'បញ្ជាក់ការលុបចោលការឈប់សម្រាក។',
    },
    'nmh2w1gg': {
      'th': 'ระบุเหตุผล...',
      'en': 'State the reason...',
      'km': 'សូមបញ្ជាក់មូលហេតុ...',
    },
    'agdhntog': {
      'th': 'ตกลง',
      'en': 'agree',
      'km': 'យល់ព្រម',
    },
    'ci2ialvg': {
      'th': 'ยกเลิก',
      'en': 'cancel',
      'km': 'លុបចោល',
    },
    'a5sxkvsl': {
      'th': 'ยกเลิกการลา',
      'en': 'Cancel leave.',
      'km': 'លុបចោលការឈប់សម្រាក។',
    },
    'mzzsebg2': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // ConfirmEmailPage
  {
    'yvp12ypk': {
      'th': 'กรุณากรอก Email ที่ต้องการรับข้อมูล',
      'en':
          'Please enter the email address where you would like to receive information.',
      'km': 'សូមបញ្ចូលអាសយដ្ឋានអ៊ីមែលដែលអ្នកចង់ទទួលព័ត៌មាន។',
    },
    '2tus85gr': {
      'th': 'ระบุ Email',
      'en': 'Please provide your email address.',
      'km': 'សូមផ្តល់អាសយដ្ឋានអ៊ីមែលរបស់អ្នក។',
    },
    'y50xyu31': {
      'th': 'ตกลง',
      'en': 'agree',
      'km': 'យល់ព្រម',
    },
    'tyidngqx': {
      'th': 'ยกเลิก',
      'en': 'cancel',
      'km': 'លុបចោល',
    },
    '7crkve3l': {
      'th': 'ยืนยัน Email',
      'en': 'Confirm Email',
      'km': 'បញ្ជាក់អ៊ីមែល',
    },
    'msu28vom': {
      'th': 'Home',
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
  },
  // MyLeaveRequestsPage
  {
    '8bez2jtw': {
      'th': 'My requests',
      'en': '',
      'km': '',
    },
    'kaf12q9p': {
      'th': 'Year',
      'en': '',
      'km': '',
    },
    'c0o7tnvj': {
      'th': 'Previous year',
      'en': '',
      'km': '',
    },
    'regbexag': {
      'th': 'This year',
      'en': '',
      'km': '',
    },
    'x5iigkuq': {
      'th': 'Next year',
      'en': '',
      'km': '',
    },
    '3hivoh9q': {
      'th': 'Withdraw this request?',
      'en': '',
      'km': '',
    },
    'rk5z12oa': {
      'th': 'Reason for withdrawing',
      'en': '',
      'km': '',
    },
    'gci0g4ye': {
      'th': 'Optional — your approver will see this',
      'en': '',
      'km': '',
    },
    '1kib7r88': {
      'th': 'Keep it',
      'en': '',
      'km': '',
    },
    '51qkf6vf': {
      'th': 'Withdraw',
      'en': '',
      'km': '',
    },
    'p88b77u8': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'w9y5qxmy': {
      'th': 'Period',
      'en': '',
      'km': '',
    },
    'mj3zr5dm': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    'g97t8r5h': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    'c2uq81km': {
      'th': 'Approver',
      'en': '',
      'km': '',
    },
    '5fr9m1zg': {
      'th': 'Submitted',
      'en': '',
      'km': '',
    },
    'pkjhgbb1': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    '3ujh563d': {
      'th': 'Edit',
      'en': '',
      'km': '',
    },
    'wlfqieka': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
  },
  // LeaveRequestFormPage
  {
    '4llzdscp': {
      'th': 'Request leave',
      'en': '',
      'km': '',
    },
    'esa9c1q0': {
      'th': 'Balance year ',
      'en': '',
      'km': '',
    },
    'za19ivhe': {
      'th': 'days left',
      'en': '',
      'km': '',
    },
    'wvatuko0': {
      'th': 'Period',
      'en': '',
      'km': '',
    },
    'y9rwtptq': {
      'th': 'Full or half day',
      'en': '',
      'km': '',
    },
    'ht29s2ef': {
      'th': 'Period',
      'en': '',
      'km': '',
    },
    '02r8lwr3': {
      'th': 'full',
      'en': '',
      'km': '',
    },
    '5lnq4zm5': {
      'th': 'half',
      'en': '',
      'km': '',
    },
    'xf9w9qf3': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'j2x33a74': {
      'th': 'Start date',
      'en': '',
      'km': '',
    },
    'gvjhllmp': {
      'th': 'End date',
      'en': '',
      'km': '',
    },
    's8xdho89': {
      'th': 'Days requested',
      'en': '',
      'km': '',
    },
    'wzpwqlf1': {
      'th': 'Contact phone',
      'en': '',
      'km': '',
    },
    '00al5pgk': {
      'th': 'Contact phone',
      'en': '',
      'km': '',
    },
    'a7crtsul': {
      'th': 'Where your approver can reach you',
      'en': '',
      'km': '',
    },
    '4yq1ld8z': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    'ezhb69rl': {
      'th': 'Reason for leave',
      'en': '',
      'km': '',
    },
    'sbchzowl': {
      'th': 'Tell your approver why you need this leave',
      'en': '',
      'km': '',
    },
    'nrtrvmcp': {
      'th': 'Attachment',
      'en': '',
      'km': '',
    },
    'hjwbmlq8': {
      'th': 'Attach a supporting document (coming soon)',
      'en': '',
      'km': '',
    },
    '6ojw4m6k': {
      'th': 'Submit request',
      'en': '',
      'km': '',
    },
  },
  // LeaveBalancePage
  {
    'a6zlyct9': {
      'th': 'Leave balances',
      'en': '',
      'km': '',
    },
    'vpwoccez': {
      'th': 'Pick a leave type to start a request.',
      'en': '',
      'km': '',
    },
  },
  // LeaveApprovalQueuePage
  {
    'opduurtc': {
      'th': 'Pending approvals',
      'en': '',
      'km': '',
    },
    'qb7suviv': {
      'th': 'Waiting on you',
      'en': '',
      'km': '',
    },
    '05v92wie': {
      'th': 'Approve all',
      'en': '',
      'km': '',
    },
    'ygjo649a': {
      'th': 'Note to the employee',
      'en': '',
      'km': '',
    },
    '4j12v1s7': {
      'th': 'Optional — explain your decision',
      'en': '',
      'km': '',
    },
    'nm435tbk': {
      'th': 'Cancel',
      'en': '',
      'km': '',
    },
    'k1fsf8t5': {
      'th': 'Confirm',
      'en': '',
      'km': '',
    },
    'e9trlsob': {
      'th': 'Type',
      'en': '',
      'km': '',
    },
    'pzimozrz': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'vjdssmbt': {
      'th': 'Period',
      'en': '',
      'km': '',
    },
    '4f4jvlog': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    '2xlhk7sp': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    'krl5x0uc': {
      'th': 'Phone',
      'en': '',
      'km': '',
    },
    'm03liwte': {
      'th': 'Submitted',
      'en': '',
      'km': '',
    },
    '6rhfado0': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    'pe25zdn4': {
      'th': 'Reject',
      'en': '',
      'km': '',
    },
    'zrde3x09': {
      'th': 'Approve',
      'en': '',
      'km': '',
    },
  },
  // LeaveApprovalHistoryPage
  {
    'k2fkpqk6': {
      'th': 'Decision history',
      'en': '',
      'km': '',
    },
    '44ekuqgg': {
      'th': 'Year',
      'en': '',
      'km': '',
    },
    '4p978ixr': {
      'th': 'Previous year',
      'en': '',
      'km': '',
    },
    'ff33jd4y': {
      'th': 'This year',
      'en': '',
      'km': '',
    },
    '3wdv6abn': {
      'th': 'Next year',
      'en': '',
      'km': '',
    },
    '35pooybb': {
      'th': 'Approved',
      'en': '',
      'km': '',
    },
    'lj6s3au9': {
      'th': 'Type',
      'en': '',
      'km': '',
    },
    '7q268p6o': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'xu5s8ymw': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    'ovkg8ift': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    'qpy71uax': {
      'th': 'Decided by',
      'en': '',
      'km': '',
    },
    'j51k1ueu': {
      'th': 'Rejected',
      'en': '',
      'km': '',
    },
    'l5z4ocuj': {
      'th': 'Type',
      'en': '',
      'km': '',
    },
    'coitwsch': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'w2cyi4xe': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    'gtixt6xo': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    '04tivfuh': {
      'th': 'Decided by',
      'en': '',
      'km': '',
    },
    '25xowowd': {
      'th': 'Cancelled',
      'en': '',
      'km': '',
    },
    'oayym69a': {
      'th': 'Type',
      'en': '',
      'km': '',
    },
    'wpm5d9h5': {
      'th': 'Dates',
      'en': '',
      'km': '',
    },
    'jfex10bo': {
      'th': 'Days',
      'en': '',
      'km': '',
    },
    'xrt9t2gk': {
      'th': 'Reason',
      'en': '',
      'km': '',
    },
    '2k5wbfyo': {
      'th': 'Decided by',
      'en': '',
      'km': '',
    },
  },
  // LeaveHubPage
  {
    'yiy4ybvn': {
      'th': 'Employee Leave',
      'en': '',
      'km': '',
    },
    's23ozp1o': {
      'th': 'My leave',
      'en': '',
      'km': '',
    },
    'vp67j649': {
      'th': 'Leave balances',
      'en': '',
      'km': '',
    },
    '3lhu7gvp': {
      'th': 'Entitlement, days used and days remaining',
      'en': '',
      'km': '',
    },
    'qn13kwxc': {
      'th': 'My requests',
      'en': '',
      'km': '',
    },
    '5hcm1kps': {
      'th': 'Track requests you have submitted',
      'en': '',
      'km': '',
    },
    'wz00wys0': {
      'th': 'Approvals',
      'en': '',
      'km': '',
    },
    'bnw3ks2c': {
      'th': 'Pending approvals',
      'en': '',
      'km': '',
    },
    '7wkxk30s': {
      'th': 'Approve or reject your team\'s requests',
      'en': '',
      'km': '',
    },
    '086fru62': {
      'th': 'Decision history',
      'en': '',
      'km': '',
    },
    '9mljsyye': {
      'th': 'Requests you have already decided',
      'en': '',
      'km': '',
    },
  },
  // dropdownComponent
  {
    'ikjz62v6': {
      'th': 'Type Keyword',
      'en': 'Type Keyword',
      'km': 'វាយពាក្យគន្លឹះ',
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
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'uk5aj70g': {
      'th': 'English',
      'en': 'English',
      'km': 'អង់គ្លេស',
    },
    'p4cdkrl0': {
      'th': 'កម្ពុជា',
      'en': 'កម្ពុជា',
      'km': 'កម្ពុជា',
    },
    '2xhlgi1g': {
      'th': 'ไทย',
      'en': 'Thai',
      'km': 'ថៃ',
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
      'en': 'Leave details',
      'km': 'ទុកព័ត៌មានលម្អិត',
    },
    '4d7u9rw0': {
      'th': 'ประเภทการลา',
      'en': 'Types of leave',
      'km': 'ប្រភេទនៃការឈប់សម្រាក',
    },
    'atxgu6s6': {
      'th': 'วันที่ลา: ',
      'en': 'Leave days:',
      'km': 'ថ្ងៃឈប់សម្រាក៖',
    },
    '66hwwepx': {
      'th': 'ช่วงเวลา:  ',
      'en': 'period:',
      'km': 'រយៈពេល៖',
    },
  },
  // ConfirmCancelLeaveComponent
  {
    '676bwhfl': {
      'th': 'Confirm leave cancellation.',
      'en': 'Confirm leave cancellation.',
      'km': 'បញ្ជាក់ការលុបចោលការឈប់សម្រាក។',
    },
    'fxx8fx4l': {
      'th': 'Specify the reason...',
      'en': 'Specify the reason...',
      'km': 'បញ្ជាក់មូលហេតុ...',
    },
    '1yrtdn80': {
      'th': 'Cancel',
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '6gdsajun': {
      'th': 'OK',
      'en': 'OK',
      'km': 'យល់ព្រម',
    },
  },
  // errorMessageComponent
  {
    'ypsxbfwx': {
      'th': 'ตกลง',
      'en': 'agree',
      'km': 'យល់ព្រម',
    },
  },
  // LeaveBalanceCard
  {
    'sl1cjxz2': {
      'th': 'Total',
      'en': '',
      'km': '',
    },
    'k8r3jgoc': {
      'th': 'Used',
      'en': '',
      'km': '',
    },
    'kemzew5w': {
      'th': 'Remaining',
      'en': '',
      'km': '',
    },
  },
  // LeaveDetailSheet
  {
    '5nkilbea': {
      'th': 'Leave days',
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
