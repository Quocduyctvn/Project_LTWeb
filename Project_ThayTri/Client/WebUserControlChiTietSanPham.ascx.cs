using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Client
{
    public partial class WebUserControlChiTietSanPham : System.Web.UI.UserControl
    {
        public static DbAppDataContext _context = new DbAppDataContext();
        public static SanPham ChiTietSanPham = new SanPham();
        public static List<SanPham> SPLienQuan = new List<SanPham>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IDSanPham"] != "")
            {
                long IdGet = Convert.ToInt64(Request.QueryString["IDSanPham"]);
                LoadChiTiet(IdGet);
            }
        }

        void LoadChiTiet(long IdSP)
        {
            var dl = from q in _context.SanPhams
                     where q.IDSanPham == IdSP
                     select q;
            if (dl != null && dl.Count() > 0)
            {
                ChiTietSanPham = dl.First();
            }
            var spLq = from q in _context.SanPhams
                       select q;
            SPLienQuan = spLq.Take(3).ToList();
        }
        protected void HanldeDatHang(object sender, EventArgs e)
        {
            Response.Redirect("DatHang.aspx?IDSanPham=" + ChiTietSanPham.IDSanPham.ToString());
        }
    }
}