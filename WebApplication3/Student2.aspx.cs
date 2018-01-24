using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Extensions;

namespace WebApplication3
{
    public partial class Student2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] != null)
            {
                var student = (IEnumerable<Student>) Session["Student"];

                student.ForEach(x => 
                {
                    Label1.Text += x.Name + " " + x.Surname + " ";
                });
            }
        }
    }
}