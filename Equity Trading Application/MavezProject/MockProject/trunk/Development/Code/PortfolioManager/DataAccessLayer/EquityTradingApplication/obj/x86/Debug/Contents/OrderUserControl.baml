   M S B A M L   `   `   `  ����p  lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls  5      S OEquityTradingApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:EquityTradingApplication.Helpers EquityTradingApplication.Helpers 5      I ECustomControls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG4clr-namespace:CustomControls;assembly=CustomControlsCustomControls 5      7   1EquityTradingApplication.content.OrderUserControl   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      lAutoTextBoxTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5      PobjectToBoolConverter.clr-namespace:EquityTradingApplication.Helpers     5      NcustomControl4clr-namespace:CustomControls;assembly=CustomControls     5      $	��500��5	      $	��400��6,     � 	Resources  5
      < 6EquityTradingApplication.Helpers.ObjectToBoolConverter   boolConverter  StopPriceTextBoxStyle �� 
TargetType �� Triggers �� Binding �� 	Converter �� Value �� Property �� Value  LimitPriceTextBoxStyle��%=  &	        &	      7   7   &	     7   7     5   
   6N   �� 5   
   " ��6.    5      �� 5       6   �� *	OrderType+8    06g   .a�5      ��  � {� .  62   5      �� 5       6   �� *	OrderType+8   26c   .a�5      ��  � {� .  62   5      5      �� 5   
   " ��6/    5      �� 5       6   �� *	OrderType+8    06g   .a�5      ��  � {� .  62   5      �� 5       6   �� *	OrderType+8   16g   .a�5      ��  � {� .  62   5      5!      5#      .��5%      �  � RowDefinitions 5'   
   �� 5(      $	��26* �6   �� 5)      $	��26* �6   �� 5*      $	��26* �6   �� 5+      $	��26* �6   �� 5,      $	��26* �6   �� 5-      $	��26* �6   �� 5.      $	��26* �6   �� 5/      $	��26* �6   �� 50      $	��26* �6   �� 51      $	��26* �6   �� 52      $	��26* �6   �� 53      $	��26* �6   �� 54      $	��26* �6   �� 55      $	��26* �6   �� 56      $	��26* �6   �� 57      $	��26* �6   �� 58      $	��26* �6   �� 59      $	��15* �6   �� 5:      $	��38* �6   	 � ColumnDefinitions	 5=   
   �� 5>      �� 5?      .+�5A   
   �� $��Center=�5B      $��Center=�6-   $��138,0,118,5q�5C      $��2��6&   $	��144��6:   $��23��6F   ��5A      �� 
 �� RelativeSource
 ��  �� AncestorType$ UserControlL� �� Path$ 
WindowName�5C   T   �� 5D   
   -   5         ��Name$ tBlockCompany��5D      $��Center=�6J   $��Center=�5E      $��118,27,118,9q�5F      $��2��6*   $��2��6>   ��5D   +   �� *PortfolioName+5F   >   �� 5G   
   -   5        $ tBlockOrderId��5G      $��Order ID��6+   $��2��6;   �� 5H   
   -   5        $ tBlockSymbol��5H      $��Symbol��6*   $��3��68   $��	10,5,10,4q�6E   �� 5J   
   -   5        $ tBlockSecurityName��5J      $��Security Name��60   $��4��6E   $��0��6R   �� 5K   
   -   5        $ 
tBlockSide��5K      $
��Side��6(   $��5��64   $��0��6A   �� 5L   
   -   5        $ tBlockOrderType��5L      $��
Order Type��6-   $��6��6?   $��0��6L   �� 5M   
   -   5        $ tBlockOrderQualifier��5M      $��Order Qualifier��62   $��7��6I   $��0��6V   �� 5N   
   -   5        $ tBlockTrader��5N      $��Trader��6*   $��8��68   $��0��6E   �� 5O   
   -	   5        $ tBlockAccountType��5O      $��Account Type��6/   $��9��6C   $��0��6P   �� 5P   
   -
   5        $ tBlockOwnedQuantity��5P      $��Owned Quantity��61   $��10��6G   $��0��6U   �� 5Q   
   -   5        $ tBlockQuantity��5Q      $��Quantity��6,   $��11��6<   $��0��6J   �� 5R   
   -   5        $ tBlockStopPrice��5R      $��
Stop Price��6-   $��12��6?   $��0��6M   �� 5S   
   -   5        $ tBlockLimitPrice��5S      $��Limit Price��6.   $��13��6A   $��0��6O   �� 5T   
   -   5        $ tBlockStatus��5T      $��Status��6*   $��14��68   $��0��6F   �� 5U   
   -   5        $ tBlockNotes��5U      $��Notes��6)   $��15��66   $��0��6D   �� 5X   
   -   5         ��Name$ tBoxOrderId��5X      $��2��6'   $��1��64    �� 
IsReadOnly . ��6D   �� *	OrderId+ �� Mode$ OneWay=�6j   � 5Y   
   $��1��6   $��3��6   $��10,0,0,0q�6,    5Z      �� 5[      $	��11* �6    �� 5\      $	��10* �6    	 5^      �� 5_      $	��20* �6#   �� 5`      $	��55* �6#   �� 5a      $	��75* �6#   .+�5d      -   'System.Windows.Controls.AutoCompleteBox  -   5          Name$ 
