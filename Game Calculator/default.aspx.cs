using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game_Calculator
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSummary_Click(object sender, EventArgs e)
        {
            Game[] games = new Game[4] {game1, game2, game3, game4};
            int wins = 0;
            int losses = 0;
            int wlRatio = 0;
            int totalScored = 0;
            int totalAllowed = 0;
            int ptRatio = 0;
            int totalSpectators = 0;
            int averageSpectators = 0;

            //check games won
            for (int i=0; i <= 3; i++)
            {
                if(games[i].getWin == 0)
                {
                    wins++;
                }
                else
                {
                    losses++;
                }

                totalScored += games[i].getScored;
                totalAllowed += games[i].getAllowed;
                totalSpectators += games[i].getSpectators;
            }

            wlRatio = wins / 4;
            ptRatio = totalScored - totalAllowed;
            averageSpectators = totalSpectators / 4;

            lblGamesWon.Text = wins.ToString();
            lblGamesLost.Text = losses.ToString();
            lblWinPercent.Text = wlRatio.ToString();
            lblTotalScored.Text = totalScored.ToString();
            lblTotalAllowed.Text = totalAllowed.ToString();
            lblPointRatio.Text = ptRatio.ToString();
            lblTotalSpectators.Text = totalSpectators.ToString();
            lblAvgSpectators.Text = averageSpectators.ToString();
        }
    }
}