package moolelo

import java.util.Date;

import javax.persistence.Column;

import org.grails.databinding.BindingFormat;

class Story {
	
	String title
	String text
	String description
	@BindingFormat('MM/dd/yyyy')
	Date dateOfStory
	String estDate;
	String label = "Mo'olelo"
	
	static hasOne = [placeOfStory:Place]
	static transients = ['label']
	static mapping = {
		text type:'text'
	}
    static constraints = {
		dateOfStory nullable:true
    }
}
