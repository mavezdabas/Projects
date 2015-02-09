﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;
using System.Windows.Input;
using EquityTradingApplication.Commands;
using EquityTradingApplication.Helpers;
using AutoMapper;
using EquityTradingApplication.ApplicationHelper;
using System.Windows;

namespace EquityTradingApplication.ViewModels
{
    class ViewEquityOrderViewModel:ViewModelBase,IUserControlViewModel
    {
       // public event RequestCloseEventHandler RequestCloseDialog;
        public event EquityTradingApplication.Helpers.CustomEventHelper.RequestCloseEventHandler RequestCloseDialog;
        private ExceptionHandler ex;
        private OrderModel orderModel;
        private SecurityModel securityModel;
        private IPortfolioDAL portfolioDAL;
        private IUserDAL userDAL;
        private ModelDialogService dialogService;
        public ViewEquityOrderViewModel(OrderModel orderModel)
        {

            dialogService = new ModelDialogService();
            
             

            userDAL = new UserDAL();
            portfolioDAL = new PortfolioDAL();
            //Order order = portfolioDAL.GetOrderByID(19);
            //Mapper.CreateMap<Order, OrderModel>();
            //orderModel = Mapper.Map<Order, OrderModel>(order);
            Mapper.CreateMap<OrderModel, Order>();
            Mapper.CreateMap<Security, SecurityModel>();
            this.orderModel = orderModel;
           securitySymbolList = portfolioDAL.GetAllSecuritySymbols();


            securityModel = Mapper.Map<Security, SecurityModel>(portfolioDAL.GetSecurityByID(orderModel.SecurityID));
            if (orderModel.Side.Equals(EnumSide.Sell.ToString()))
                IsSellSideSelected = true;
            if (orderModel.OrderQualifier.Equals(EnumOrderQualifier.GTD.ToString()))
                isOrderQualifierGTDSelected = true;
            if (orderModel.AccountType.Equals(EnumAccountType.Margin.ToString()))
                isAccountTypeMarginSelected = true;

            orderModel.PortfolioID = ApplicationState.GetValue<int>("portfolioId");
            orderModel.ClientID = ApplicationState.GetValue<int>("clientId");
            orderModel.ManagerID = ApplicationState.GetValue<int>("currentUserId"); //Aakanksha Adding here
        }

       

        private bool viewWindowVisible = true;

        public bool ViewWindowVisible
        {
            get
            {
                return viewWindowVisible;
            }

            set
            {
                viewWindowVisible = value;
                RaisePropertyChanged("ViewWindowVisible");
            }
        }

        private bool deleteButtonVisible = true;

        public bool DeleteButtonVisible
        {
            get
            {
                return deleteButtonVisible;
            }

            set
            {
                deleteButtonVisible = value;
                RaisePropertyChanged("DeleteButtonVisible");
            }
        }


        private bool updateButtonVisible = true;

        public bool UpdateButtonVisible
        {
            get
            {
                return updateButtonVisible;
            }

            set
            {
                updateButtonVisible = value;
                RaisePropertyChanged("UpdateButtonVisible");
            }
        }

        private bool updateWindowVisible = false;

        public bool UpdateWindowVisible
        {
            get
            {
                return updateWindowVisible;
            }

            set
            {
                updateWindowVisible = value;
                RaisePropertyChanged("UpdateWindowVisible");
            }
        }

        private bool amendWindowVisible = false;

        public bool AmendWindowVisible
        {
            get
            {
                return amendWindowVisible;
            }

            set
            {
                amendWindowVisible = value;
                RaisePropertyChanged("AmendWindowVisible");
            }
        }


        private int ownedQuantity;
        public int OwnedQuantity
        {
            get
            {
                if (securityModel != null)
                    securityModel.SecurityID = portfolioDAL.GetSecurityIDByName(SecurityName);
                ownedQuantity = portfolioDAL.GetAllocatedQuantityBySecurityID(securityModel.SecurityID, orderModel.PortfolioID);
                return ownedQuantity;
            }
            set
            {
                ownedQuantity = value;
                RaisePropertyChanged("OwnedQuantity");
            }
        }
        private List<string> securitySymbolList;
        public List<string> SecuritySymbolList
        {
            get
            {
                return securitySymbolList;
            }
        }

        private bool isSellSideSelected;
        public bool IsSellSideSelected
        {
            get
            {
                return isSellSideSelected;
            }

            set
            {
                isSellSideSelected = value;
                RaisePropertyChanged("IsSellSideSelected");
            }
        }



        private bool isAccountTypeMarginSelected;
        public bool IsAccountTypeMarginSelected
        {
            get
            {
                return isAccountTypeMarginSelected;
            }

            set
            {
                isAccountTypeMarginSelected = value;
                RaisePropertyChanged("IsAccountTypeMarginSelected");
            }
        }

