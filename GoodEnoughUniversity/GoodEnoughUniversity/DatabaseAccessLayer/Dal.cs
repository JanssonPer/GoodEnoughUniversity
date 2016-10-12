using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoodEnoughUniversity.DataBaseAccessLayer
{
    class Dal
    {
        //Get methods
        GoodEnoughUniversityEntities context = new GoodEnoughUniversityEntities();

        public List<Course> GetCourses()
        {
            List<Course> courseList = context.usp_GetCourses().ToList<Course>();
                return courseList;
        }

        public Course GetCourse(String courseCode)
        {
            Course c = context.usp_GetCourse(courseCode).SingleOrDefault<Course>();
                return c;
        }

        public Section GetSection(String sectionCode, String courseCode)
        {
            Section s = context.usp_GetSection(sectionCode, courseCode).SingleOrDefault<Section>();
            return s;
        }

        public List<Section> GetSections() {
            List<Section> sectionList = context.usp_Getsections().ToList<Section>();
            return sectionList;
        }

        public Student GetStudent(String ssn)
        {
            Student s = context.usp_GetStudent(ssn).SingleOrDefault<Student>();
            return s;
        }

        public List<Student> GetStudentOnStudiesCourse(String courseCode)
        {
            List<Student> studentList = context.usp_GetStudentOnStudiedCourse(courseCode).ToList<Student>();
            return studentList;
      
        }

        public List<Student> GetStudentOnStudiedCourse(String courseCode)
        {
            List<Student> studentList = context.usp_GetStudentOnStudiedCourse(courseCode).ToList<Student>();
            return studentList;
        }

        public Studied GetStudentResultForCourse(String courseCode, String ssn)
        {
            Studied s = context.usp_GetStudentResultForCourse(courseCode, ssn).SingleOrDefault<Studied>();
            return s;
        }

        public List<Student> GetStudents(){
            List<Student> studentList = context.usp_GetStudents().ToList<Student>();
            return studentList;
        }

        public List<Student> GetStudentWhoPassedCourse(String courseCode)
        {
            List<Student> studentList = context.usp_GetStudentWhoPassedCourse(courseCode).ToList<Student>();
            return studentList;
        }

        public List<Student> GetResultForCourse(String courseCode)
        {
            List<Student> studentList = context.usp_GetStudentResultForCourse(courseCode).ToList<Student>();
            return studentList;
        }

        public String GetPercentWithAForCourse(String courseCode)
        {
            String percentWithA = context.usp_GetPercentWithAForCourse(courseCode).ToString();
            return percentWithA;
        }

        public Studied GetGrade(String courseCode, String ssn)
        {
            Studied s = context.usp_GetGrade(courseCode, ssn).SingleOrDefault<Studied>();
            return s; 
        }

        public List<Student> GetEligibleStudentsForCourse(String courseCode)
        {
            List<Student> studentList = context.usp_GetEligibleStudentsForCourse(courseCode).ToList<Student>();
            return studentList; 
        }

        public List<Assignment> GetAssignmentOnCourse(String courseCode)
        {
            List<Assignment> assignmentList = context.usp_GetAssignemntOnCourse(courseCode).ToList<Assignment>();
            return assignmentList;
        }

        public Assignment GetAssignment(String assignmentName, String sectionCode, String courseCode)
        {
            Assignment a = context.usp_GetAssignment(assignmentName, sectionCode, courseCode).SingleOrDefault<Assignment>();
            return a;
        }

        public List<Assignment> GetAssignments()
        {
            List<Assignment> assignmentList = context.usp_GetAssignments().ToList<Assignment>();
            return assignmentList;
        }

        public List<StudentPhone> GetAllStudentNbr()
        {
            List<StudentPhone> studentPhoneList = context.usp_GetStudentPhone().ToList<Assignment>();
        }

        //Create
        public void CreateStudentPhone(String ssn, String studentPhone)
        {
            context.usp_CreateStudentPhone(ssn, StudentPhone);
        }

        public void CreateCourse(String courseCode, String courseName, String prerequisite)
        {
            context.usp_CreateCourse(courseCode, courseName, prerequisite);
        }

        public void CreateStudent(String ssn, String studentName, String studentAddress, String studentType, String countryOfOrgin)
        {

            context.usp_CreateStudent(ssn, studentName, studentAddress, studentType, countryOfOrgin);
        }

        public void CreateAssignment(String assignmentName, int credits, String sectionCode, String courseCode)
        {
            context.usp_CreateAssignment(assignmentName, credits, sectionCode, courseCode);
        }

        public void CreateSection(String sectionCode, String courseCode)
        {
            context.usp_CreateSection(sectionCode, courseCode);
        } 
        
        //Delete
        public void DeleteCourse(String courseCode)
        {
            context.usp_DeleteCourse(courseCode);
        }

        public void DeleteSection(String sectionCode, String courseCode)
        {
            context.usp_DeleteSection(sectionCode, courseCode);
        }

        public void DeleteAssignment(String assignmentName, String courseCode, String sectionCode)
        {
            context.usp_DeleteAssignment(assignmentName, courseCode, sectionCode);
        }

        public void DeleteStudent(String ssn)
        {
            context.usp_DeleteStudent(ssn);
        }

        //Update 

        public void UpdateCourse(String courseCode, String courseName, String prerequisite)
        {
            context.usp_UpdateCourse(courseCode, courseName, prerequisite);
        }

        public void UpdateStudent(String ssn, String studentName, String studentAddress, String studentType, String countryOfOrgin)
        {
            context.usp_UpdateStudent(ssn, studentName, studentAddress, studentType, countryOfOrgin);
        }

        public void UpdateAssignment(String assignmentName, int credits ,String sectionCode, String courseCode)
        {
            context.usp_UpdateAssignment(assignmentName, credits, sectionCode, courseCode);
        } 

        //other
        public void MoveFromStudiesToStudied(String ssn, String courseCode, int grade)
        {
            context.usp_MoveFromStudiesToStudied(ssn, courseCode, grade);
        }
        
        public void AddStudentToCourse(String ssn, String courseCode)
        {
            context.usp_AddStudentToCourse(ssn, courseCode);
        }

    }

   }

