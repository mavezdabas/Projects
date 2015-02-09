﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EquityTradingApplication.Helpers
{
    public enum codes { NullCode, SymbolNull, SecurityNameNull, SecuritySymbolNull, OrderTypeNull, QuantityZero, StopPriceZero, StopPriceNull, LimitPriceNull, LimitPriceZero, SecuritySymbolDoesNotExist,Sell_OrderedQuantityGreaterThanOwnedQuantity,
    GenericException, SendException};

    
  public class ErrorCodeHashMap
    {
      public static ErrorCodeHashMap hashMap;
      public Dictionary<codes, string> hash;
      
      private  ErrorCodeHashMap()
      {
          CreateHashMap(); 
      }

      private void CreateHashMap()
      {
          hash = new Dictionary<codes, string>();
          hash.Add(codes.NullCode,"There are no items to display");
          hash.Add(codes.LimitPriceNull, "Limit Price cannot be left empty");
          hash.Add(codes.LimitPriceZero, "Limit Price cannot be equal to zero");
          hash.Add(codes.OrderTypeNull, "Order Type cannot be left empty");
          hash.Add(codes.QuantityZero, "Quantity cannot be equal to zero");
          hash.Add(codes.SecurityNameNull, "Security cannot be left empty");
          hash.Add(codes.SecuritySymbolNull, "Symbol cannot be left empty");
          hash.Add(codes.StopPriceNull, "Stop price cannot be left empty");
          hash.Add(codes.StopPriceZero, "Stop price cannot be equal to zero");
          hash.Add(codes.SymbolNull, "Symbol cannot be left empty");
          hash.Add(codes.SecuritySymbolDoesNotExist, "Security Symbol Does Not Exist");
          hash.Add(codes.Sell_OrderedQuantityGreaterThanOwnedQuantity, "Ordered Quantity cannot be Greater than Owned Quantity");
          hash.Add(codes.GenericException, "An error occurred! Please contact the system administrator!");
          hash.Add(codes.SendException,"Unable to send orders at this moment! System has encountered some error!");
      }

      static public ErrorCodeHashMap GetInstance()
      {
          if (hashMap == null)
              hashMap = new ErrorCodeHashMap();
          return hashMap;
      }
    }
}
