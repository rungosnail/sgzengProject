using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.web
{
    public partial class UserInfo : BasePage
    {
        public Model.users userModel = new Model.users();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                userModel = GetUserInfo();
            }
        }
    }
}