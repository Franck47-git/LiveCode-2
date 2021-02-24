import 'dart:math';
import 'dart:io';
import 'bot.dart';

void main(List<String> arguments) {
  var bot1 = Bot(force: 1, sante: 100);

  var count = 0;
  print('Entrer votre nom :');

  var name = stdin.readLineSync();
  

  while (bot1.sante > 0 && bot1.force > 0) {
    var resultat = lancerDes(name);
    count += 1;
    print('$name Appuyer entrer pour lancer les dés');
    var userName = stdin.readLineSync();

    if (userName == '') {
      print('$name lance les dés ...$resultat');
    } else {
      print('Vous devez appuyez sur la touche "ENTRE" de votre clavier');
    }
    print('$name assèneun coup sur le bot avec une force de $resultat');

    bot1.sante = bot1.sante - resultat;
  
    print('Bot - Sante ${bot1.sante}%');

    print('Fin du tour $count');
      if (bot1.sante <= 0) {
      print('Vous avez perdu');
    }
    if (count == 14) {
      print('Vous avez gagné la partie');
      break;
    } else {
      //print('Appuyez sur la touche entrée');
    }

    print('==============================================');
  }
}

int lancerDes(String playersName) {
  
  var nbrAleatoire = Random();
  var resultat = nbrAleatoire.nextInt(6) + 1 + nbrAleatoire.nextInt(6) + 1;
  print('$playersName a lancé les dés et a obtenu $resultat');
  return resultat;

}
