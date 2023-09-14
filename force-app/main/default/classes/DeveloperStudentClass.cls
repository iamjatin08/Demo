public class DeveloperStudentClass {
    Integer rollno;
    String name;
    integer sub1;
    integer sub2;
    integer sub3;
    
    public DeveloperStudentClass(integer rollno , String name ,  integer sub1 , integer sub2,integer sub3){
        this.rollno = rollno;
        this.name = name;
        this.sub1 = sub1;
        this.sub2 = sub2;
        this.sub3 = sub3;
    }
    
    
    public decimal averageMarks(){
        return (sub1 + sub2 + sub3)/3;
    }
    
    public integer totalMarks(){
        return (sub1 + sub2 + sub3);
    }
}