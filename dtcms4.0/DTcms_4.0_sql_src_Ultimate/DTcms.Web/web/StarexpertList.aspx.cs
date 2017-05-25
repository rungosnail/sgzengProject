using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.web
{
    public partial class StarexpertList : System.Web.UI.Page
    {
        public BLL.starexpert bll = new BLL.starexpert();

        public string Name = "";
        public string img_url = "";
        public string job_occupation = "";
        public string linkprice = "";
        public string AboutDesc = "";
        public int channel_id = 0;
        public int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                id = DTRequest.GetQueryInt("id", 0);
                bindinfo(id);
                BindOtherInfo();
            }
        }

        public void bindinfo(int id)
        {
            if (id > 0)
            {
                Model.starexpert model = new Model.starexpert();
                model= bll.GetModel(id);
                if (model!=null)
                {
                    Name = model.name;
                    img_url = model.img_url;
                    job_occupation = model.job_occupation;
                    AboutDesc = model.aboutdesc;
                    id = model.id;
                    linkprice = model.linkprice.ToString();
                    channel_id = model.channel_id;
                }
            }
        }

        /// <summary>
        /// 该主题其它资源
        /// </summary>
        public void BindOtherInfo()
        {
            int ChannelId = DTRequest.GetQueryInt("nvaChannelid", 10);
            if (ChannelId > 0 && id > 0)
            {
                rptOtherList.DataSource = bll.GetList(4, " status=0 and  type!=0 and id!=" + id + " and  channel_id=" + ChannelId, " sortid  asc");
                rptOtherList.DataBind();
            }

        }
    }
}