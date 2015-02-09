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
    public partial class Order
    {
        #region Primitive Properties
    
        public virtual int OrderID
        {
            get;
            set;
        }
    
        public virtual int SecurityID
        {
            get { return _securityID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_securityID != value)
                    {
                        if (Security != null && Security.SecurityID != value)
                        {
                            Security = null;
                        }
                        _securityID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private int _securityID;
    
        public virtual string Side
        {
            get;
            set;
        }
    
        public virtual string OrderType
        {
            get;
            set;
        }
    
        public virtual string OrderQualifier
        {
            get;
            set;
        }
    
        public virtual Nullable<int> TraderID
        {
            get { return _traderID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_traderID != value)
                    {
                        if (User1 != null && User1.UserID != value)
                        {
                            User1 = null;
                        }
                        _traderID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private Nullable<int> _traderID;
    
        public virtual int ManagerID
        {
            get { return _managerID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_managerID != value)
                    {
                        if (User != null && User.UserID != value)
                        {
                            User = null;
                        }
                        _managerID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private int _managerID;
    
        public virtual int TotalQuantity
        {
            get;
            set;
        }
    
        public virtual int OpenQuantity
        {
            get;
            set;
        }
    
        public virtual int AllocatedQuantity
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> StopPrice
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> LimitPrice
        {
            get;
            set;
        }
    
        public virtual string Notes
        {
            get;
            set;
        }
    
        public virtual Nullable<bool> Notify
        {
            get;
            set;
        }
    
        public virtual int ClientID
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
        private int _clientID;
    
        public virtual int PortfolioID
        {
            get { return _portfolioID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_portfolioID != value)
                    {
                        if (Portfolio != null && Portfolio.PortfolioID != value)
                        {
                            Portfolio = null;
                        }
                        _portfolioID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private int _portfolioID;
    
        public virtual int StatusID
        {
            get { return _statusID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_statusID != value)
                    {
                        if (Status != null && Status.StatusID != value)
                        {
                            Status = null;
                        }
                        _statusID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private int _statusID;
    
        public virtual Nullable<int> BlockID
        {
            get { return _blockID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_blockID != value)
                    {
                        if (Block != null && Block.BlockID != value)
                        {
                            Block = null;
                        }
                        _blockID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private Nullable<int> _blockID;
    
        public virtual byte[] BookTime
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> TransactionPrice
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> TransactionTime
        {
            get;
            set;
        }
    
        public virtual string AccountType
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual Block Block
        {
            get { return _block; }
            set
            {
                if (!ReferenceEquals(_block, value))
                {
                    var previousValue = _block;
                    _block = value;
                    FixupBlock(previousValue);
                }
            }
        }
        private Block _block;
    
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
    
        public virtual OrderAllocation OrderAllocation
        {
            get { return _orderAllocation; }
            set
            {
                if (!ReferenceEquals(_orderAllocation, value))
                {
                    var previousValue = _orderAllocation;
                    _orderAllocation = value;
                    FixupOrderAllocation(previousValue);
                }
            }
        }
        private OrderAllocation _orderAllocation;
    
        public virtual Portfolio Portfolio
        {
            get { return _portfolio; }
            set
            {
                if (!ReferenceEquals(_portfolio, value))
                {
                    var previousValue = _portfolio;
                    _portfolio = value;
                    FixupPortfolio(previousValue);
                }
            }
        }
        private Portfolio _portfolio;
    
        public virtual Security Security
        {
            get { return _security; }
            set
            {
                if (!ReferenceEquals(_security, value))
                {
                    var previousValue = _security;
                    _security = value;
                    FixupSecurity(previousValue);
                }
            }
        }
        private Security _security;
    
        public virtual Status Status
        {
            get { return _status; }
            set
            {
                if (!ReferenceEquals(_status, value))
                {
                    var previousValue = _status;
                    _status = value;
                    FixupStatus(previousValue);
                }
            }
        }
        private Status _status;
    
        public virtual User User
        {
            get { return _user; }
            set
            {
                if (!ReferenceEquals(_user, value))
                {
                    var previousValue = _user;
                    _user = value;
                    FixupUser(previousValue);
                }
            }
        }
        private User _user;
    
        public virtual User User1
        {
            get { return _user1; }
            set
            {
                if (!ReferenceEquals(_user1, value))
                {
                    var previousValue = _user1;
                    _user1 = value;
                    FixupUser1(previousValue);
                }
            }
        }
        private User _user1;

        #endregion
        #region Association Fixup
    
        private bool _settingFK = false;
    
        private void FixupBlock(Block previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (Block != null)
            {
                if (!Block.Orders.Contains(this))
                {
                    Block.Orders.Add(this);
                }
                if (BlockID != Block.BlockID)
                {
                    BlockID = Block.BlockID;
                }
            }
            else if (!_settingFK)
            {
                BlockID = null;
            }
        }
    
        private void FixupClient(Client previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (Client != null)
            {
                if (!Client.Orders.Contains(this))
                {
                    Client.Orders.Add(this);
                }
                if (ClientID != Client.ClientID)
                {
                    ClientID = Client.ClientID;
                }
            }
        }
    
        private void FixupOrderAllocation(OrderAllocation previousValue)
        {
            if (previousValue != null && ReferenceEquals(previousValue.Order, this))
            {
                previousValue.Order = null;
            }
    
            if (OrderAllocation != null)
            {
                OrderAllocation.Order = this;
            }
        }
    
        private void FixupPortfolio(Portfolio previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (Portfolio != null)
            {
                if (!Portfolio.Orders.Contains(this))
                {
                    Portfolio.Orders.Add(this);
                }
                if (PortfolioID != Portfolio.PortfolioID)
                {
                    PortfolioID = Portfolio.PortfolioID;
                }
            }
        }
    
        private void FixupSecurity(Security previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (Security != null)
            {
                if (!Security.Orders.Contains(this))
                {
                    Security.Orders.Add(this);
                }
                if (SecurityID != Security.SecurityID)
                {
                    SecurityID = Security.SecurityID;
                }
            }
        }
    
        private void FixupStatus(Status previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (Status != null)
            {
                if (!Status.Orders.Contains(this))
                {
                    Status.Orders.Add(this);
                }
                if (StatusID != Status.StatusID)
                {
                    StatusID = Status.StatusID;
                }
            }
        }
    
        private void FixupUser(User previousValue)
        {
            if (previousValue != null && previousValue.Orders.Contains(this))
            {
                previousValue.Orders.Remove(this);
            }
    
            if (User != null)
            {
                if (!User.Orders.Contains(this))
                {
                    User.Orders.Add(this);
                }
                if (ManagerID != User.UserID)
                {
                    ManagerID = User.UserID;
                }
            }
        }
    
        private void FixupUser1(User previousValue)
        {
            if (previousValue != null && previousValue.Orders1.Contains(this))
            {
                previousValue.Orders1.Remove(this);
            }
    
            if (User1 != null)
            {
                if (!User1.Orders1.Contains(this))
                {
                    User1.Orders1.Add(this);
                }
                if (TraderID != User1.UserID)
                {
                    TraderID = User1.UserID;
                }
            }
            else if (!_settingFK)
            {
                TraderID = null;
            }
        }

        #endregion
    }
}
