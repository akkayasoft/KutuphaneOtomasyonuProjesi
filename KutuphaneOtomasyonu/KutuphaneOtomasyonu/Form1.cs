using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KutuphaneOtomasyonu
{
    public partial class formAnaSayfa : Form
    {
        public formAnaSayfa()
        {
            InitializeComponent();
        }

        private void btnOgrenci_Click(object sender, EventArgs e)
        {
            formOgrenci ogrenci = new formOgrenci();
            ogrenci.ShowDialog();
        }

        private void btnKitap_Click(object sender, EventArgs e)
        {
            formKitap kitap= new formKitap();
            kitap.ShowDialog();
        }

        private void btnTur_Click(object sender, EventArgs e)
        {
            formKitapTur kitapTur= new formKitapTur();
            kitapTur.ShowDialog();
        }

        private void btnOdunc_Click(object sender, EventArgs e)
        {
            formOduncKitap oduncKitap= new formOduncKitap();
            oduncKitap.ShowDialog();
        }
    }
}