        private bool isOrderQualifierGTDSelected;
        public bool IsOrderQualifierGTDSelected
        {
            get
            {
                return isOrderQualifierGTDSelected;
            }

            set
            {
                isOrderQualifierGTDSelected = value;
                RaisePropertyChanged("IsOrderQualifierGTDSelected");
            }
        }



        public int OrderId
        {
            get
            {
                return orderModel.OrderID;
            }
           
        }

        public string SecuritySymbol
        {
            get
            {
                return securityModel.SecuritySymbol;
            }
            set
            {
                securityModel.SecuritySymbol = value;
                SecurityName = portfolioDAL.GetSecurityNameBySymbol(SecuritySymbol);
                if (securityModel != null)
                    securityModel.SecurityID = portfolioDAL.GetSecurityIDByName(SecurityName);
                OwnedQuantity = portfolioDAL.GetAllocatedQuantityBySecurityID(securityModel.SecurityID, orderModel.PortfolioID);
                RaisePropertyChanged("SecuritySymbol");
                
            }
        }

        private ICommand lookUpCommand;
        public ICommand LookupCommand
        {
            get
            {
                if (lookUpCommand == null)
                    lookUpCommand = new RelayCommand(p => LookUpSymbol());
                return lookUpCommand;
                
            }
           
        }

        private void LookUpSymbol()
        {
           
        }

        public string SecurityName
        {
            get
            {
               
                return securityModel.SecurityName;
            }
            set
            {
                securityModel.SecurityName = value;
                RaisePropertyChanged("SecurityName");
                
            }
        }

       

        private List<string> listTraders;
        public List<string> ListTraders
        {
            get
            {
                listTraders = userDAL.GetAllTraderNames();
                return listTraders;
            }
            
            
        }

        private List<string> listOrderTypes;
        public List<string> ListOrderTypes
        {
            get
            {

                Array orderTypesArray = Enum.GetValues(typeof(EnumOrderTypes));
                listOrderTypes = new List<string>();
                for (int i = 0; i < orderTypesArray.Length; i++)
                {
                    listOrderTypes.Add(orderTypesArray.GetValue(i).ToString());
                }



                return listOrderTypes;
            }

        } 

       

        public int OpenQuantity
        {
            get
            {
                return orderModel.OpenQuantity;
            }
            set
            {
                orderModel.OpenQuantity = value;
                RaisePropertyChanged("OpenQuantity");
            }
        }

        public decimal? StopPrice
        {
            get
            {
                return orderModel.StopPrice;
            }
            set
            {
                orderModel.StopPrice = value;
                RaisePropertyChanged("StopPrice");
            }
        }

        public decimal? LimitPrice
        {
            get
            {
                return orderModel.LimitPrice;
            }
            set
            {
                orderModel.LimitPrice = value;
                RaisePropertyChanged("LimitPrice");
            }
        }

        public string Notes
        {
            get
            {
                return orderModel.Notes;
            }
            set
            {
                orderModel.Notes = value;
                RaisePropertyChanged("Notes");
            }
        }

        public bool? Notify
        {
            get
            {
                return orderModel.Notify;
            }
            set
            {
                orderModel.Notify = value;
                RaisePropertyChanged("Notify");
            }
        }


        public string OrderType
        {
            get
            {
                return orderModel.OrderType;
            }
            set
            {
                orderModel.OrderType = value;
                if(OrderType.Equals("Market"))
                {
                    StopPrice=null;
                    LimitPrice=null;
                }
                
                RaisePropertyChanged("OrderType");

            }
        }

        private ICommand saveCommand;
        public ICommand SaveCommand
        {
            get {
                if (saveCommand == null)
                    saveCommand = new RelayCommand(p => SaveOrder());
                return saveCommand;
                }
        }

        private void SaveOrder()
        {

            try
            {
                bool validOrder = ValidateOrder();
                if (validOrder == true)
                {

                    if (IsSellSideSelected == false)
                        orderModel.Side = EnumSide.Buy.ToString();
                    else
                        orderModel.Side = EnumSide.Sell.ToString();
                    if (isAccountTypeMarginSelected == false)
                        orderModel.AccountType = EnumAccountType.Cash.ToString();
                    else
                        orderModel.AccountType = EnumAccountType.Margin.ToString();
                    if (isOrderQualifierGTDSelected == false)
                        orderModel.OrderQualifier = EnumOrderQualifier.GTC.ToString();
                    else
                        orderModel.OrderQualifier = EnumOrderQualifier.GTD.ToString();
                    //orderModel.PortfolioID = 1;
                    orderModel.SecurityID = portfolioDAL.GetSecurityIDByName(SecurityName);
                    //orderModel.ClientID = 1;
                    //orderModel.ManagerID = 3;
                    orderModel.TotalQuantity = OpenQuantity;
                    //if(orderModel)
                    Order orderDAO = Mapper.Map<OrderModel, Order>(orderModel);
                    portfolioDAL.UpdateOrder(orderDAO);

                    if (RequestCloseDialog != null)
                        RequestCloseDialog(new EquityTradingApplication.Helpers.CustomEventHelper.RequestCloseEventArgs(false));
                }
            }
            catch (Exception)
            {

                ex = new ExceptionHandler(codes.GenericException);
            }
             }


