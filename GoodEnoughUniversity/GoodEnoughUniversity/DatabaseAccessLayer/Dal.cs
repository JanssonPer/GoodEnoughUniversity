using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoodEnoughUniversity.DataBaseAccessLayer
{
    class Dal
    {
        GoodEnoughUniversityEntities context = new GoodEnoughUniversityEntities();

        public List<Course> GetCourses()
        {
            List<Course> list = context.usp_GetCourses().ToList<Course>();
                return list;
        }

        public Course GetCourse(String courseCode)
        {
            Course c = context.usp_GetCourse(courseCode).SingleOrDefault<Course>();
                return c;
        }

    }

   }

