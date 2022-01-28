public class StudentListController {
    
    public String student{get;set;}
    public 	List<String> studentList{get;set;}
    
    public StudentListController(){
        
        studentList= new List<String>();
        studentList.add('1');
        studentList.add('2');
        studentList.add('3');
        
        student='Munna';
    }
        
    public void fetchStudent(){
        student='MunnaTiger';
        studentList.add('4');    
    }
        

}