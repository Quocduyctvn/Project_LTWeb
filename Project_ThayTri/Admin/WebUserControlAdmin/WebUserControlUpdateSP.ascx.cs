using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Admin.WebUserControlAdmin
{
    public partial class WebUserControlUpdateSP : System.Web.UI.UserControl
    {
        public static DbAppDataContext _context = new DbAppDataContext();
        public static long idSP = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["IDSanPham"] != null && Request.QueryString["IDSanPham"].ToString() != "")
                {
                    long idSP = Int32.Parse(Request.QueryString["IDSanPham"]);
                    LoadPhim(idSP);
                }
            }
        }
        void LoadPhim(long idSP)
        {
            var sp = from q in _context.SanPhams
                     where q.IDSanPham == idSP
                     select q;
            SanPham infoSP = sp.FirstOrDefault();
            tensanpham.Text = infoSP.TenSanPham;
            cpu.Text = infoSP.CPU;
            ram.Text = infoSP.RAM;
            manhinh.Text = infoSP.ManHinh;
            harddrive.Text = infoSP.HardDrive;
            os.Text = infoSP.OS;
            xuatxu.Text = infoSP.XuatXu;
            baohanh.Text = infoSP.BaoHanh.ToString();
            kichthuoc.Text = infoSP.KichThuoc.ToString();
            trongluong.Text = infoSP.TrongLuong.ToString();
            gia.Text = infoSP.Gia.ToString();
            giagiam.Text = infoSP.GiaGiam.ToString();
            mota.Text = infoSP.MoTa;
        }
        protected void hanldeClick_Update(object sender, EventArgs e)
        {
            if (tensanpham.Text == "")
            {
                tensanpham.Focus();
                lb_Error.Text = "Vui lòng nhập tên sản phẫm";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (manhinh.Text == "")
            {
                manhinh.Focus();
                lb_Error.Text = "Vui lòng chọn hình ảnh";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (cpu.Text == "")
            {
                cpu.Focus();
                lb_Error.Text = "Vui lòng nhập giá trị CPU";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (ram.Text == "")
            {
                ram.Focus();
                lb_Error.Text = "Vui lòng nhập giá trị RAM";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (mota.Text == "")
            {
                mota.Focus();
                lb_Error.Text = "Vui lòng nhập nội dung Mổ tả Sản Phẫm";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (xuatxu.Text == "")
            {
                xuatxu.Focus();
                lb_Error.Text = "Vui lòng nhập thông tin Xuất xứ";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (baohanh.Text == "")
            {
                baohanh.Focus();
                lb_Error.Text = "Vui lòng nhập thời gian bảo hành/năm";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (kichthuoc.Text == "")
            {
                kichthuoc.Focus();
                lb_Error.Text = "Vui lòng nhập kích thước";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else if (trongluong.Text == "")
            {
                trongluong.Focus();
                lb_Error.Text = "Vui lòng nhập trọng lượng sản phẫm";
                lb_Error.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                idSP = Int32.Parse(Request.QueryString["IDSanPham"]);
                var sp = from q in _context.SanPhams
                         where q.IDSanPham == idSP
                         select q;
                SanPham infoSP = sp.FirstOrDefault();
                infoSP.TenSanPham = tensanpham.Text;
                infoSP.ManHinh = manhinh.Text;
                infoSP.CPU = cpu.Text;
                infoSP.RAM = ram.Text;
                infoSP.HardDrive = harddrive.Text;
                infoSP.OS = os.Text;
                infoSP.XuatXu = xuatxu.Text;
                infoSP.KichThuoc = kichthuoc.Text;
                infoSP.TrongLuong = Convert.ToInt32(trongluong.Text);
                infoSP.BaoHanh = Convert.ToInt32(baohanh.Text);
                infoSP.Gia = Convert.ToInt32(gia.Text);
                infoSP.GiaGiam = Convert.ToInt32(giagiam.Text);
                infoSP.MoTa = mota.Text;
                if (img.HasFile)
                {
                    infoSP.Img = img.FileName;
                    img.SaveAs(Server.MapPath("\\img\\img-laptop\\") + img.FileName);
                }
                _context.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Cập nhật thành công')", true);
                Response.Redirect("/Admin/TrangChuAdmin.aspx");

            }
        }
    }
}