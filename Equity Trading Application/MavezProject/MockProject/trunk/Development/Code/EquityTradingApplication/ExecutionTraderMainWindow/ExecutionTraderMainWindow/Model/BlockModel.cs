﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ExecutionTraderDataAccessLayer;
using System.Collections.ObjectModel;

namespace ExecutionTraderMainWindow.Model
{
    public class BlockModel
    {
        public int BlockId { get; set; }
        public int TraderId { get; set; }
        public int SecurityId { get; set; }
        public string BlockSide { get; set; }
        public string BlockStatus { get; set; }
        public decimal LimitPrice { get; set; }
        public decimal StopPrice { get; set; }
        public int TotalQuantity { get; set; }
        public int ExecutedQuantity { get; set; }
        public int OpenQuantity { get; set; }
        public SecurityModel security { get; set; }
        public ObservableCollection<OrderModel> Orders { get; set; }
        //public ObservableCollection<OrderModel> SelectedOrders { get; set; }
        public ObservableCollection<ExecutedBlocksModel> ExecutedBlocks { get; set; }
        public ObservableCollection<AllocatedOrdersModel> AllocatedOrders { get; set; }
    }
}
