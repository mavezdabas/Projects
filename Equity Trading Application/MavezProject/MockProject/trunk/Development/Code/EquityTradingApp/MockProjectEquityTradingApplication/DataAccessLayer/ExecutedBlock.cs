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
    public partial class ExecutedBlock
    {
        #region Primitive Properties
    
        public virtual int ExecutedBlockID
        {
            get;
            set;
        }
    
        public virtual int BlockID
        {
            get { return _blockID; }
            set
            {
                if (_blockID != value)
                {
                    if (Block != null && Block.BlockID != value)
                    {
                        Block = null;
                    }
                    _blockID = value;
                }
            }
        }
        private int _blockID;
    
        public virtual int ExecutedQuantity
        {
            get;
            set;
        }
    
        public virtual decimal TransactionPrice
        {
            get;
            set;
        }
    
        public virtual int Status
        {
            get;
            set;
        }
    
        public virtual System.DateTime TransactionTime
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
    
        public virtual ICollection<OrderAllocation> OrderAllocations
        {
            get
            {
                if (_orderAllocations == null)
                {
                    var newCollection = new FixupCollection<OrderAllocation>();
                    newCollection.CollectionChanged += FixupOrderAllocations;
                    _orderAllocations = newCollection;
                }
                return _orderAllocations;
            }
            set
            {
                if (!ReferenceEquals(_orderAllocations, value))
                {
                    var previousValue = _orderAllocations as FixupCollection<OrderAllocation>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupOrderAllocations;
                    }
                    _orderAllocations = value;
                    var newValue = value as FixupCollection<OrderAllocation>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupOrderAllocations;
                    }
                }
            }
        }
        private ICollection<OrderAllocation> _orderAllocations;

        #endregion
        #region Association Fixup
    
        private void FixupBlock(Block previousValue)
        {
            if (previousValue != null && previousValue.ExecutedBlocks.Contains(this))
            {
                previousValue.ExecutedBlocks.Remove(this);
            }
    
            if (Block != null)
            {
                if (!Block.ExecutedBlocks.Contains(this))
                {
                    Block.ExecutedBlocks.Add(this);
                }
                if (BlockID != Block.BlockID)
                {
                    BlockID = Block.BlockID;
                }
            }
        }
    
        private void FixupOrderAllocations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (OrderAllocation item in e.NewItems)
                {
                    item.ExecutedBlock = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (OrderAllocation item in e.OldItems)
                {
                    if (ReferenceEquals(item.ExecutedBlock, this))
                    {
                        item.ExecutedBlock = null;
                    }
                }
            }
        }

        #endregion
    }
}
