// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
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
  String get localeName => 'pt_BR';

  static String m0(chapter) => "Capítulo - ${chapter}";

  static String m1(url) =>
      "Nós não conseguimos abrir ${url}. Não conseguimos estabelecer uma conexão.\nCheck if the URL inserted is valid.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "auth_cancelled_by_user": MessageLookupByLibrary.simpleMessage(
            "Operação de autenticação cancelada por usuário"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "chapter_max_length_error": MessageLookupByLibrary.simpleMessage(
            "Capítulo só pode conter até 25 caracteres"),
        "chapter_prefix": m0,
        "delete_track": MessageLookupByLibrary.simpleMessage("Excluir faixa"),
        "delete_track_error_message": MessageLookupByLibrary.simpleMessage(
            "Falha em deletar faixa. Tente novamente mais tarde."),
        "email_already_in_use":
            MessageLookupByLibrary.simpleMessage("E-mail já está sendo usado"),
        "fetching_tracks":
            MessageLookupByLibrary.simpleMessage("Carregando suas faixas"),
        "invalid_email":
            MessageLookupByLibrary.simpleMessage("E-mail inválido"),
        "invalid_email_password_combination":
            MessageLookupByLibrary.simpleMessage(
                "Combinação de e-mail e senha inválida"),
        "invalid_url": MessageLookupByLibrary.simpleMessage(
            "URL inválida.\nVerifique o formato da URL."),
        "load_tracks_default_error_message":
            MessageLookupByLibrary.simpleMessage(
                "Opa! Algo aconteceu e não conseguimos carregar suas faixas"),
        "manhwa_track": MessageLookupByLibrary.simpleMessage("Manhwa Track"),
        "new_track_button_label":
            MessageLookupByLibrary.simpleMessage("Nova faixa"),
        "no_user_with_that_email": MessageLookupByLibrary.simpleMessage(
            "Não existe usuário com esse e-mail"),
        "password_should_be_8_char_long": MessageLookupByLibrary.simpleMessage(
            "Senha deve ter no mínimo 8 caracteres"),
        "reading_page_error_opening_url": m1,
        "settings_logout_tile_label":
            MessageLookupByLibrary.simpleMessage("Logout"),
        "sign_in_button_label": MessageLookupByLibrary.simpleMessage("Login"),
        "sign_in_general_error": MessageLookupByLibrary.simpleMessage(
            "Algo de errado aconteceu durante o login."),
        "sign_in_with_google":
            MessageLookupByLibrary.simpleMessage("Login com Google"),
        "sign_page_email_field_label":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "sign_page_password_field_label":
            MessageLookupByLibrary.simpleMessage("Senha"),
        "sign_up_button_label":
            MessageLookupByLibrary.simpleMessage("Registrar"),
        "track_card_empty_url": MessageLookupByLibrary.simpleMessage(
            "Nenhuma URL está relacionada a essa faixa."),
        "track_card_invalid_url": MessageLookupByLibrary.simpleMessage(
            "URL inválida.\nVerifique o formato da URL."),
        "track_deletion_alert": MessageLookupByLibrary.simpleMessage(
            "Atenção! Caso você delete essa faixa não conseguirá recuperar ela."),
        "track_detail_page_chapter_field_label":
            MessageLookupByLibrary.simpleMessage("Capítulo"),
        "track_detail_page_title_field_label":
            MessageLookupByLibrary.simpleMessage("Título"),
        "track_detail_page_url_field_label":
            MessageLookupByLibrary.simpleMessage("URl"),
        "track_details_page_create_new_track_label":
            MessageLookupByLibrary.simpleMessage("Criar nova faixa"),
        "track_details_page_update_track_label":
            MessageLookupByLibrary.simpleMessage("Atualizar nova faixa"),
        "tracking_status_completed":
            MessageLookupByLibrary.simpleMessage("Faixas terminadas"),
        "tracking_status_reading":
            MessageLookupByLibrary.simpleMessage("Lendo"),
        "tracking_status_readlist":
            MessageLookupByLibrary.simpleMessage("Lista de futuras leituras"),
        "tracking_status_unknown":
            MessageLookupByLibrary.simpleMessage("Status desconhecido"),
        "try_again": MessageLookupByLibrary.simpleMessage("Tente novamente"),
        "update_track_error_message": MessageLookupByLibrary.simpleMessage(
            "Falha em atualizar faixa. Tente novamente mais tarde.")
      };
}
