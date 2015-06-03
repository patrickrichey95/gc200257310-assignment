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
            //declaring required variables, array to hold each user control
            Game[] games = new Game[4] {game1, game2, game3, game4};
            int wins = 0;
            int losses = 0;
            decimal wlRatio = 0;
            int totalScored = 0;
            int totalAllowed = 0;
            int ptRatio = 0;
            int totalSpectators = 0;
            int averageSpectators = 0;

            //check games won
            for (int i=0; i <= 3; i++)//cycle through array of user controls
            {
                if(games[i].getWin == 0) //if win is selected
                {
                    wins++; //increment number of wins
                }
                else //if lose is selected
                {
                    losses++; //increment number of losses
                }

                totalScored += games[i].getScored; //get scored for each game
                totalAllowed += games[i].getAllowed; //get allowed for each game
                totalSpectators += games[i].getSpectators; //get spectators for each game
            }

            //calculate win percentage, point differential, and average spectators
            wlRatio = (decimal)wins / 4;
            ptRatio = totalScored - totalAllowed;
            averageSpectators = totalSpectators / 4;

            //print out the summary for each stat
            lblGamesWon.Text = wins.ToString();
            lblGamesLost.Text = losses.ToString();
            lblWinPercent.Text = wlRatio.ToString();
            lblTotalScored.Text = totalScored.ToString();
            lblTotalAllowed.Text = totalAllowed.ToString();
            lblPointRatio.Text = ptRatio.ToString();
            lblTotalSpectators.Text = totalSpectators.ToString();
            lblAvgSpectators.Text = averageSpectators.ToString();

            //set the panel to visible
            pnlSummary.Visible = true;
        }
    }
}