tBoxSymbol��5d   *   $��0,0,10,0q�63  $��2��6E  $��2��6W     ItemsSource 6>   �� *SecuritySymbolList+ �� UpdateSourceTrigger$ 	LostFocus=�   Text 6�   �� *SecuritySymbol+$ TwoWay=�{�6�   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6m  �� 5e      -   5         ��Name$ btnSymbolLookUp��5e      $��LookUp��6�   $��2��6�   $��1,1,10,0q�6�   $��2��6  ��6.   �� *LookupCommand+{�6P   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6  5f      �� 5g   
   -   5        $ tBoxSecurityName��5g       . $��4��6\   $��1��6i   ��6,   �� *SecurityName+6{   � 5h   
   $��5��6   $��1��6   $
��10,0q�6,    5i      �� 5j      $	��11* �6    �� 5k      $	��10* �6    	 5m      �� 5n      �� 5o      .+�5q      	� -   5        $��radioBuy��5q       d� 	IsChecked$
 TrueY�6*   $	��Buy��6<   $��	10,0,10,1q�6�   $��2��6�   {�6J   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6�   	� 5r      -   5        $��	radioSell��5r      $
��Sell��6y   $��
79,-1,14,2q�6  $��2��6  $��2��6+   6,   �� *IsSellSideSelected+��6U   �� *SideSellCommand+{�6�   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6A  5s      �� 5t   
   -   5        $��lstOrderType��5t      $��6��5v   :   $��1��6G   $��	10,0,12,4q�6W   ��5t   '   �� *ListOrderTypes+ �� Text 6N   �� *	OrderType+{�5u      �� 
 �� $ UserControlL�$+ %IsEnabledForUserControlEditableFields�5v   m   � 5w   
   $��7��6   $��1��6   $��	10,0,12,0q�6,    5x      �� 5y      $	��12* �6    �� 5z      $��9* �6    	 5|      �� 5}      �� 5~      .+�5�      	� -   5        $��radioOrderQualifierGTC��5�      $
 TrueY�68   $	��GTC��6J   $��10,0,0,0q�6�   $��2��6�   {�6X   �� 
 �� $ UserControlL�$+ %IsEnabledForUserControlEditableFields�6�   	� 5�      -   5        $��radioOrderQualifierGTD��5�      $	��GTD��6j   $��	79,0,20,0q�6�   $��2��6  $��2��6   68   �� *IsOrderQualifierGTDSelected+{�6x   �� 
 �� $ UserControlL�$+ %IsEnabledForUserControlEditableFields�6-  5�      �� 5�   
   -   5        $��	lstTrader��5�      $��8��5�   @   $��1��6M   $��	10,0,10,5q�6]   ��5�   $   �� *ListTraders+ �� SelectedValue 5�      �� *SelectedTraderName+{�6p   �� 
 �� $ UserControlL�$+ %IsEnabledForUserControlEditableFields�6�   � 5�   
   $��9��6   $��1��6   $
��10,0q�6,   	 5�      �� 5�      �� 5�      .+�5�      	� -   5        $��	radioCash��5�      $
 TrueY�6+   $
��Cash��6=   $��10,0,0,0q�6�   {�6L   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6�   	� 5�      -   5        $��radioMargin��5�      $��Margin��6-   $��79,0,6,0q�6�   $��2��6    6>   �� *IsAccountTypeMarginSelected+{�6p   �� 
 �� $ UserControlL�$. (IsEnabledForUserControlNonEditableFields�6  5�      �� 5�   
   -   5        $ tBoxOwnedQuantity��5�      $��10��6L   $��1��6Z    . ��6-   �� *OwnedQuantity+5�      #  CustomControls.NumericTextBox  5�   
   -   5          Name$ tBoxQuantity��5�   '   $��11��5�   <   $��1��6J   ��5�   '   �� *OpenQuantity+ 5�   '   �� 
 �� $ UserControlL�$- 'IsReadOnlyForEditableFieldsForOpenOrder�5�   \   #  CustomControls.DecimalTextBox  5�   
   -   5          Name$ tBoxStopPrice��5�   '   $��12��6?   $��1��6M   #��[ 6�   $
��10,0q�6   6]   �� 
 �� $ UserControlL�$  IsReadOnlyForEditableField���6�   �� *	StopPrice+6(    5�   
   -   5        $ tBoxLimitPrice��5�   '   #��[ 6?   $��13��5�   K   $��1��6Y   $
��10,0q�6i    5�   '   �� 
 �� $ UserControlL�$  IsReadOnlyForEditableField���5�   /   �� *
LimitPrice+6y   �� 5�   
   -    5        $��
tBoxStatus��5�       . $��14��6Z   $��1��6h   ��6$   �� *Status+$ OneWay=�6z   �� 5�   
   -!   5        $ 	tBoxNotes��5�      $��15��6<   $��1��6J   ��6%   �� *Notes+ 5�      �� 
 �� $ UserControlL�$- 'IsReadOnlyForEditableFieldsForOpenOrder�5�   A   �� 5�   
   -"   5        $��btnSaveOrder��5�      $��17��5�   s   $��
35,0,32,27q�6�   $��2��6�   ��5�   %   �� *SaveCommand+��5�      �� 
 �� $ UserControlL�$ SaveButtonText�6�   �� 5�   
   -#   5        $��btnCancelOrder��5�      $��17��5�   %   $��1��63   $��33,-1,32,27q�6C   $��2��6X   ��5�   '   �� *CancelCommand+��6I   �� 
 �� $ UserControlL�$ CancelButtonText�5�   k   5�      5�      