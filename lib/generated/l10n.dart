// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Ops! Somethign went wrong and we couldn't fetch your manhwa tracks.`
  String get load_tracks_default_error_message {
    return Intl.message(
      'Ops! Somethign went wrong and we couldn\'t fetch your manhwa tracks.',
      name: 'load_tracks_default_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Fetching your tracks`
  String get fetching_tracks {
    return Intl.message(
      'Fetching your tracks',
      name: 'fetching_tracks',
      desc: '',
      args: [],
    );
  }

  /// `New track`
  String get new_track_button_label {
    return Intl.message(
      'New track',
      name: 'new_track_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get tracking_status_reading {
    return Intl.message(
      'Reading',
      name: 'tracking_status_reading',
      desc: '',
      args: [],
    );
  }

  /// `Readlist`
  String get tracking_status_readlist {
    return Intl.message(
      'Readlist',
      name: 'tracking_status_readlist',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get tracking_status_completed {
    return Intl.message(
      'Completed',
      name: 'tracking_status_completed',
      desc: '',
      args: [],
    );
  }

  /// `Unknown status`
  String get tracking_status_unknown {
    return Intl.message(
      'Unknown status',
      name: 'tracking_status_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL.\nCheck the URL format.`
  String get track_card_invalid_url {
    return Intl.message(
      'Invalid URL.\nCheck the URL format.',
      name: 'track_card_invalid_url',
      desc: '',
      args: [],
    );
  }

  /// `No URL related to this track`
  String get track_card_empty_url {
    return Intl.message(
      'No URL related to this track',
      name: 'track_card_empty_url',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete track`
  String get delete_track {
    return Intl.message(
      'Delete track',
      name: 'delete_track',
      desc: '',
      args: [],
    );
  }

  /// `Attention! After deleting this track you cannot retrieve it.`
  String get track_deletion_alert {
    return Intl.message(
      'Attention! After deleting this track you cannot retrieve it.',
      name: 'track_deletion_alert',
      desc: '',
      args: [],
    );
  }

  /// `Chapter - {chapter}`
  String chapter_prefix(Object chapter) {
    return Intl.message(
      'Chapter - $chapter',
      name: 'chapter_prefix',
      desc: '',
      args: [chapter],
    );
  }

  /// `We cannot open {url} because we couldn't establish a connection.\nCheck if the URL inserted is valid.`
  String reading_page_error_opening_url(Object url) {
    return Intl.message(
      'We cannot open $url because we couldn\'t establish a connection.\nCheck if the URL inserted is valid.',
      name: 'reading_page_error_opening_url',
      desc: '',
      args: [url],
    );
  }

  /// `Title`
  String get track_detail_page_title_field_label {
    return Intl.message(
      'Title',
      name: 'track_detail_page_title_field_label',
      desc: '',
      args: [],
    );
  }

  /// `Chapter`
  String get track_detail_page_chapter_field_label {
    return Intl.message(
      'Chapter',
      name: 'track_detail_page_chapter_field_label',
      desc: '',
      args: [],
    );
  }

  /// `URl`
  String get track_detail_page_url_field_label {
    return Intl.message(
      'URl',
      name: 'track_detail_page_url_field_label',
      desc: '',
      args: [],
    );
  }

  /// `Create New Track`
  String get track_details_page_create_new_track_label {
    return Intl.message(
      'Create New Track',
      name: 'track_details_page_create_new_track_label',
      desc: '',
      args: [],
    );
  }

  /// `Update Track`
  String get track_details_page_update_track_label {
    return Intl.message(
      'Update Track',
      name: 'track_details_page_update_track_label',
      desc: '',
      args: [],
    );
  }

  /// `Chapter field con only contain up to 25 characters`
  String get chapter_max_length_error {
    return Intl.message(
      'Chapter field con only contain up to 25 characters',
      name: 'chapter_max_length_error',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL.\nCheck the URL format.`
  String get invalid_url {
    return Intl.message(
      'Invalid URL.\nCheck the URL format.',
      name: 'invalid_url',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete track. Try again later.`
  String get delete_track_error_message {
    return Intl.message(
      'Failed to delete track. Try again later.',
      name: 'delete_track_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update track. Try again later.`
  String get update_track_error_message {
    return Intl.message(
      'Failed to update track. Try again later.',
      name: 'update_track_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get settings_logout_tile_label {
    return Intl.message(
      'Logout',
      name: 'settings_logout_tile_label',
      desc: '',
      args: [],
    );
  }

  /// `Manhwa Track`
  String get manhwa_track {
    return Intl.message(
      'Manhwa Track',
      name: 'manhwa_track',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get sign_page_email_field_label {
    return Intl.message(
      'E-mail',
      name: 'sign_page_email_field_label',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get sign_page_password_field_label {
    return Intl.message(
      'Password',
      name: 'sign_page_password_field_label',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get sign_in_button_label {
    return Intl.message(
      'Login',
      name: 'sign_in_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up_button_label {
    return Intl.message(
      'Sign Up',
      name: 'sign_up_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get sign_in_with_google {
    return Intl.message(
      'Login With Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong during login.`
  String get sign_in_general_error {
    return Intl.message(
      'Something went wrong during login.',
      name: 'sign_in_general_error',
      desc: '',
      args: [],
    );
  }

  /// `Invalid E-mail`
  String get invalid_email {
    return Intl.message(
      'Invalid E-mail',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password must be a least 8 characters long`
  String get password_should_be_8_char_long {
    return Intl.message(
      'Password must be a least 8 characters long',
      name: 'password_should_be_8_char_long',
      desc: '',
      args: [],
    );
  }

  /// `There's no user with that email`
  String get no_user_with_that_email {
    return Intl.message(
      'There\'s no user with that email',
      name: 'no_user_with_that_email',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email and password combination`
  String get invalid_email_password_combination {
    return Intl.message(
      'Invalid email and password combination',
      name: 'invalid_email_password_combination',
      desc: '',
      args: [],
    );
  }

  /// `Authentication operation has been cancelled by user`
  String get auth_cancelled_by_user {
    return Intl.message(
      'Authentication operation has been cancelled by user',
      name: 'auth_cancelled_by_user',
      desc: '',
      args: [],
    );
  }

  /// `E-mail is already in use`
  String get email_already_in_use {
    return Intl.message(
      'E-mail is already in use',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
