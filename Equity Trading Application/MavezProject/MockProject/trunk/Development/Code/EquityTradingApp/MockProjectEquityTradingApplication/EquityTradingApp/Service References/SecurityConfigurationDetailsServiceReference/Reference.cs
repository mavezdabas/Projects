﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18408
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EquityTradingApp.SecurityConfigurationDetailsServiceReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SecurityConfigurationDetailsServiceReference.ISecurityConfigurationDetails")]
    public interface ISecurityConfigurationDetails {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISecurityConfigurationDetails/GetData", ReplyAction="http://tempuri.org/ISecurityConfigurationDetails/GetDataResponse")]
        System.Collections.ObjectModel.ObservableCollection<DataAccessLayer.SecurityConfigurationDetail> GetData();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ISecurityConfigurationDetailsChannel : EquityTradingApp.SecurityConfigurationDetailsServiceReference.ISecurityConfigurationDetails, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SecurityConfigurationDetailsClient : System.ServiceModel.ClientBase<EquityTradingApp.SecurityConfigurationDetailsServiceReference.ISecurityConfigurationDetails>, EquityTradingApp.SecurityConfigurationDetailsServiceReference.ISecurityConfigurationDetails {
        
        public SecurityConfigurationDetailsClient() {
        }
        
        public SecurityConfigurationDetailsClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public SecurityConfigurationDetailsClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SecurityConfigurationDetailsClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SecurityConfigurationDetailsClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public System.Collections.ObjectModel.ObservableCollection<DataAccessLayer.SecurityConfigurationDetail> GetData() {
            return base.Channel.GetData();
        }
    }
}
