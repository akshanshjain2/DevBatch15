public class StudentMarksheet {
    String firstName;
    String lastName;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    Static String schoolName;

    public StudentMarksheet() {
        schoolName = 'Salesforce Public School';
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;
    }

    public String getFirstName(){
        return this.firstName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }

    public String getLastName(){
        return lastName;
    }

    public void setMarks(Integer mathematics, Integer english,Integer chemistry){
        this.mathematics = mathematics;
        this.english = english;
        this.chemistry = chemistry;
    }
    
    public void showMarksheet(){
        System.debug('Student Name : ' + this.firstName + ' ' + this.lastName);
        System.debug('School Name : ' + schoolName);
        System.debug('Marks in Mathematics : ' + this.mathematics);
        System.debug('Marks in English : ' + this.english);
        System.debug('Marks in Chemistry : ' + this.chemistry);
        Integer sumOfMarks = this.mathematics + this.english + this.chemistry;
        if(sumOfMarks >= 120){
            System.debug('You are passed');
        }
        else{
            System.debug('You need to study more');
        }
    }
}