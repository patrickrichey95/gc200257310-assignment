using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game_Calculator
{
    public partial class Game : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int getWin //get method to retrieve radio button result
        {
            get
            {
                return rblResult.SelectedIndex;
            }
        }

        public int getScored //get method to retrieve scored result
        {
            get
            {
                return Int32.Parse(txtScored.Text);
            }
        }

        public int getAllowed //get method to retrieve allowed result
        {
            get
            {
                return Int32.Parse(txtAllowed.Text);
            }
        }

        public int getSpectators //get method to retrieve number of spectators
        {
            get
            {
                return Int32.Parse(txtSpectators.Text);
            }
        }
    }
}