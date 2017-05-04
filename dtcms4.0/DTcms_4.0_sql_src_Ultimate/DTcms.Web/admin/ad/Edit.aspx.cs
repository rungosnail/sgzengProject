using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.Model;
using DTcms.BLL;

namespace DTcms.Web.admin.ad
{
    public partial class Edit : Web.UI.ManagePage
    {
        BLL.advertisementBll bll = new advertisementBll();
        protected void Page_Load(object sender, EventArgs e)
        {

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

            }
            else
            {
                int b = bll.Add(model);

            }




        }
    }
}