using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.web
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetChannelList();
                GetHotSearch();
            }
        }

        public void GetChannelList()
        {
            var dataset = new DTcms.BLL.channel().GetList(6, "name !='Proprietaryresources'", " sort_id ASC");
            rptlist.DataSource = dataset;
            rptlist.DataBind();
        }
        public void GetHotSearch()
        {
            BLL.hotsearch bll = new BLL.hotsearch();
            rptHotsearch.DataSource = bll.GetList(5, "  state=1", " sortid DESC");
            rptHotsearch.DataBind();
        }
    }
}