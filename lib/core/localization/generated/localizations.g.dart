// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _fr = {
  "first": "Bonjour",
  "positiveMomentMessage": "Bravo ! Tu as capturé un moment positif ✨",
  "positiveMomentMessage2": "Je suis sûr qu'il y en a un autre !",
  "bravo": "Bravo ! 🎉",
  "seeReview": "Voir ma revue",
  "errorOccured": "Une erreur est survenue",
  "fieldRequired": "Ce champ est requis",
  "passwordNotOK": "Le mot de passe n'est pas valide",
  "passwordNotMatch": "Les mots de passe ne correspondent pas",
  "emailNotValid": "L'email n'est pas valide",
  "secondPositiveMomentMessage": "Je suis sûr qu'une deuxième belle chose est arrivée ! ❤️",
  "thirdPositiveMomentMessage": "😍 Un dernier ! 😍 ",
  "fourthPositiveMomentMessage": "🥳 Bravo, à demain ! 🥳",
  "positiveMomentMessage3": "✨ Prends un instant pour noter une belle chose qui t'est arrivé aujourd'hui ✨",
  "close": "Fermer",
  "yes": "Oui !",
  "because": "Car j'ai ...",
  "reviewCardTitle": "La chose positive qui m'est arrivé",
  "reviewCardSubtitle": "Ce que j'ai fais pour que cela ait lieu",
  "reviewScreenTitle": "Revue du jour",
  "reviewScreenStreak": "Streak: {days} jours",
  "reviewScreenNoEntries": "Aucune entrée pour aujourd'hui",
  "continueBtn": "Continuer 🌻",
  "reviewScreenTitle2": "😍 Félicitation ! Vous avez réussi à trouver 3 événements positifs aujourd'hui ! 😍\n\nPassez les en revue !"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"fr": _fr};
}
