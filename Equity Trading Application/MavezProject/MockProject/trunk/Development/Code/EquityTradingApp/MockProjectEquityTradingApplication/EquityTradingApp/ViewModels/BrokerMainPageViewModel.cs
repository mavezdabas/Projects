﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using EquityTradingApp.Helpers;
using EquityTradingApp.Command;
using System.Collections.ObjectModel;
using EquityTradingApp.Models;
using AutoMapper;
using System.ComponentModel;
using DataAccessLayer;
using DataAccessLayer.DAL.ExecutionBrokerDAL;



namespace EquityTradingApp.ViewModels
{
    class BrokerMainPageViewModel : IEquityModelHelper, INotifyPropertyChanged
    {
        public event RequestCloseEventHandler RequestCloseDialog;
        private IModalDialogService dialogService;
        SecurityConfigurationDetailsServiceReference.SecurityConfigurationDetailsClient obj;
        private byte maxExecutionInterval;

        public byte MaxExecutionInterval
        {
            get { return maxExecutionInterval; }
            set { maxExecutionInterval = value; }
        }

        //ServiceReference1.Service1Client client;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void RaisePropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this,
                    new PropertyChangedEventArgs(propertyName));
        }

        //private ObservableCollection<LoginWindowModel> serviceConfigurationCollection;
        //public ObservableCollection<LoginWindowModel> ServiceConfigurationCollection
        //{
        //    get { return serviceConfigurationCollection; }
        //    set 
        //    { 
        //        serviceConfigurationCollection = value;
        //        RaisePropertyChanged("ServiceConfigurationCollection");
        //    }
        //}


        public BrokerMainPageViewModel()
        {

            obj = new SecurityConfigurationDetailsServiceReference.SecurityConfigurationDetailsClient();
            //client = new ServiceReference1.Service1Client();
            Mapper.CreateMap<SecurityConfigurationDetail, EquityTradingApp.Models.LoginWindowModel>();
            dalObj = new SecurityConfigurationDAL();
            securities = new ObservableCollection<Security>();
            LoadCollection();

            //LoadConfigDetails();
        }

        //private void LoadConfigDetails()
        //{
        //    ServiceConfigurationCollection = new ObservableCollection<LoginWindowModel>();
        //    var r = obj.GetData();
        //    //var r = client.GetData();
        //    foreach (var item in r)
        //    {
        //        ServiceConfigurationCollection.Add(Mapper.Map<SecurityConfigurationDetail, EquityTradingApp.Models.LoginWindowModel>(item));
        //    }
        //}

        //private ICommand radioButtonExecuteCommand;

        //public ICommand RadioButtonExecuteCommand
        //{
        //    get
        //    {
        //        if (radioButtonExecuteCommand == null)
        //            radioButtonExecuteCommand = new RelayCommand(p => ExecuteTheService());
        //        return radioButtonExecuteCommand;
        //    }
        //}

        //private void ExecuteTheService()
        //{

        //    LoadConfigDetails();
        //}

        private ICommand securityCommand;
        public ICommand SecurityCommand
        {
            get
            {
                if (securityCommand == null)
                    securityCommand = new RelayCommand(p => LoadSecurities());
                return securityCommand;
            }
        }

        private void LoadSecurities()
        {
            //BrokerMainPageViewModel configViewModel = new BrokerMainPageViewModel();
            //dialogService = new ModalDialogService();
            //dialogService.ShowDialog<ConfigurationWindowViewModel>
            //    (ViewTypes.ConfigurationWindow, configViewModel, () => LoadEmployees());

            if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count != 0)
            {
                SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>() { config.SecurityConfigurationDetails.FirstOrDefault() };
            }
            else
            {
                var temporarySecurityConfiguration = new SecurityConfigurationDetail();
                temporarySecurityConfiguration.SecurityID = config.SecurityID;
                SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>() { temporarySecurityConfiguration };

                //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
            }
        }

        //private void LoadEmployees()
        //{

        //}

        private ISecurityConfigurationDAL dalObj;
        private ObservableCollection<Security> securities;

        public ObservableCollection<Security> Securities
        {
            get { return securities; }
            set
            {
                securities = value;
                RaisePropertyChanged("Securities");
            }
        }

        public Security security { get; set; }

        private Security config;
        public Security Config
        {
            get { return config; }
            set
            {
                config = value;
                //if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count!=0)
                //{
                //    SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>() { config.SecurityConfigurationDetails.FirstOrDefault() };
                //}
                //else
                //{
                //    SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>();
                //    //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
                //}
            }
        }

        private ObservableCollection<SecurityConfigurationDetail> securityConfig;

        public ObservableCollection<SecurityConfigurationDetail> SecurityConfig
        {
            get { return securityConfig; }
            set
            {
                securityConfig = value;
                RaisePropertyChanged("SecurityConfig");
            }
        }



        //public void ConfigurationWindowViewModel()
        //{
        //    //Mapper.CreateMap<Security, Security>();
        //    dalObj = new SecurityConfigurationDAL();
        //    securities = new ObservableCollection<Security>();
        //    LoadCollection();
        //    //dalObj.LoadConfigurationDetails();
        //}

        public void LoadCollection()
        {
            if (Securities != null)
                Securities.Clear();
            (dalObj.GetSecurities()).ForEach(security => Securities.Add(security));
        }

        private ICommand saveCommand;
        public ICommand SaveCommand
        {
            get
            {
                if (saveCommand == null)
                    saveCommand = new RelayCommand(p => DoSave());
                return saveCommand;
            }
        }

        private void DoSave()
        {
            if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count != 0)
                dalObj.UpdateSecurityConfig(config.SecurityConfigurationDetails.FirstOrDefault());
            else
            {
                //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
                //var securityConfig = SecurityConfig.FirstOrDefault();
                //securityConfig.SecurityID = config.SecurityID;
                var executionIntervalArray = new byte[10];
                executionIntervalArray[0] = MaxExecutionInterval;
                SecurityConfig.FirstOrDefault().MaxExecutionInterval = executionIntervalArray;
                dalObj.AddSecurityConfig(SecurityConfig.FirstOrDefault());
            }
            LoadCollection();
            //if (RequestCloseDialog != null)
            //    RequestCloseDialog(new RequestCloseEventArgs(true));
        }

        private ICommand cancelCommand;
        public ICommand CancelCommand
        {
            get
            {
                if (cancelCommand == null)
                    cancelCommand = new RelayCommand(p => DoCancel());
                return cancelCommand;
            }
        }

        private void DoCancel()
        {
            if (RequestCloseDialog != null)
                RequestCloseDialog(new RequestCloseEventArgs(false));
        }

        private ICommand executeBlockCommand;

        public ICommand ExecuteBlockCommand
        {
            get
            {
                if (executeBlockCommand == null)
                    executeBlockCommand = new RelayCommand(p => TurnOnExecution());
                return executeBlockCommand;
            }

        }

        private void TurnOnExecution()
        {

            ExecuteBlockServiceReference.ExecuteBlockServiceClient executeServiceClient = new ExecuteBlockServiceReference.ExecuteBlockServiceClient();
            executeServiceClient.PollingAsync();

        }

    }
    //class BrokerMainPageViewModel : IEquityModelHelper, INotifyPropertyChanged
    //{
    //    public event RequestCloseEventHandler RequestCloseDialog;
    //    private IModalDialogService dialogService;
    //    SecurityConfigurationDetailsServiceReference.SecurityConfigurationDetailsClient obj;
    //    private byte maxExecutionInterval;

    //    public byte MaxExecutionInterval
    //    {
    //        get { return maxExecutionInterval; }
    //        set { maxExecutionInterval = value; }
    //    }
        
    //    //ServiceReference1.Service1Client client;

    //    public event PropertyChangedEventHandler PropertyChanged;

    //    protected virtual void RaisePropertyChanged(string propertyName)
    //    {
    //        if (PropertyChanged != null)
    //            PropertyChanged(this,
    //                new PropertyChangedEventArgs(propertyName));
    //    }

    //    //private ObservableCollection<LoginWindowModel> serviceConfigurationCollection;
    //    //public ObservableCollection<LoginWindowModel> ServiceConfigurationCollection
    //    //{
    //    //    get { return serviceConfigurationCollection; }
    //    //    set 
    //    //    { 
    //    //        serviceConfigurationCollection = value;
    //    //        RaisePropertyChanged("ServiceConfigurationCollection");
    //    //    }
    //    //}


    //    public BrokerMainPageViewModel()
    //    {

    //        obj = new SecurityConfigurationDetailsServiceReference.SecurityConfigurationDetailsClient();
    //        //client = new ServiceReference1.Service1Client();
    //        Mapper.CreateMap<SecurityConfigurationDetail, EquityTradingApp.Models.LoginWindowModel>();
    //        dalObj = new SecurityConfigurationDAL();
    //        securities = new ObservableCollection<Security>();
    //        LoadCollection();

    //        //LoadConfigDetails();
    //    }

    //    //private void LoadConfigDetails()
    //    //{
    //    //    ServiceConfigurationCollection = new ObservableCollection<LoginWindowModel>();
    //    //    var r = obj.GetData();
    //    //    //var r = client.GetData();
    //    //    foreach (var item in r)
    //    //    {
    //    //        ServiceConfigurationCollection.Add(Mapper.Map<SecurityConfigurationDetail, EquityTradingApp.Models.LoginWindowModel>(item));
    //    //    }
    //    //}

    //    //private ICommand radioButtonExecuteCommand;

    //    //public ICommand RadioButtonExecuteCommand
    //    //{
    //    //    get
    //    //    {
    //    //        if (radioButtonExecuteCommand == null)
    //    //            radioButtonExecuteCommand = new RelayCommand(p => ExecuteTheService());
    //    //        return radioButtonExecuteCommand;
    //    //    }
    //    //}

    //    //private void ExecuteTheService()
    //    //{

    //    //    LoadConfigDetails();
    //    //}

    //    private ICommand securityCommand;
    //    public ICommand SecurityCommand
    //    {
    //        get
    //        {
    //            if (securityCommand == null)
    //                securityCommand = new RelayCommand(p => LoadSecurities());
    //            return securityCommand;
    //        }
    //    }

    //    private void LoadSecurities()
    //    {
    //        //BrokerMainPageViewModel configViewModel = new BrokerMainPageViewModel();
    //        //dialogService = new ModalDialogService();
    //        //dialogService.ShowDialog<ConfigurationWindowViewModel>
    //        //    (ViewTypes.ConfigurationWindow, configViewModel, () => LoadEmployees());

    //        if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count != 0)
    //        {
    //            SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>() { config.SecurityConfigurationDetails.FirstOrDefault() };
    //        }
    //        else
    //        {
    //            var temporarySecurityConfiguration = new SecurityConfigurationDetail();
    //            temporarySecurityConfiguration.SecurityID = config.SecurityID;
    //            SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>(){temporarySecurityConfiguration};
                
    //            //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
    //        }
    //    }
        
    //    //private void LoadEmployees()
    //    //{

    //    //}

    //    private ISecurityConfigurationDAL dalObj;
    //    public ObservableCollection<Security> securities { get; set; }
    //    public Security security { get; set; }

    //    private Security config;
    //    public Security Config
    //    {
    //        get { return config; }
    //        set
    //        {
    //            config = value;
    //            //if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count!=0)
    //            //{
    //            //    SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>() { config.SecurityConfigurationDetails.FirstOrDefault() };
    //            //}
    //            //else
    //            //{
    //            //    SecurityConfig = new ObservableCollection<SecurityConfigurationDetail>();
    //            //    //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
    //            //}
    //        }
    //    }

    //    private ObservableCollection<SecurityConfigurationDetail> securityConfig;

    //    public ObservableCollection<SecurityConfigurationDetail> SecurityConfig
    //    {
    //        get { return securityConfig; }
    //        set
    //        {
    //            securityConfig = value;
    //            RaisePropertyChanged("SecurityConfig");
    //        }
    //    }



    //    //public void ConfigurationWindowViewModel()
    //    //{
    //    //    //Mapper.CreateMap<Security, Security>();
    //    //    dalObj = new SecurityConfigurationDAL();
    //    //    securities = new ObservableCollection<Security>();
    //    //    LoadCollection();
    //    //    //dalObj.LoadConfigurationDetails();
    //    //}

    //    public void LoadCollection()
    //    {
    //        if (securities != null)
    //            securities.Clear();
    //        (dalObj.GetSecurities()).ForEach(security => securities.Add(security));
    //    }

    //    private ICommand saveCommand;
    //    public ICommand SaveCommand
    //    {
    //        get
    //        {
    //            if (saveCommand == null)
    //                saveCommand = new RelayCommand(p => DoSave());
    //            return saveCommand;
    //        }
    //    }

    //    private void DoSave()
    //    {
    //        if (config.SecurityConfigurationDetails != null && config.SecurityConfigurationDetails.Count != 0)
    //            dalObj.UpdateSecurityConfig(config.SecurityConfigurationDetails.FirstOrDefault());
    //        else
    //        {
    //            //SecurityConfigurationDetail configurationObject = new SecurityConfigurationDetail();
    //            //var securityConfig = SecurityConfig.FirstOrDefault();
    //            //securityConfig.SecurityID = config.SecurityID;
    //            var executionIntervalArray=new byte[10];
    //            executionIntervalArray[0] = MaxExecutionInterval;
    //            SecurityConfig.FirstOrDefault().MaxExecutionInterval = executionIntervalArray;
    //            dalObj.AddSecurityConfig(SecurityConfig.FirstOrDefault());
    //        }
    //        //if (RequestCloseDialog != null)
    //        //    RequestCloseDialog(new RequestCloseEventArgs(true));
    //    }

    //    private ICommand cancelCommand;
    //    public ICommand CancelCommand
    //    {
    //        get
    //        {
    //            if (cancelCommand == null)
    //                cancelCommand = new RelayCommand(p => DoCancel());
    //            return cancelCommand;
    //        }
    //    }

    //    private void DoCancel()
    //    {
    //        if (RequestCloseDialog != null)
    //            RequestCloseDialog(new RequestCloseEventArgs(false));
    //    }

    //    private ICommand executeBlockCommand;

    //    public ICommand ExecuteBlockCommand
    //    {
    //        get 
    //        {
    //            if (executeBlockCommand == null)
    //                executeBlockCommand = new RelayCommand(p => TurnOnExecution());
    //            return executeBlockCommand; 
    //        }
            
    //    }

    //    private void TurnOnExecution()
    //    {
    //        ExecuteBlockServiceReference.ExecuteBlockServiceClient executeServiceClient = new ExecuteBlockServiceReference.ExecuteBlockServiceClient();
    //        executeServiceClient.PollingAsync();

    //    }
        
    //}
}
