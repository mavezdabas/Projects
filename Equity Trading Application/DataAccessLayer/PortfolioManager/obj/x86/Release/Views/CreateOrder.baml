   M S B A M L   `   `   `  ���� p  lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls   PortfolioManager(   "PortfolioManager.Views.CreateOrder   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  CreateOrder��$	��700��$	��400��.��� -   $��mainGrid�� � RowDefinitions �� �� �� �� �� �� �� �� �� �� �� ��  � ColumnDefinitions �� �� .+��� -   $��orderID��$��OrderID��$��0,10,0,0q�$��0��$��0��$��Center=�$��15(�$
��Bold"��� -   $��symbol��$��Security Symbol��$��0,10,0,0q�$��1��$��0��$��Center=�$��15(�$
��Bold"��� -   $
��side��$
��Side��$��2��$��0,10,0,0q�$��0��$��Center=�$��15(�$
��Bold"��� -   $��	qualifier��$��	Qualifier��$��0,10,0,0q�$��3��$��0��$��Center=�$��15(�$
��Bold"��� -   $
��type��$
��Type��$��4��$��0,10,0,0q�$��0��$��Center=�$��15(�$
��Bold"��� -   $��owned��$��Owned Quantity��$��0,10,0,0q�$��5��$��0��$��Center=�$��15(�$
��Bold"��� -   $��quantity��$��Quantity��$��0,10,0,0q�$��6��$��0��$��Center=�$��15(�$
��Bold"��� -	   $��
limitPrice��$��
LimitPrice��$��0,10,0,0q�$��7��$��0��$��Center=�$��15(�$
��Bold"��� -
   $��	stopPrice��$��	StopPrice��$��0,10,0,0q�$��8��$��0��$��Center=�$��15(�$
��Bold"��� -   $��status��$��Status��$��0,10,0,0q�$��9��$��0��$��Center=�$��15(�$
��Bold"��� -   $��notes��$��Notes��$��0,10,0,0q�$��10��$��0��$��Center=�$��15(�$
��Bold"��� -   $��	tBoxOrdID��$��0��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"����� *	OrderId+ �� Mode$ TwoWay=�-   'System.Windows.Controls.AutoCompleteBox  -   $��
tBoxSymbol��$��1��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"�   Text �� *SymbolSelected+$ TwoWay=�   ItemsSource �� *	Symbols+�� -   $��panel��$��2��$��1��$��10q�$	��100��$��Center=� �� Orientation$ 
Horizontal=�.+�	� -   $	��buy��$	��Buy�� d� 	IsChecked �� *Buy+���� *
BuyCommand+	� -   $
��sell��$
��Sell��$��20,0,0,0q� �� *Sell+���� *SellCommand+�� -   $��panelQualifier��$��3��$��1��$��10q�$	��100��$��Center=�$ 
Horizontal=�.+�	� -   $	��gtc��$	��GTC�� �� *GTC+���� *
GtcCommand+	� -   $	��gtd��$	��GTD��$��20,0,0,0q� �� *GTD+���� *
GtdCommand+�� -   $��cBoxType��$��15(�$
��Bold"�$��4��$��1��$��10q�$	��100��$��Center=� �� SelectedItem �� *SelectedType+���� *TypeOfOrders+�� -   $��tBoxQOwnedQuantity��{�.  $��5��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"����� *OwnedQuantity+�� -   $��tBoxQuantity��$��6��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"����� *
Quantity+�� -   $��tBoxLimitPrice��$��7��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"�{��� *LimitEnabled+���� *
LimitPrice+�� -   $��tBoxStopPrice��$��8��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"�{��� *StopEnabled+���� *	StopPrice+�� -   $��
tBoxStatus��{�.  $��9��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"����� *Status+�� -   $��	tBoxNotes��$��10��$��1��$��10q�$	��100��$��Center=�$��15(�$
��Bold"����� *Notes+�� -   $
��save��$
��Save��$��11��$��0��$��10q�$	��100��
������$��Center=�$��15(�$
��Bold"����� *SaveCommand+�� -   $��cancel��$��Cancel��$��11��$��1��$��10q�$	��100��
���  ��$��Center=�$��15(�$
��Bold"����� *CancelCommand+