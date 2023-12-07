using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Account
{
    public partial class Register : System.Web.UI.Page
    {
        public static DbAppDataContext _context = new DbAppDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void handleClickDangKy(object sender, EventArgs e)
        {
            User addUser = new User
            {
                UserName = username.Text,
                Email = email.Text,
                Pass = pass.Text,
                Cfm_Pass = cfmpass.Text
            };
            var exists = _context.Users.Any(x => x.Email == addUser.Email || x.UserName == addUser.UserName);
            if (exists)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowError", "alert('Tên đăng nhập hoặc Email đã tồn tại! Vui lòng đăng ký lại.');", true);
                return;
            }

            _context.Users.InsertOnSubmit(addUser);
            _context.SubmitChanges();
            Response.Redirect("../TrangChu.aspx");
        }
    }
}
