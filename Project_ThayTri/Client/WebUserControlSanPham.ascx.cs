using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ThayTri.Client
{
    public partial class WebUserControlSanPham : System.Web.UI.UserControl
    {
        public  DbAppDataContext _context = new DbAppDataContext();
        public  List<SanPham> ListSP = new List<SanPham>();
        public  DanhMuc DM = new DanhMuc();
        public List<SanPham> spNew = new List<SanPham>();
        public List<SanPham> spBanChay = new List<SanPham>();
        public  int check_msg = 1;
        public  int check_title = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["IdDanhMuc"]))
            {
                long getIdDM = Convert.ToInt64(Request.QueryString["IdDanhMuc"]);
                LoadDM(getIdDM);
                LoadSPofDM(getIdDM);
                LoadSPNew();
                LoadSPBanChay();
            }
           else if (!string.IsNullOrEmpty(Request.QueryString["strSearch"]))
            {
                string strSearch = Request.QueryString["strSearch"];
                LoadSP_Search(strSearch);
                LoadSPNew();
                LoadSPBanChay();
            }
            else
            {
                LoadAllSP();
                LoadSPNew();
                LoadSPBanChay();
            }
        }
        void LoadSPofDM(long getIdDM)
        {
            var sp = from q in _context.SanPhams
                     where q.IdDanhMuc == getIdDM
                     select q;

            check_title = 0;

            if (sp == null || sp.Count() <1)
            {
                check_msg = 0;
            }
            ListSP = sp.ToList();

        }
        void LoadDM(long getIdDM)
        {
            var dm = from q in _context.DanhMucs
                     where q.IdDanhMuc == getIdDM
                     select q;
            DM = dm.First();
        }
        void LoadAllSP()
        {
            var sp = from q in _context.SanPhams
                     select q;
            ListSP = sp.ToList();
            check_msg = 1;
            check_title = 1;
        }
        void LoadSPNew()
        {
            var latestSP = _context.SanPhams
                        .OrderByDescending(q => q.CreateAt)
                        .Take(4);
            spNew = latestSP.ToList();
        }
        void LoadSPBanChay()
        {
            var spbanChay = _context.SanPhams
                        .OrderBy(q => q.CreateAt)
                        .Take(4);
            spBanChay = spbanChay.ToList();
        }

        void LoadSP_Search(string strSearch)
        {
            var sp = from q in _context.SanPhams
                     where q.TenSanPham.Contains(strSearch)
                     select q;
            ListSP = sp.ToList();
            if (ListSP.Count() < 1)
            {
                check_msg = 0;
            }
        }
    }
}