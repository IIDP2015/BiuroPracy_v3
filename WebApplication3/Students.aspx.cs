using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3;

namespace WebApplication3
{
    public partial class Students : System.Web.UI.Page
    {
        public IEnumerable<Student> Student
        {
            get
            {
                if (Session["Student"] == null)
                    return new List<Student>();

                return (IEnumerable<Student>)Session["Student"];
            }
            set
            {
                Session["Student"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Student = new Student().Get();
            }
        }
        protected void btnTest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student2.aspx");
        }
        protected void lblListStudent_Click(object sender, EventArgs e)
        {
            panelStudent.Visible = true;
            gvStudent.DataSource = Student;
            gvStudent.DataBind();
        }
        protected void lblSingleStudent_Click(object sender, EventArgs e)
        {

        }
    }
}