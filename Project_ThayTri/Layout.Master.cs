using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void handleSearch(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx?strSearch=" + search.Text);
        }
    }
}