package projet

class Sondage {
	Date dateDebut;
	Date dateFin;
	static belongsTo = [enseignement : Enseignement]
	static hasMany = [reponses: Reponse]
    static constraints = {
    }
}
