﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Windows;

namespace PortfolioManagerWindow.Helpers
{
   public class ViewModelBase:INotifyPropertyChanged
    {
        //public event PropertyChangedEventHandler PropertyChanged;



        public event PropertyChangedEventHandler PropertyChanged;

        public void RaisePropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this,
                    new PropertyChangedEventArgs(propertyName));
        }


    }
}
