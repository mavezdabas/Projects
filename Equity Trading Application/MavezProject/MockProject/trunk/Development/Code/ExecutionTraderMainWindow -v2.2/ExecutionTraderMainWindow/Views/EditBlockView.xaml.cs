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
using ExecutionTraderMainWindow.Helpers;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using ExecutionTraderMainWindow.ViewModel;

namespace ExecutionTraderMainWindow.Views
{
    /// <summary>
    /// Interaction logic for EditBlockView.xaml
    /// </summary>
    public partial class EditBlockView : Window, IModalWindow
    {
        public EditBlockView()
        {
            InitializeComponent();
            this.DataContextChanged += new DependencyPropertyChangedEventHandler(EditBlockWindow_DataContextChanged);

        }
        void EditBlockWindow_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            ((EditBlockViewModel)DataContext).RequestCloseDialog += new RequestCloseEventHandler(EditBlockWindow_RequestCloseDialog);
        }

        void EditBlockWindow_RequestCloseDialog(RequestCloseEventArgs e)
        {
            this.DialogResult = e.DialogResult;
        }

        private void ExpanderCollapse(object sender, RoutedEventArgs e)
        {
            EditBlockDataGrid.RowDetailsVisibilityMode = DataGridRowDetailsVisibilityMode.Collapsed;
        }

        private void ExpanderExpanded(object sender, RoutedEventArgs e)
        {
            EditBlockDataGrid.RowDetailsVisibilityMode = DataGridRowDetailsVisibilityMode.VisibleWhenSelected;
        }

        private void RemoveOrderClick(object sender, RoutedEventArgs e)
        {
            ButtonAutomationPeer peer = new ButtonAutomationPeer(HiddenRemoveOrderButton);
            IInvokeProvider invokeProv = (IInvokeProvider)peer.GetPattern(PatternInterface.Invoke);
            invokeProv.Invoke();
        }
        
        private void DataGrid_TargetUpdated(object sender, DataTransferEventArgs e)
        {
              ButtonAutomationPeer peer = new ButtonAutomationPeer(HiddenChangePriceMessageBoxCommandRunner);
            IInvokeProvider invokeProv = (IInvokeProvider)peer.GetPattern(PatternInterface.Invoke);
            invokeProv.Invoke();
        
        }
    }
}
