   M S B A M L   `   `   `  ����H  DMultiComboBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullF3clr-namespace:CustomControls;assembly=MultiComboBoxCustomControls  5   	    MasterDataManagementUI0   *MasterDataManagementUI.Market.UpdateMarket   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Csrc3clr-namespace:CustomControls;assembly=MultiComboBox     5   	     � Title$  Update Market��5   	   $	��300��6   $	��300��6,    � WindowStartupLocation$ CenterScreen=�68    � WindowStyle$ ThreeDBorderWindow=�6]    � 
ResizeMode$ NoResize=�6~   $��1��6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions��%J  &	        �� 5   
   " ��65   .R�5      �  5	      �� 5
      $
��Auto �6'   �� 5      $
��Auto �6'   .+�5      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 5      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5      5      5      .��5      � -   5         �Name$ GridUpdateMarket��5        gridBackground#��[ 6%    � RowDefinitions 5   
   �� 5      $	��.5* �6   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      $	��.3* �6   �� 5       5    
   �� 5!      �� 5"      .+�5%   
   �� $��UPDATE MARKET��6   $��Center=�6)   $��Center=�6F   $��2��6a   �� 5&   
   $��Market Name��6   $��1��6'   $
��Left=�64   $��Center=�6O   $��7q�6j   $��74��6u   #��[  6�   �� 5'   
   $��Location��6   $��2��6#   $
��Left=�60   $��Center=�6K   $��7q�6f   #��[  6q   �� 5(   
   $��Commodity Type��6   $��3��6)   $
��Left=�66   $��Center=�6Q   $��7q�6l   #��[  6w   �� 5)   
   $��Currency��6   $��4��6#   $
��Left=�60   $��Center=�6K   $��7q�6f   #��[  6q   �� 5*   
   $��
Start Date��6   $��5��6&   $
��Left=�63   $��Center=�6N   $��7q�6i   �� 5+   
   $��End Date��6   $��6��6$   $
��Left=�61   $��Center=�6L   $��7q�6g   �� 5-   
   -   5        $��txtMarketName��5-   u   $��1��6   $��1��6"   $��5q�6/   	 �� 
IsReadOnly	 . $��1��6h   ��6:   �� *
MarketName+6�   �� 5.   
   -   5        $��cmbLocation��5.   ;   $��2��6   $��1��6    $��5q�60   ��6N   �� 6h   "   CustomControls.MultiComboBox  51   
   -   5        $��cmbCommodityType��51   L   $��	0,10,-3,0q�6   $��3��6/   $��1��6<   
 �� SelectionMode$
 Multiple=�6d   $��Center=�52   "      IsCreateNewEnabled .    DisplaySeparator$ , ��54   "   $��2��56   W   $��3��6k   ��55   "   �� *CommodityTypeNames+$   CustomControls.BindableListBox   SelectedItems 56   "   �� *SelectedCommodityTypeNames+58      �� 59   
   -   5        $��cmbCurrency��59   ;   $��4��6   $��1��6    $��5q�60   ��6N   ��  �� SelectedItem 6f   �� *
Currency+6�   �� 5:   
   -   5         ��Name$
 Save��5:   T   $
��SAVE��6   $��8��6    $��0��6-   $��5q�6=   $	��100��6H   $��4��6u    �� 	IsDefault .  �� IsCancel .  6�   �� 5;   
   -   5        $ Cancel��5;   V   $��CANCEL��6   $��8��6"   $��1��6/   $��5q�6?   $	��100��6J   $��5��6{    . 6�   �� 5<   
   $��*Mandatory Fields��6   $��7��6.   $��0��6;   $��8(�6K   
���  ��6k   (  "System.Windows.Controls.DatePicker  5=   
   -   5        $��datePicker1��5=   G   $��25��6   $
��Left=�6!   $��5q�6<   $	��Top=�6Z   $	��129��6r   $��1��6~   $��5��6�   $��2��6�   {�.     SelectedDate 6�   �� *	StartDate+6�     5>   
   -	   5        $��datePicker2��5>   M   $��25��6   $
��Left=�6!   $��5,5,0,0q�6<   $	��Top=�6`   $	��129��6x   $��1��6�   $��6��6�   $��3��6�    6�   �� *	EndDate+6�   5?      5@      