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
