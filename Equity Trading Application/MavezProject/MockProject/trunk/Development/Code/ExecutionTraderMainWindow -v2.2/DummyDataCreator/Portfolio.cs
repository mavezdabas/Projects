//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace DummyDataCreator
{
    public partial class Portfolio
    {
        #region Primitive Properties
    
        public virtual int PortfolioID
        {
            get;
            set;
        }
    
        public virtual string PortfolioName
        {
            get;
            set;
        }
    
        public virtual Nullable<int> ClientID
        {
            get { return _clientID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_clientID != value)
                    {
                        if (Client != null && Client.ClientID != value)
                        {
                            Client = null;
                        }
                        _clientID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private Nullable<int> _clientID;

        #endregion
        #region Navigation Properties
    
        public virtual Client Client
        {
            get { return _client; }
            set
            {
                if (!ReferenceEquals(_client, value))
                {
                    var previousValue = _client;
                    _client = value;
                    FixupClient(previousValue);
                }
            }
        }
        private Client _client;
    
        public virtual ICollection<Order> Orders
        {
            get
            {
                if (_orders == null)
                {
                    var newCollection = new FixupCollection<Order>();
                    newCollection.CollectionChanged += FixupOrders;
                    _orders = newCollection;
                }
                return _orders;
            }
            set
            {
                if (!ReferenceEquals(_orders, value))
                {
                    var previousValue = _orders as FixupCollection<Order>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupOrders;
                    }
                    _orders = value;
                    var newValue = value as FixupCollection<Order>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupOrders;
                    }
                }
            }
        }
        private ICollection<Order> _orders;

        #endregion
        #region Association Fixup
    
        private bool _settingFK = false;
    
        private void FixupClient(Client previousValue)
        {
            if (previousValue != null && previousValue.Portfolios.Contains(this))
            {
                previousValue.Portfolios.Remove(this);
            }
    
            if (Client != null)
            {
                if (!Client.Portfolios.Contains(this))
                {
                    Client.Portfolios.Add(this);
                }
                if (ClientID != Client.ClientID)
                {
                    ClientID = Client.ClientID;
                }
            }
            else if (!_settingFK)
            {
                ClientID = null;
            }
        }
    
        private void FixupOrders(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Order item in e.NewItems)
                {
                    item.Portfolio = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Order item in e.OldItems)
                {
                    if (ReferenceEquals(item.Portfolio, this))
                    {
                        item.Portfolio = null;
                    }
                }
            }
        }

        #endregion
    }
}
