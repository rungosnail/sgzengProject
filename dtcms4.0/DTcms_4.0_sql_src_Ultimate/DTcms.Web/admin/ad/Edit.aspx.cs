using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.Model;
using DTcms.BLL;
using DTcms.Common;

namespace DTcms.Web.admin.ad
{
    public partial class Edit : Web.UI.ManagePage
    {
        BLL.advertisementBll bll = new advertisementBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = DTRequest.GetQueryInt("id", 0);
                if (id > 0)
                {
                    BindInfo(id);
                }
            }
        }

        /// <summary>
        /// 绑定信息
        /// </summary>
        /// <param name="id"></param>
        public void BindInfo(int id)
        {
            var model = bll.GetModel(id);
            if (model != null)
            {
                txtName.Text = model.name;
                txtTitle.Text = model.title;
                txtImgUrl.Text = model.imgurl;
                txtUrl.Text = model.url;
                rblStatus.SelectedValue = model.state.ToString();
                txtState.Text = model.type;

                hdID.Value = model.id.ToString();
            }
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Model.advertisementModel model = new advertisementModel();
            model.name = txtName.Text;
            model.title = txtTitle.Text;
            model.imgurl = txtImgUrl.Text;
            model.state = rblStatus.SelectedValue == null ? 0 : Convert.ToInt32(rblStatus.SelectedValue);
            model.url = txtUrl.Text;
            model.type = txtState.Text;
            model.createdate = DateTime.Now;
            model.userId = GetAdminInfo().id;
            if (!string.IsNullOrEmpty(hdID.Value))
            {
                //修改
                model.id = Convert.ToInt32(hdID.Value);
                bool b = bll.Update(model);
                JscriptMsg("更新信息成功！", "index.aspx?channel_id=20");

            }
            else
            {
                int b = bll.Add(model);
                JscriptMsg("添加信息成功！", "index.aspx?channel_id=20");

            }

           


        }
    }
}