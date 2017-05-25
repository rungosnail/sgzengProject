using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.admin.hotsearch
{
    public partial class Index : Web.UI.ManagePage
    {
        public BLL.hotsearch bll = new BLL.hotsearch();
        protected int totalCount;
        protected int page = 1;
        protected int pageSize = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindInfo();
            }
        }

        public void BindInfo()
        {
            this.page = DTRequest.GetQueryInt("page", 1);
            DataSet ds = new DataSet();
            this.rptList2.DataSource = bll.GetList(this.pageSize, this.page, "", "id desc", out totalCount);
            //bll.GetList(_channel_id, _category_id, this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
            this.rptList2.DataBind();
            //绑定页码
            txtPageNum.Text = this.pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("Index.aspx", "page={0}", "__id__");
            PageContent.InnerHtml = Utils.OutPageList(this.pageSize, this.page, this.totalCount, pageUrl, 8);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Repeater rptList = new Repeater();
            rptList = this.rptList2;
            for (int i = 0; i < rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)rptList.Items[i].FindControl("hidId")).Value);
                CheckBox cb = (CheckBox)rptList.Items[i].FindControl("chkId");
                if (cb.Checked)
                {
                    if (bll.Delete(id))
                    {
                        JscriptMsg("删除信息成功！", "index.aspx?channel_id=10");
                    }
                }
            }
        }
    }
}