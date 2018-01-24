using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        protected void btntest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student2.aspx");
        }
    }
}