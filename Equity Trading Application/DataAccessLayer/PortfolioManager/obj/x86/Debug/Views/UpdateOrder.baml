   M S B A M L   `   `   `  ����p  lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls  5   
    PortfolioManager(   "PortfolioManager.Views.UpdateOrder   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5   
   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  UpdateOrder��5   	   $	��700��6   $	��400��6*   .��5      � -   5        $��mainGrid��5       � RowDefinitions 5   
   �� 5      �� 5	      �� 5
      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� -   5        $��orderID��5      $��OrderID��6   $��0,10,0,0q�61   $��0��6C   $��0��6P   $��Center=�6`   $��15(�6}   $
��Bold"�6�   6�   �� 5   
   -   5        $��symbol��5      $��Security Symbol��6   $��0,10,0,0q�68   $��1��6J   $��0��6W   $��Center=�6g   $��15(�6�   $
��Bold"�6�   6�   �� 5   
   -   5        $
��side��5      $
��Side��6   $��2��6+   $��0,10,0,0q�68   $��0��6J   $��Center=�6Z   $��15(�6w   $
��Bold"�6�   6�   �� 5   
   -   5        $��	qualifier��5      $��	Qualifier��6!   $��0,10,0,0q�65   $��3��6G   $��0��6T   $��Center=�6d   $��15(�6�   $
��Bold"�6�   6�   �� 5   
   -   5        $
��type��5      $
��Type��6   $��4��6+   $��0,10,0,0q�69   $��0��6K   $��Center=�6[   $��15(�6x   $
��Bold"�6�   6�   �� 5   
   -   5        $��owned��5      $��Owned Quantity��6   $��0,10,0,0q�67   $��5��6I   $��0��6V   $��Center=�6f   $��15(�6�   $
��Bold"�6�   6�   �� 5    
   -   5        $��quantity��5       $��Quantity��6    $��0,10,0,0q�64   $��6��6F   $��0��6S   $��Center=�6c   $��15(�6�   $
��Bold"�6�   6�   �� 5!   
   -	   5        $��
limitPrice��5!      $��
LimitPrice��6"   $��0,10,0,0q�68   $��7��6J   $��0��6W   $��Center=�6g   $��15(�6�   $
��Bold"�6�   6�   �� 5"   
   -
   5        $��	stopPrice��5"      $��	StopPrice��6!   $��0,10,0,0q�66   $��8��6H   $��0��6U   $��Center=�6e   $��15(�6�   $
��Bold"�6�   6�   �� 5#   
   -   5        $��status��5#      $��Status��6   $��0,10,0,0q�60   $��9��6B   $��0��6O   $��Center=�6_   $��15(�6|   $
��Bold"�6�   6�   �� 5$   
   -   5        $��notes��5$      $��Notes��6   $��0,10,0,0q�6.   $��10��6@   $��0��6N   $��Center=�6^   $��15(�6{   $
��Bold"�6�   6�   �� 5&   
   -   5        $��	tBoxOrdID��5&      {�.  $��0��65   $��1��6g   $��10q�6w   $	��100��6�   $��Center=�6�   $��15(�6�   $
��Bold"�6�   ��6B   �� *	OrderId+ �� Mode$ TwoWay=�6�   -   'System.Windows.Controls.AutoCompleteBox  5'   
   -   5        $��
tBoxSymbol��5'      {�.  $��1��6�   $��1��6�   $��10q�6�   $	��100��6�   $��Center=�6�   $��15(�6�   $
��Bold"�6�      Text 6C   �� *SymbolSelected+$ TwoWay=�   ItemsSource 6o   �� *	Symbols+6  �� 5(   
   -   5        $��panel��5(      $��2��6"   $��1��6/   $��10q�6?   $	��100��6K   $��Center=�6W    �� Orientation$ 
Horizontal=�6t   .+�5)      	� -   5        $	��buy��5)      {�.  $	��Buy��6q    d� 	IsChecked 68   �� *Buy+��6R   �� *
BuyCommand+6�   	� 5*      -   5        $
��sell��5*      {�.  $
��Sell��6T   $��20,0,0,0q�6�    69   �� *Sell+��6c   �� *SellCommand+6�   5+      �� 5,   
   -   5        $��panelQualifier��5,      $��3��6+   $��1��68   $��10q�6H   $	��100��6T   $��Center=�6`   $ 
Horizontal=�6}   .+�5-      	� -   5        $	��gtc��5-      {�.  $	��GTC��6q    67   �� *GTC+��6Q   �� *
GtcCommand+6�   	� 5.      -   5        $	��gtd��5.      {�.  $	��GTD��6p   $��20,0,0,0q�6~    67   �� *GTD+��6Q   �� *
GtdCommand+6�   5/      �� 50   
   -   5        $��cBoxType��50      {�.  $��15(�65   $
��Bold"�6C   $��4��6�   $��1��6�   $��10q�6�   $	��100��6�   $��Center=�6�    �� SelectedItem 6U   �� *SelectedType+��6{   �� *TypeOfOrders+6�   �� 51   
   -   5        $��tBoxQOwnedQuantity��51      {�.  $��5��6]   $��1��6j   $��10q�6z   $	��100��6�   $��Center=�6�   $��15(�6�   $
��Bold"�6�   ��6>   �� *OwnedQuantity+6�   �� 52   
   -   5        $��tBoxQuantity��52      $��6��6A   $��1��6N   $��10q�6^   $	��100��6j   $��Center=�6v   $��15(�6�   $
��Bold"�6�   ��6&   �� *
Quantity+6�   �� 53   
   -   5        $��tBoxLimitPrice��53      $��7��6g   $��1��6t   $��10q�6�   $	��100��6�   $��Center=�6�   $��15(�6�   $
��Bold"�6�   {�6(   �� *LimitEnabled+��6K   �� *
LimitPrice+6�   �� 54   
   -   5        $��tBoxStopPrice��54      $��8��6e   $��1��6r   $��10q�6�   $	��100��6�   $��Center=�6�   $��15(�6�   $
��Bold"�6�   {�6(   �� *StopEnabled+��6J   �� *	StopPrice+6�   �� 55   
   -   5        $��
tBoxStatus��55      {�.  $��9��6N   $��1��6[   $��10q�6k   $	��100��6w   $��Center=�6�   $��15(�6�   $
��Bold"�6�   ��66   �� *Status+6�   �� 56   
   -   5        $��	tBoxNotes��56      {�.  $��10��6L   $��1��6Z   $��10q�6j   $	��100��6v   $��Center=�6�   $��15(�6�   $
��Bold"�6�   ��65   �� *Notes+6�   �� 58   
   -   5        $
��save��58      $
��Save��6   $��11��6L   $��0��6Z   $��10q�6j   $	��100��6v   
������$��Center=�6�   $��15(�6�   $
��Bold"�6�   ��6,   �� *SaveCommand+6�   �� 59   
   -   5        $��cancel��59      $��Cancel��6   $��11��6R   $��1��6`   $��10q�6p   $	��100��6|   
���  ��$��Center=�6�   $��15(�6�   $
��Bold"�6�   ��60   �� *CancelCommand+6�   5;      5<      