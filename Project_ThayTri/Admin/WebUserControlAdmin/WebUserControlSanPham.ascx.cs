using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
namespace Project_ThayTri.Admin.WebUserControlAdmin
{
    public partial class WebUserControlSanPham : System.Web.UI.UserControl
    {
        public DbAppDataContext _context = new DbAppDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadSP();
        }
        void LoadSP(){
            var sp = from q in _context.SanPhams
                     orderby q.CreateAt descending
                     select q;
             gridLapTop.DataSource = sp.ToList();
            gridLapTop.DataBind();
        }


        protected void gridLapTop_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (((LinkButton)e.CommandSource).CommandName == "UpdateLapTop")
            {
                long idSP = Convert.ToInt32(gridLapTop.DataKeys[e.Item.ItemIndex].ToString());
                Response.Redirect("UpdateSanPham.aspx?IDSanPham=" + idSP.ToString());
            }

            if (((LinkButton)e.CommandSource).CommandName == "DeleteLapTop")
            {
                long idSP = Convert.ToInt32(gridLapTop.DataKeys[e.Item.ItemIndex].ToString());
                var sp = from q in _context.SanPhams
                           where q.IDSanPham == idSP
                           select q;
                if (sp != null && sp.Count() > 0)
                {
                    SanPham SP = sp.First();
                    _context.SanPhams.DeleteOnSubmit(SP);
                    _context.SubmitChanges();
                    LoadSP();
                }
            }

        }
        protected void gridLapTop_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridLapTop.CurrentPageIndex = e.NewPageIndex;
            LoadSP();
        }
    }
}
