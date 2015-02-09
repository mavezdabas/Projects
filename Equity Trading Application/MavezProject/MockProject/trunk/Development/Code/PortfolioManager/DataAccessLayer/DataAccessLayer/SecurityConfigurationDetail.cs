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

namespace DataAccessLayer
{
    public partial class SecurityConfigurationDetail
    {
        #region Primitive Properties
    
        public virtual int MaxPriceSpread
        {
            get;
            set;
        }
    
        public virtual int MaxExecutionNumber
        {
            get;
            set;
        }
    
        public virtual byte[] MaxExecutionInterval
        {
            get;
            set;
        }
    
        public virtual int FullyExecutedOrderProbability
        {
            get;
            set;
        }
    
        public virtual int SecurityID
        {
            get { return _securityID; }
            set
            {
                if (_securityID != value)
                {
                    if (Security != null && Security.SecurityID != value)
                    {
                        Security = null;
                    }
                    _securityID = value;
                }
            }
        }
        private int _securityID;
    
        public virtual int SecurityConfigurationID
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
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

        #endregion
        #region Association Fixup
    
        private void FixupSecurity(Security previousValue)
        {
            if (previousValue != null && previousValue.SecurityConfigurationDetails.Contains(this))
            {
                previousValue.SecurityConfigurationDetails.Remove(this);
            }
    
            if (Security != null)
            {
                if (!Security.SecurityConfigurationDetails.Contains(this))
                {
                    Security.SecurityConfigurationDetails.Add(this);
                }
                if (SecurityID != Security.SecurityID)
                {
                    SecurityID = Security.SecurityID;
                }
            }
        }

        #endregion
    }
}
