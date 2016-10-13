using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            try { List<Course> courseList = context.usp_GetCourses().ToList<Course>();
                return courseList;
            }
            catch (SqlException)
            {
                throw;
            }
            
        }
 
        public Course GetCourse(String courseCode)
        {
            Course c = context.usp_GetCourse(courseCode).SingleOrDefault<Course>();
            return c;
        }
    
        public Section GetSection(String sectionCode, String courseCode)
        {
            try {
                Section s = context.usp_GetSection(sectionCode, courseCode).SingleOrDefault<Section>();
                return s; }
            catch (SqlException)
            {
                throw;
            }
        }

        public List<Section> GetSections() {
            try {
                List<Section> sectionList = context.usp_Getsections().ToList<Section>();
                return sectionList;
            }
            catch (SqlException)
            {
                throw;
            }
        }

        public Student GetStudent(String ssn)
        {
            try {
                Student s = context.usp_GetStudent(ssn).SingleOrDefault<Student>();
                return s;
            }
            catch (SqlException)
            {
                throw;
            }
        }

        public List<Student> GetStudentOnStudiesCourse(String courseCode)
        {
            try {
                List<Student> studentList = context.usp_GetStudentOnStudiedCourse(courseCode).ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
        }

        public List<Student> GetStudentOnStudiedCourse(String courseCode)
        {
            try {
                List<Student> studentList = context.usp_GetStudentOnStudiedCourse(courseCode).ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
            }

        public Studied GetStudentResultForCourse(String courseCode, String ssn)
        {
            try {
                Studied s = context.usp_GetStudentResultForCourse(courseCode, ssn).SingleOrDefault<Studied>();
                return s;
            }
            catch (SqlException)
            {
                throw;
            }
        }

        public List<Student> GetStudents()
        {
            try {
                List<Student> studentList = context.usp_GetStudents().ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public List<Student> GetStudentWhoPassedCourse(String courseCode)
        {
            try {
                List<Student> studentList = context.usp_GetStudentWhoPassedCourse(courseCode).ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
            
        }

        public List<Student> GetResultForCourse(String courseCode)
        {
            try {
                List<Student> studentList = context.usp_GetResultForCourse(courseCode).ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
        }

        public String GetPercentWithAForCourse(String courseCode)
        {
            try {
                String percentWithA = context.usp_GetPercentWithAForCourse(courseCode).ToString();
                return percentWithA;
            }catch (SqlException)
            {
                throw;
            }
            }

        public Studied GetGrade(String courseCode, String ssn)
        {
            try {
                Studied s = context.usp_GetGrade(courseCode, ssn).SingleOrDefault<Studied>();
                return s;
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public List<Student> GetEligibleStudentsForCourse(String courseCode)
        {
            try {
                List<Student> studentList = context.usp_GetEligibleStudentsForCourse(courseCode).ToList<Student>();
                return studentList;
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public List<Assignment> GetAssignmentOnCourse(String courseCode)
        {
            try {
                List<Assignment> assignmentList = context.usp_GetAssignemntOnCourse(courseCode).ToList<Assignment>();
                return assignmentList;
            }
            catch (SqlException)
            {
                throw;
            }
            }

        public Assignment GetAssignment(String assignmentName, String sectionCode, String courseCode)
        {
            try {
                Assignment a = context.usp_GetAssignment(assignmentName, sectionCode, courseCode).SingleOrDefault<Assignment>();
                return a;
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public List<Assignment> GetAssignments()
        {
            try {
                List<Assignment> assignmentList = context.usp_GetAssignments().ToList<Assignment>();
                return assignmentList;
            }catch (SqlException)
            {
                throw;
            }
        }

        public List<StudentPhone> GetAllStudentNbr()
        {
            try {
                List<StudentPhone> studentPhoneList = context.usp_GetAllStudentNbr().ToList<StudentPhone>();
                return studentPhoneList;
            }
            catch (SqlException)
            {
                throw;
            }
         }

        //Create
        public void CreateStudentPhone(String ssn, String studentPhone)
        {
            try {
                context.usp_CreateStudentPhone(ssn, studentPhone);
            }
            catch (SqlException)
            {
                throw;
            }
            
         }

        public void CreateCourse(String courseCode, String courseName, String prerequisite)
        {
            try {
                context.usp_CreateCourse(courseCode, courseName, prerequisite);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void CreateStudent(String ssn, String studentName, String studentAddress, String studentType, String countryOfOrgin)
        {
            try {
                context.usp_CreateStudent(ssn, studentName, studentAddress, studentType, countryOfOrgin);
            }
            catch(SqlException)
            {
                throw;
            }
         }

        public void CreateAssignment(String assignmentName, int credits, String sectionCode, String courseCode)
        {
            try {
                context.usp_CreateAssignment(assignmentName, credits, sectionCode, courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void CreateSection(String sectionCode, String courseCode)
        {
            try {
                context.usp_CreateSection(sectionCode, courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
         } 
        
        //Delete
        public void DeleteCourse(String courseCode)
        {
            try {
                context.usp_DeleteCourse(courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void DeleteSection(String sectionCode, String courseCode)
        {
            try {
                context.usp_DeleteSection(sectionCode, courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void DeleteAssignment(String assignmentName, String courseCode, String sectionCode)
        {
            try {
                context.usp_DeleteAssignment(assignmentName, courseCode, sectionCode);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void DeleteStudent(String ssn)
        {
            try {
                context.usp_DeleteStudent(ssn);
            }
            catch (SqlException)
            {
                throw;
            }
         }


        //Update 

        public void UpdateCourse(String courseCode, String courseName, String prerequisite)
        {
            try {
                context.usp_UpdateCourse(courseCode, courseName, prerequisite);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void UpdateStudent(String ssn, String studentName, String studentAddress, String studentType, String countryOfOrgin)
        {
            try {
                context.usp_UpdateStudent(ssn, studentName, studentAddress, studentType, countryOfOrgin);
            }
            catch (SqlException)
            {
                throw;
            }
         }

        public void UpdateAssignment(String assignmentName, int credits ,String sectionCode, String courseCode)
        {
            try {
                context.usp_UpdateAssignment(assignmentName, credits, sectionCode, courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
         } 

        //other
        public void MoveFromStudiesToStudied(String ssn, String courseCode, int grade)
        {
            try {
                context.usp_MoveFromStudiesToStudied(ssn, courseCode, grade);
            }
            catch (SqlException)
            {
                throw;
            }
         }
        
        public void AddStudentToCourse(String ssn, String courseCode)
        {
            try {
                context.usp_AddStudentToCourse(ssn, courseCode);
            }
            catch (SqlException)
            {
                throw;
            }
          }
        }
     }

