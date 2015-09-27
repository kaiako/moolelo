package moolelo

class Location {
	
	float latitude;
	float longitude;
	
	static belongsTo = [place:Place]
	
    static constraints = {
    }	
}
