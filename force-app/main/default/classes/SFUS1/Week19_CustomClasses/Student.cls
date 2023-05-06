public class Student {
  public String firstName, lastName;
  public Integer studentId;

  public Student() {
    this.firstName = 'unknown';
    this.lastName = 'unknown';
    this.studentId = 0;
  }

  public Student(Integer id) {
    this.studentId = id;
  }

  public Student(String lastName, Integer id) {
    this(id);
    this.lastName = lastName;
  }
 

}
