using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.web
{
    public partial class Usercenter : BasePage
    {
        public Model.users userModel = new Model.users();
        public Model.user_groups groupModel = new Model.user_groups();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetUserinfo();
            }
        }

        public void GetUserinfo()
        {
            //获得登录用户信息
           
            userModel = GetUserInfo();
            groupModel = new BLL.user_groups().GetModel(userModel.group_id);
            if (groupModel == null)
            {
                groupModel = new Model.user_groups();
            }

        }
    }
}