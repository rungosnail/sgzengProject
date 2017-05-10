using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.admin.starexpert
{
    public partial class Edit : Web.UI.ManagePage
    {
        public BLL.starexpert bll = new BLL.starexpert();
        public int _channel_id = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TreeBind(); //绑定类别
                Bindinfo(DTRequest.GetQueryInt("id", 0));

            }
        }

        private void TreeBind()
        {
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, _channel_id);

            this.ddlCategoryId.Items.Clear();
            this.ddlCategoryId.Items.Add(new ListItem("请选择类别...", ""));
            foreach (DataRow dr in dt.Rows)
            {
                string Id = dr["id"].ToString();
                int ClassLayer = int.Parse(dr["class_layer"].ToString());
                string Title = dr["title"].ToString().Trim();

                if (ClassLayer == 1)
                {
                    this.ddlCategoryId.Items.Add(new ListItem(Title, Id));
                }
                else
                {
                    Title = "├ " + Title;
                    Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
                    this.ddlCategoryId.Items.Add(new ListItem(Title, Id));
                }
            }
        }

        /// <summary>
        /// 保存操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Model.starexpert model = new Model.starexpert();
            model.category_id = Convert.ToInt32(ddlCategoryId.SelectedValue);
            model.name = txtName.Text.Trim();
            model.img_url = txtImgUrl.Text.Trim();
            model.job_occupation = txtjob_occupation.Text.Trim();
            model.linkphone = txtlinkphone.Text.Trim();
            model.linkprice = txtlinkprice.Text.Trim() == "" ? 0 : Convert.ToDecimal(txtlinkprice.Text.Trim());
            model.aboutdesc = txtaboutdesc.InnerText.Trim();
            model.status = Convert.ToInt32(rblStatus.SelectedValue);
            model.createdate = DateTime.Now;
            model.createuser = GetAdminInfo().id;
            model.channel_id = _channel_id;
            model.type = Convert.ToInt32(cblItem.SelectedValue);
            if (!string.IsNullOrEmpty(hdID.Value))
            {
                model.id = Convert.ToInt32(hdID.Value);
                bll.Update(model);
                JscriptMsg("更新信息成功！", "index.aspx?channel_id=10");
            }
            else
            {
                bll.Add(model);
                JscriptMsg("新增信息成功！", "index.aspx?channel_id=10");
            }


        }

        /// <summary>
        /// 赋值
        /// </summary>
        public void Bindinfo(int id)
        {
            Model.starexpert model = new Model.starexpert();
            model = bll.GetModel(id);
            if (model != null)
            {
                ddlCategoryId.SelectedValue = model.category_id.ToString();
                txtName.Text = model.name;
                txtImgUrl.Text = model.img_url;
                txtjob_occupation.Text = model.job_occupation;
                txtlinkphone.Text = model.linkphone;
                txtlinkprice.Text = model.linkprice.ToString();
                txtaboutdesc.InnerText = model.aboutdesc;
                rblStatus.SelectedValue = model.status == null ? "" : model.status.ToString();
                hdID.Value = model.id.ToString();
                cblItem.SelectedValue = model.type == null ? "" : model.type.ToString();
            }
        }
    }
}