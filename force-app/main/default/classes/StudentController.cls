public class StudentController {
    
    public String student{get;set;}
    
    /* Another Way
       public String student{
       get{
           return student;
          }
       set{

           student=value+'hey';
          } 
     }
     */

    public StudentController(){
        
        student='Munna';
    }
    
    public void fetchStudent(){
        student='Tiger';
    }

}