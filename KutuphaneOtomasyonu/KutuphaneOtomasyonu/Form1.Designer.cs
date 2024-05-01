namespace KutuphaneOtomasyonu
{
    partial class formAnaSayfa
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(formAnaSayfa));
            this.btnOgrenci = new System.Windows.Forms.Button();
            this.btnKitap = new System.Windows.Forms.Button();
            this.btnTur = new System.Windows.Forms.Button();
            this.btnOdunc = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnOgrenci
            // 
            this.btnOgrenci.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnOgrenci.BackgroundImage")));
            this.btnOgrenci.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnOgrenci.Location = new System.Drawing.Point(243, 40);
            this.btnOgrenci.Name = "btnOgrenci";
            this.btnOgrenci.Size = new System.Drawing.Size(170, 75);
            this.btnOgrenci.TabIndex = 0;
            this.btnOgrenci.UseVisualStyleBackColor = true;
            this.btnOgrenci.Click += new System.EventHandler(this.btnOgrenci_Click);
            // 
            // btnKitap
            // 
            this.btnKitap.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnKitap.BackgroundImage")));
            this.btnKitap.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnKitap.Location = new System.Drawing.Point(23, 40);
            this.btnKitap.Name = "btnKitap";
            this.btnKitap.Size = new System.Drawing.Size(170, 75);
            this.btnKitap.TabIndex = 1;
            this.btnKitap.UseVisualStyleBackColor = true;
            this.btnKitap.Click += new System.EventHandler(this.btnKitap_Click);
            // 
            // btnTur
            // 
            this.btnTur.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnTur.BackgroundImage")));
            this.btnTur.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnTur.Location = new System.Drawing.Point(23, 146);
            this.btnTur.Name = "btnTur";
            this.btnTur.Size = new System.Drawing.Size(170, 75);
            this.btnTur.TabIndex = 2;
            this.btnTur.UseVisualStyleBackColor = true;
            this.btnTur.Click += new System.EventHandler(this.btnTur_Click);
            // 
            // btnOdunc
            // 
            this.btnOdunc.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnOdunc.BackgroundImage")));
            this.btnOdunc.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnOdunc.Location = new System.Drawing.Point(243, 146);
            this.btnOdunc.Name = "btnOdunc";
            this.btnOdunc.Size = new System.Drawing.Size(170, 75);
            this.btnOdunc.TabIndex = 3;
            this.btnOdunc.UseVisualStyleBackColor = true;
            this.btnOdunc.Click += new System.EventHandler(this.btnOdunc_Click);
            // 
            // formAnaSayfa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(434, 261);
            this.Controls.Add(this.btnOdunc);
            this.Controls.Add(this.btnTur);
            this.Controls.Add(this.btnKitap);
            this.Controls.Add(this.btnOgrenci);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "formAnaSayfa";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Kütüphane Projesi";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnOgrenci;
        private System.Windows.Forms.Button btnKitap;
        private System.Windows.Forms.Button btnTur;
        private System.Windows.Forms.Button btnOdunc;
    }
}

