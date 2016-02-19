package projet

class Utilisateur {

    String prenom;
	String nom;
	String identifiant;
	String mdp;
	boolean droit;
	static hasMany = [emargement: Emargement]
	
    static constraints = {
		nom()
		prenom()
		identifiant(blank: true,nullable:true)
		mdp(blank: true,nullable:true)
		droit()
		
    }
}