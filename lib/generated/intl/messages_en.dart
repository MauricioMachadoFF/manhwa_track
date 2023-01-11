// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(url) =>
      "We cannot open ${url} because we couldn\'t establish a connection.\nCheck if the URL inserted is valid.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "auth_cancelled_by_user": MessageLookupByLibrary.simpleMessage(
            "Authentication operation has been cancelled by user"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "chapter_max_length_error": MessageLookupByLibrary.simpleMessage(
            "Chapter field con only contain up to 25 characters"),
        "chapter_prefix": MessageLookupByLibrary.simpleMessage("Chapter"),
        "delete_track": MessageLookupByLibrary.simpleMessage("Delete track"),
        "delete_track_error_message": MessageLookupByLibrary.simpleMessage(
            "Failed to delete track. Try again later."),
        "email_already_in_use":
            MessageLookupByLibrary.simpleMessage("E-mail is already in use"),
        "fetching_tracks":
            MessageLookupByLibrary.simpleMessage("Fetching your tracks"),
        "invalid_email": MessageLookupByLibrary.simpleMessage("Invalid E-mail"),
        "invalid_email_password_combination":
            MessageLookupByLibrary.simpleMessage(
                "Invalid email and password combination"),
        "invalid_url": MessageLookupByLibrary.simpleMessage(
            "Invalid URL.\nCheck the URL format."),
        "load_tracks_default_error_message": MessageLookupByLibrary.simpleMessage(
            "Ops! Somethign went wrong and we couldn\'t fetch your manhwa tracks."),
        "manhwa_track": MessageLookupByLibrary.simpleMessage("Manhwa Track"),
        "new_track_button_label":
            MessageLookupByLibrary.simpleMessage("New track"),
        "no_user_with_that_email": MessageLookupByLibrary.simpleMessage(
            "There\'s no user with that email"),
        "password_should_be_8_char_long": MessageLookupByLibrary.simpleMessage(
            "Password must be a least 8 characters long"),
        "reading_page_error_opening_url": m0,
        "settings_logout_tile_label":
            MessageLookupByLibrary.simpleMessage("Logout"),
        "sign_in_button_label": MessageLookupByLibrary.simpleMessage("Login"),
        "sign_in_general_error": MessageLookupByLibrary.simpleMessage(
            "Something went wrong during login."),
        "sign_in_with_google":
            MessageLookupByLibrary.simpleMessage("Login With Google"),
        "sign_page_email_field_label":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "sign_page_password_field_label":
            MessageLookupByLibrary.simpleMessage("Password"),
        "sign_up_button_label": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "track_card_empty_url": MessageLookupByLibrary.simpleMessage(
            "No URL related to this track"),
        "track_card_invalid_url": MessageLookupByLibrary.simpleMessage(
            "Invalid URL.\nCheck the URL format."),
        "track_deletion_alert": MessageLookupByLibrary.simpleMessage(
            "Attention! After deleting this track you cannot retrieve it."),
        "track_detail_page_chapter_field_label":
            MessageLookupByLibrary.simpleMessage("Chapter"),
        "track_detail_page_title_field_label":
            MessageLookupByLibrary.simpleMessage("Title"),
        "track_detail_page_url_field_label":
            MessageLookupByLibrary.simpleMessage("URl"),
        "track_details_page_create_new_track_label":
            MessageLookupByLibrary.simpleMessage("Create New Track"),
        "track_details_page_update_track_label":
            MessageLookupByLibrary.simpleMessage("Update Track"),
        "tracking_status_completed":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "tracking_status_reading":
            MessageLookupByLibrary.simpleMessage("Reading"),
        "tracking_status_readlist":
            MessageLookupByLibrary.simpleMessage("Readlist"),
        "tracking_status_unknown":
            MessageLookupByLibrary.simpleMessage("Unknown status"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again"),
        "update_track_error_message": MessageLookupByLibrary.simpleMessage(
            "Failed to update track. Try again later.")
      };
}
