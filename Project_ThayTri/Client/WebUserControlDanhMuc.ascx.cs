using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Client
{
    public partial class WebUserControlDanhMuc : System.Web.UI.UserControl
    {
        public static DbAppDataContext _context = new DbAppDataContext();
        public static List<DanhMuc> ListDM = new List<DanhMuc>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDM();
        }
        void LoadDM()
        {
            var dm = from q in _context.DanhMucs
                     select q;
            if (dm != null && dm.Count() > 0)
            {
                ListDM = dm.ToList();
            }
        }
    }
}