﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EquityTradingApplication.Views;
using EquityTradingApplication.View;
using System.Windows;
using ExecutionTraderMainWindow;
using ExecutionTraderMainWindow.Views;


namespace EquityTradingApplication.Helpers
{
    public interface IModelDialogService
    {
        void ShowDialog<TViewModel>(ViewType viewType, TViewModel viewModel,
            Action onDialogOKClose);
        void ShowDialog<TViewModel>(ViewType viewType, TViewModel viewModel,
            Action onDialogOKClose, Action onDialogCancelClose);
        void MessageAlert(string e);
        MessageBoxResult MessageResultAlert(string messageBoxText);
    }
  public  class ModelDialogService:IModelDialogService
    {
        public void ShowDialog<TViewModel>(ViewType viewType, TViewModel viewModel, Action onDialogOKClose)
        {
            Window view = null;

            switch(viewType)
            {
                case ViewType.HomePageView:
                    {
                        view = new HomePageView();
                        break;
                    }
                case ViewType.CreateOrderView:
                    view =new CreateOrderView();
                    break;
                
                case ViewType.DeleteOrderView:
                    view =new DeleteOrderView();
                    break;
                case ViewType.GraphView:
                    view=new GraphView() ;
                    break;
                
                case ViewType.PortfolioView:
                    view =new PortfolioView();
                    break;
                case ViewType.ViewOrderView:
                    view = new ViewEquityOrder();
                    break;
                case ViewType.SymbolView:
                    view = new SymbolListView();
                    break;
                case ViewType.ETLoginView:
                    view = new MainWindow();
                    break;

                case ViewType.ForgotPasswordView:
                    view= new ForgotPasswordView();
                    break;
                default: 
                    view =null;
                    break;

        }

             if (view != null)
            {
                if (viewModel != null)
                    view.DataContext = viewModel;
                if (onDialogOKClose != null)
                {
                    view.Closed += (s, e) => onDialogOKClose();
                }
                view.ShowDialog();
            }
        }



        public void ShowDialog<TViewModel>(ViewType viewType, TViewModel viewModel, Action onDialogOKClose, Action onDialogCancelClose)
        {
           Window view = null;

            switch(viewType)
            {
                case ViewType.HomePageView:
                    {
                        view = new HomePageView();
                        break;
                    }
                case ViewType.CreateOrderView:
                    view =new CreateOrderView();
                    break;

                
                case ViewType.DeleteOrderView:
                    view =new DeleteOrderView();
                    break;
                case ViewType.GraphView:
                    view=new GraphView() ;
                    break;
               
                default: 
                    view =null;
                    break;


        }

            if (view != null)
            {
                if (viewModel != null)
                    view.DataContext = viewModel;
                if (onDialogOKClose != null)
                {
                    view.Closed += (s, e) => onDialogOKClose();
                }
                if (onDialogCancelClose != null)
                {
                    view.Closed += (s, e) => onDialogCancelClose();
                }
                view.ShowDialog();
            }
        }

        public void MessageAlert(string e)
        {
            MessageBox.Show(e);
        }


        public MessageBoxResult MessageResultAlert(string messageBoxText)
        {
           // string messageBoxText = "Are you sure you want to delete the order(s)?";
            string caption = "Confirmation";
            MessageBoxButton button = MessageBoxButton.YesNo;
            MessageBoxImage icon = MessageBoxImage.Warning;



            MessageBoxResult result = MessageBox.Show(messageBoxText, caption, button, icon);

            return result;
        }
    }
}



