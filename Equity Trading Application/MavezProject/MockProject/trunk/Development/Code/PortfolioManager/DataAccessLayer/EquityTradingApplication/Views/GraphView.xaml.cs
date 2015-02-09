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
using System.Diagnostics;
using EquityTradingApplication.ViewModels;

namespace EquityTradingApplication.Views
{
    /// <summary>
    /// Interaction logic for GraphView.xaml
    /// </summary>
    public partial class GraphView : Window,IModelWindow
    {
        Stopwatch stopWatch;
        GraphViewModel vModel;
        private long lastUpdateMilliSeconds;

        public GraphView()
        {
            stopWatch = new Stopwatch();
            stopWatch.Start();
            CompositionTarget.Rendering += new EventHandler(CompositionTarget_Rendering);

            InitializeComponent();
            vModel = new GraphViewModel();
            vModel.RequestCloseDialog += new CustomEventHelper.RequestCloseEventHandler(vModel_RequestCloseDialog);
            this.DataContext = vModel;
            Plot1.DataContext = vModel.Graph;
        }

        void vModel_RequestCloseDialog(CustomEventHelper.RequestCloseEventArgs e)
        {
            this.DialogResult = e.DialogResult;
        }


        void CompositionTarget_Rendering(object sender, EventArgs e)
        {
            if (stopWatch.ElapsedMilliseconds > lastUpdateMilliSeconds + 7000)
            {
                vModel.UpdateModel();
                Plot1.InvalidatePlot();
                lastUpdateMilliSeconds = stopWatch.ElapsedMilliseconds;
            }
        }

        private void graphWin_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
    }
}
