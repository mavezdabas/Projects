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

namespace ExecutionTraderDataAccessLayer
{
    public partial class UserRole
    {
        #region Primitive Properties
    
        public virtual int RoleID
        {
            get;
            set;
        }
    
        public virtual string RoleName
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<User> Users
        {
            get
            {
                if (_users == null)
                {
                    var newCollection = new FixupCollection<User>();
                    newCollection.CollectionChanged += FixupUsers;
                    _users = newCollection;
                }
                return _users;
            }
            set
            {
                if (!ReferenceEquals(_users, value))
                {
                    var previousValue = _users as FixupCollection<User>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupUsers;
                    }
                    _users = value;
                    var newValue = value as FixupCollection<User>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupUsers;
                    }
                }
            }
        }
        private ICollection<User> _users;

        #endregion
        #region Association Fixup
    
        private void FixupUsers(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (User item in e.NewItems)
                {
                    item.UserRole = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (User item in e.OldItems)
                {
                    if (ReferenceEquals(item.UserRole, this))
                    {
                        item.UserRole = null;
                    }
                }
            }
        }

        #endregion
    }
}
