using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project_ThayTri;

namespace Project_ThayTri.Client
{
    public partial class WebUserControlDatHang : System.Web.UI.UserControl
    {
        public static DbAppDataContext _context = new DbAppDataContext();
        public static SanPham ChiTietSP = new SanPham();
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IDSanPham"] != "")
            {
                long idSP = Convert.ToInt64(Request.QueryString["IDSanPham"]);
                LoadChiTietSP(idSP);

            }
        }
        void LoadChiTietSP(long idSP)
        {
            var sp = from q in _context.SanPhams
                     where q.IDSanPham == idSP
                     select q;
            ChiTietSP = sp.FirstOrDefault();
        }
        protected  void HanldXacNhan(object sender, EventArgs e)
        {
            Order info_OrDer = new Order
            {
                UserName = username.Text,
                Email = email.Text,
                Phone = Convert.ToInt32(phone.Text),
                Address = address.Text
            };
            _context.Orders.InsertOnSubmit(info_OrDer);
            _context.SubmitChanges();
             SendMail(info_OrDer);
             ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Đặt hàng thành công')", true);
            Response.Redirect("TrangChu.aspx");
        }
        protected void SendMail(Order info_OrDer)
        {
            System.Diagnostics.Debug.WriteLine("SendMail method is being called.");
            EmailSendercs.SendOrderConfirmationEmail(info_OrDer.Email , "Subject of the email", "Body of the email");
        }

    }
}