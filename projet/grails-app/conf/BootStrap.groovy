import projet.Emargement
import projet.Enseignement
import projet.Sondage
import projet.Utilisateur

class BootStrap {

    def init = { servletContext ->
        environments {
            development {
                def user1 = new Utilisateur(prenom: 'Prenom1',nom: 'Nom1',identifiant:'', mdp: 'azerty', droit: false);
				def user2 = new Utilisateur(prenom: 'Prenom2',nom: 'Nom2',identifiant:'', mdp: 'azerty', droit: false);
				def user3 = new Utilisateur(prenom: 'Prenom3',nom: 'Nom3',identifiant:'', mdp: 'azerty', droit: false);
				def droit1 = new Utilisateur(prenom: 'Prenom4',nom: 'Nom4',identifiant:'', mdp: 'azerty', droit: true);
				
				def ens1 = new Enseignement(nom: 'ens1');
				def ens2 = new Enseignement(nom: 'ens2');
				
				
				
				
				
				
				def sondage1 = new Sondage(dateDebut: new Date().copyWith(
    year: 2016, 
    month: Calendar.APRIL, 
    dayOfMonth: 3, 
    hourOfDay: 0,
    minute: 0,
    second: 0), dateFin: new Date().copyWith(
    year: 2016, 
    month: Calendar.APRIL, 
    dayOfMonth: 3, 
    hourOfDay: 0,
    minute: 0,
    second: 0));
				

				
				user1.save();
				user2.save();
				user3.save();
				droit1.save();
				ens1.save();
				ens2.save();
				
				ens2.addToSondage sondage1;
				
				def emarg11 = new Emargement(aRepondu: false);
				def emarg12 = new Emargement(aRepondu: false);
				def emarg21 = new Emargement(aRepondu: true);
				def emarg32 = new Emargement(aRepondu: true);
				
				user1.addToEmargement emarg11;
				ens1.addToEmargement emarg11;
				
				user1.addToEmargement emarg12;
				ens2.addToEmargement emarg12;
				
				user2.addToEmargement emarg21;
				ens1.addToEmargement emarg21;
				
				user3.addToEmargement emarg32;
				ens2.addToEmargement emarg32;
				
				user1.save();
				user2.save();
				user3.save();
				ens1.save();
				ens2.save();
            }
        }
    }
    def destroy = {
    }
}