        private bool ValidateOrder()
        {
            string errorString = "";
            ErrorCodeHashMap hashMap = ErrorCodeHashMap.GetInstance();

            if (string.IsNullOrEmpty(SecuritySymbol))
            {
                errorString += "\n";
                errorString += hashMap.hash[codes.SecuritySymbolNull];

            }
            if ((!string.IsNullOrEmpty(SecuritySymbol)))
            {
                if (!(securitySymbolList.Contains(SecuritySymbol)))
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.SecuritySymbolDoesNotExist];
                }
            }
            if (string.IsNullOrEmpty(SecurityName))
            {
                errorString += "\n";
                errorString += hashMap.hash[codes.SecurityNameNull];

            }

            if (string.IsNullOrEmpty(OrderType))
            {
                errorString += "\n";
                errorString += hashMap.hash[codes.OrderTypeNull];

            }
            if (OpenQuantity == 0)
            {
                errorString += "\n";
                errorString += hashMap.hash[codes.QuantityZero];

            }
            if (OrderType.Equals("Stop"))
            {
                if (StopPrice == null)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.StopPriceNull];
                }
                if (StopPrice == 0)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.StopPriceZero];
                }
            }

            if (OrderType.Equals("Limit"))
            {
                if (LimitPrice == null)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.LimitPriceNull];

                }
                if (LimitPrice == 0)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.LimitPriceZero];
                }
            }


            if (OrderType.Equals("StopLimit"))
            {
                if (StopPrice == null)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.StopPriceNull];
                }
                if (StopPrice == 0)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.StopPriceZero];
                }
                if (LimitPrice == null)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.LimitPriceNull];
                }
                if (LimitPrice == 0)
                {
                    errorString += "\n";
                    errorString += hashMap.hash[codes.LimitPriceZero];
                }
            }




            if (string.IsNullOrEmpty(errorString))
                return true;
            else
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler(errorString);
                return false;
            }
        }

        private ICommand cancelCommand;
        public ICommand CancelCommand
        {
            get {
                if (cancelCommand == null)
                    cancelCommand = new RelayCommand(p => CancelOrder());
                return cancelCommand;
                }
        }

        private void CancelOrder()
        {
            try
            {

                if (RequestCloseDialog != null)
                    RequestCloseDialog(new EquityTradingApplication.Helpers.CustomEventHelper.RequestCloseEventArgs(false));
            }
            catch (Exception)
            {

                ex = new ExceptionHandler(codes.GenericException);
            }
        }


        private string selectedTraderName;
        string IUserControlViewModel.SelectedTraderName
        {
            get
            {
                selectedTraderName = userDAL.GetTraderNameByTraderID(orderModel.ManagerID);
                return selectedTraderName;
            }
            set
            {

            }
        }

        private string status;
        public string Status
        {
            get { status = ((EnumStatus)orderModel.StatusID).ToString();
            return status;
            }
        }

        private ICommand updateComamnd;
        public ICommand UpdateCommand
        {
            get
            {
                if (updateComamnd == null)
                    updateComamnd = new RelayCommand(p => OpenAmendOrEditOrderWindow());
                return updateComamnd;
            }
        }
        private void OpenAmendOrEditOrderWindow()
        {
            ViewWindowVisible = false;
            UpdateButtonVisible = false;
            DeleteButtonVisible = false;
            if(Status.Equals(EnumStatus.New.ToString()))
            UpdateWindowVisible = true;
            if (Status.Equals(EnumStatus.Open.ToString()))
                AmendWindowVisible = true;
            //if (RequestCloseDialog != null)
            //    RequestCloseDialog(new EquityTradingApplication.Helpers.CustomEventHelper.RequestCloseEventArgs(true));
        }

        private ICommand deleteCommand;
        public ICommand DeleteCommand

        {
            get 
            {
                if (deleteCommand == null)
                    deleteCommand = new RelayCommand(p => Delete());
                return deleteCommand;
            }
        }

        private void Delete()
        {
            try
            {
                // var sName = portfolioDAL.GetStatusNameByID(orderModel.StatusID);

                Order orderDAO = Mapper.Map<OrderModel, Order>(orderModel);
                if (!(orderDAO.StatusID == 3))
                {
                    MessageBoxResult result = dialogService.MessageResultAlert("Are you sure you want to delete the order(s)?");
                    if (result == MessageBoxResult.Yes)
                    {

                        portfolioDAL.DeleteOrder(orderDAO);
                        if (RequestCloseDialog != null)
                            RequestCloseDialog(new EquityTradingApplication.Helpers.CustomEventHelper.RequestCloseEventArgs(false));
                    }
                }
                else
                    dialogService.MessageAlert("The order has already been sent for execution!");

            }
            catch (Exception)
            {

                ex = new ExceptionHandler(codes.GenericException);
            }
           
   

        }
    }


    }

