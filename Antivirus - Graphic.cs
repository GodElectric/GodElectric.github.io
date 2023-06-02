using System;
using System.Windows.Forms;

namespace AntivirusGUI
{
    public class AntivirusForm : Form
    {
        private Button scanButton;
        private Label resultLabel;

        public AntivirusForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.scanButton = new System.Windows.Forms.Button();
            this.resultLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();

            // scanButton
            this.scanButton.Location = new System.Drawing.Point(12, 12);
            this.scanButton.Name = "scanButton";
            this.scanButton.Size = new System.Drawing.Size(75, 23);
            this.scanButton.Text = "Scan";
            this.scanButton.Click += new System.EventHandler(this.scanButton_Click);

            // resultLabel
            this.resultLabel.AutoSize = true;
            this.resultLabel.Location = new System.Drawing.Point(12, 50);
            this.resultLabel.Name = "resultLabel";
            this.resultLabel.Size = new System.Drawing.Size(0, 13);

            // AntivirusForm
            this.ClientSize = new System.Drawing.Size(200, 100);
            this.Controls.Add(this.scanButton);
            this.Controls.Add(this.resultLabel);
            this.Name = "AntivirusForm";
            this.Text = "Antivirus";
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        private void scanButton_Click(object sender, EventArgs e)
        {
            // Logika pro skenování souborů

            // Zobrazí výsledek skenování
            resultLabel.Text = "Soubor je bezpečný.";
        }

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new AntivirusForm());
        }
    }
}
