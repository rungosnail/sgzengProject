using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.admin.hotsearch
{
    public partial class Edit : Web.UI.ManagePage
    {
        public BLL.hotsearch bll = new BLL.hotsearch();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bindinfo(DTRequest.GetQueryInt("id", 0));
            }
        }

        protected void btnSubmit_Click(object sendeer, EventArgs e)
        {
            Model.hotsearch model = new Model.hotsearch();
            model.title = txtName.Text.Trim();
            model.url = txtUrl.Text.Trim();
            model.state= Convert.ToInt32(rblStatus.SelectedValue);
            model.createdate = DateTime.Now;
            model.createuser = GetAdminInfo().id;
            model.sortid = Convert.ToInt32(txtSort.Text.Trim());
            
            if (!string.IsNullOrEmpty(hdID.Value))
            {
                model.id = Convert.ToInt32(hdID.Value);
                bll.Update(model);
                JscriptMsg("更新信息成功！", "index.aspx");
            }
            else
            {
                bll.Add(model);
                JscriptMsg("新增信息成功！", "index.aspx");
            }
        }

        /// <summary>
        /// 赋值
        /// </summary>
        public void Bindinfo(int id)
        {
            Model.hotsearch model = new Model.hotsearch();
            model = bll.GetModel(id);
            if (model != null)
            {
                txtName.Text = model.title;
                txtUrl.Text = model.url;
                rblStatus.SelectedValue = model.state == null ? "" : model.state.ToString();
                txtSort.Text = model.sortid.ToString();
                hdID.Value = model.id.ToString();
            }
        }
    }
}