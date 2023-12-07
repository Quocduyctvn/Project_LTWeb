using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Account
{
    public partial class Login : System.Web.UI.Page
    {
        public static DbAppDataContext _context = new DbAppDataContext();
        public static User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void handleClickDangNhap(object sender, EventArgs e)
        {
            var infoUser = from q in _context.Users
                    where q.UserName == username.Text
                    select q;
            user = infoUser.First();
            if (user != null)
            {
                if (user.UserName == username.Text)
                {
                    Session["UserName"] = username.Text;
                    Response.Redirect("../Admin/TrangChuAdmin.aspx");
                }else{
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowError", "alert('Thông tin đăng nhập sai!!');", true);
                }
            }else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowError", "alert('Thông tin đăng nhập sai!!');", true);
            }
        }
    }
}
