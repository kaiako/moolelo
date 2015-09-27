package moolelo

class Place {
	
	String name;
	
	static belongsTo = [story:Story]
	static hasOne = [location:Location]
	
    static constraints = {
    }
	
}
