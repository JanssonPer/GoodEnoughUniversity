using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GoodEnoughUniversity.View
{
    public partial class @interface : Form
    {
        public @interface()
        {
            InitializeComponent();

        }

        List<StudentPhone> phoneList = new List<StudentPhone>();


        private void button_registerCourse_Click(object sender, EventArgs e)
        {
            Course c = new Course();
            c.courseCode = textBox_courseCode.Text;
            c.courseName = textBox_courseName.Text;
            c.prerequisite = textBox_prerequisite.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_addSectionToCourse_Click(object sender, EventArgs e)
        {
            Section s = new Section();
            s.sectionCode = textBox_sectionCode.Text;
            s.courseCode = comboBox_chooseCourse.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_addAssigmentToSection_Click(object sender, EventArgs e)
        {
            Assignment a = new Assignment();
            a.assignmentName = textBox_assignmentName.Text;
            a.credits = Convert.ToInt32(textBox_amountOfCredits.Text);
            a.courseCode = comboBox_chooseSection.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_giveGradeToStudent_Click(object sender, EventArgs e)
        {
            Studied studied = new Studied();
            studied.ssn = comboBox_studentFinished.Text;
            studied.courseCode = comboBox_courseFinished.Text;
            studied.grade = Convert.ToInt32(comboBox_chooseGrade.Text);

            try
            {

            }
            catch
            {

            }
        }

        private void button_registerStudentOnCourse_Click(object sender, EventArgs e)
        {
            Studies studies = new Studies();
            studies.ssn = comboBox_chooseStudent.Text;
            studies.courseCode = comboBox_chooseCourseForStudent.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_registerStudent_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.ssn = textBox_studentSsn.Text;
            student.studentName = textBox_studentName.Text;
            student.studentAddress = textBox_studentAddress.Text;
            student.studentType = comboBox_origin.Text + "Student";
            if (comboBox_origin.Text.Equals("Exchange"))
            {
                ExchangeStudent exchangeStudent = new ExchangeStudent();
                exchangeStudent.ssn = textBox_studentSsn.Text;
                exchangeStudent.countryOfOrigin = textBox_country.Text;
            }
            try
            {


                //Här ska vi alltså både skapa student samt skicka in listan med studentphones
                phoneList.Clear();
            }
            catch
            {

            }
        }

        private void comboBox_origin_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox_origin.Text.Equals("Swedish"))
            {
                textBox_country.Text = "";
                textBox_country.ReadOnly = true;
            }
            else if (comboBox_origin.Text.Equals("Exchange"))
            {
                textBox_country.Text = "";
                textBox_country.ReadOnly = false;
            }
        }

        private void button_addPhoneNbr_Click(object sender, EventArgs e)
        {
            StudentPhone stuPhone = new StudentPhone();
            stuPhone.ssn = textBox_studentSsn.Text;
            stuPhone.studentPhone1 = textBox_studentPhoneNbr.Text;
            phoneList.Add(stuPhone);
        }

        private void button_removeStudies_Click(object sender, EventArgs e)
        {
            Studies stu = new Studies();
            stu.ssn = comboBox_removeStudentFromCourse.Text;
            stu.courseCode = comboBox_courseRemoveStudent.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_removeStudied_Click(object sender, EventArgs e)
        {
            Studies stud = new Studies();
            stud.ssn = comboBox_removeStudentFromFinishedCourse.Text;
            stud.ssn = comboBox_removeCourseFromStudentStudied.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_removeStudent_Click(object sender, EventArgs e)
        {
            Student s = new Student();
            s.ssn = comboBox_removeStudentFromRegister.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_removeSectionFromCourse_Click(object sender, EventArgs e)
        {
            Section sec = new Section();
            sec.sectionCode = comboBox_removeSection.Text;
            sec.courseCode = comboBox_selectCourseToRemoveFrom.Text;

            try
            {

            }
            catch
            {

            }

        }

        private void button_removeCourse_Click(object sender, EventArgs e)
        {
            Course c = new Course();
            c.courseCode = comboBox_removeCourseFinal.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button_removeAssigmentFromSection_Click(object sender, EventArgs e)
        {
            Assignment a = new Assignment();

            a.assignmentName = comboBox_removeAssigment.Text;
            a.sectionCode = comboBox_removeFromThisSection.Text;
            a.courseCode = comboBox_removeAssignmentFromSectionAndCourse.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (comboBox_searchMaster.Text.Equals("Students"))
            {
                textBox_masterSearch.ReadOnly = true;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Courses"))
            {
                textBox_masterSearch.ReadOnly = true;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Sections"))
            {
                textBox_masterSearch.ReadOnly = true;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Assignment"))
            {
                textBox_masterSearch.ReadOnly = true;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Study result for course"))
            {
                textBox_masterSearch.ReadOnly = false;
                String result = textBox_masterSearch.Text;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Passed given course"))
            {
                textBox_masterSearch.ReadOnly = false;
                String passed = textBox_masterSearch.Text;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Eligible students"))
            {
                textBox_masterSearch.ReadOnly = false;
                String eligible = textBox_masterSearch.Text;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("Percentage high pass"))
            {
                textBox_masterSearch.ReadOnly = false;
                String percentage = textBox_masterSearch.Text;
                try
                {

                }
                catch
                {

                }
            }
            else if (comboBox_searchMaster.Text.Equals("University register for given course"))
            {
                textBox_masterSearch.ReadOnly = false;
                String register = textBox_masterSearch.Text;
                try
                {

                }
                catch
                {

                }
            }

        }

        private void button_givenStudentGivenCourse_Click(object sender, EventArgs e)
        {
            Studied studied = new Studied();
            studied.ssn = comboBox_chooseStudentGivenCourse.Text;
            studied.courseCode = comboBox_courseForGivenStudent.Text;

            try
            {

            }
            catch
            {

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        // Denna kommentaren behövs också.
        // Denna kommentaren behövs speciellt.
        // HAHA
        // CHANGES
        // asdasd


    }
}