﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using EquityTradingApplication.Helpers;
using EquityTradingApplication.ViewModels;
using System.Threading;

namespace EquityTradingApplication.Views
{
    /// <summary>
    /// Interaction logic for HomePageView.xaml
    /// </summary>
    public partial class HomePageView :Window,IModelWindow
    {
       HomePageViewModel vModel;
         public HomePageView()
        {
            InitializeComponent();
           // Thread.Sleep(2000);

            vModel = new HomePageViewModel();
           
            accountList.DataContext = vModel.Brushes;
            vModel.RequestCloseDialog += new Action(vModel_RequestCloseDialog);
           
           
        }

         void vModel_RequestCloseDialog()
         {
             this.Visibility = Visibility.Hidden;
         }

       
    }
}
