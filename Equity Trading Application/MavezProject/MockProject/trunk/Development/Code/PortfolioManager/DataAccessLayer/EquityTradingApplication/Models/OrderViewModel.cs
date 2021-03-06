﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EquityTradingApplication.Helpers
{
  public   class OrderViewModel
    {
      public int OrderID
      {
          get;
          set;
      }

      public int TotalQuantity
      {
          get;
          set;
      }

      public string Side
      {
          get;
          set;
      }

      public string SecurityName
      {
          get;
          set;
      }

      public string Symbol
      {
          get;
          set;
      }

      public Nullable<decimal> MarketPrice
      {
          get;
          set;
      }

      public Nullable<decimal> Position
      {
          get;
          set;
      }


      public string StatusName
      {
          get;
          set;
      }

      public int OpenQuantity
      {
          get;
          set;
      }

      public string OrderType
      {
          get;
          set;
      }

      public string OrderQualifier
      {
          get;
          set;
      }


      public string AccountType
      {
          get;
          set;
      }

      public int StatusID
      {
          get;
          set;
      }

      public Nullable<decimal> StopPrice
      {
          get;
          set;
      }



      public Nullable<decimal> LimitPrice
      {
          get;
          set;
      }


      public string Notes
      {
          get;
          set;
      }

      public int SecurityID
      {
          get;
          set;
      }

      public Nullable<bool> Notify
      {
          get;
          set;
      }

      public Nullable<decimal> LastTradedPrice { get; set; }

      public bool IsSelected { get; set; }

      public int CellColour { get; set; }

    }
}
