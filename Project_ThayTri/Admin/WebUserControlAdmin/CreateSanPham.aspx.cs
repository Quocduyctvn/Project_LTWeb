using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Admin.WebUserControlAdmin
{
    public partial class CreateSanPham : System.Web.UI.Page
    {
        public DbAppDataContext _context = new DbAppDataContext();
        public List<DanhMuc> ListDM = new List<DanhMuc>();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDM();
        }
        void LoadDM()
        {
            var dm = from q in _context.DanhMucs
                     select q;
            ListDM = dm.ToList();
        }
        protected void handleClick_AddSP(object sender, EventArgs e)
        {
            SanPham addSanPham = new SanPham
            {
                 TenSanPham = tensanpham.Text,
                 ManHinh = manhinh.Text,
                 CPU = cpu.Text,
                 RAM = ram.Text,
                 HardDrive = harddrive.Text,
                 OS = os.Text,
                 XuatXu = xuatxu.Text,
                 KichThuoc = kichthuoc.Text,
                 TrongLuong = Convert.ToInt32(trongluong.Text),
                 BaoHanh = Convert.ToInt32(baohanh.Text),
                 Gia = Convert.ToInt32(gia.Text),
                 GiaGiam = Convert.ToInt32(giagiam.Text),
                 MoTa = mota.Text,
                 IdDanhMuc = Convert.ToInt32(iddanhmuc.Text),
                 CreateAt = DateTime.Now,
            };
            if (img.HasFile)
            {
                addSanPham.Img = img.FileName;
                img.SaveAs(Server.MapPath("\\img\\img-laptop\\") + img.FileName);
            }
            _context.SanPhams.InsertOnSubmit(addSanPham);
            _context.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công')", true);
            Response.Redirect(Request.Url.ToString(), false);
            Response.Redirect("/Admin/TrangChuAdmin.aspx");
        }
    }
}

