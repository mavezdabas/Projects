   M S B A M L   `   `   `  ����H  DMultiComboBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullF3clr-namespace:CustomControls;assembly=MultiComboBoxCustomControls  5.   	    MasterDataManagementUI0   *MasterDataManagementUI.Market.DeleteMarket   5+   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5,   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5-   	   Csrc3clr-namespace:CustomControls;assembly=MultiComboBox     5.   	     � Title$  Delete Market��5/   	   $	��300��6   $	��300��6,    � WindowStartupLocation$ CenterScreen=�68    � WindowStyle$ ThreeDBorderWindow=�6]    � 
ResizeMode$ NoResize=�6~   $��1��6�    � 	Resources 50         CTextBlockTemplate �� 
TargetType � ColumnDefinitions��%J  &	        �� 52   
   " ��65   .R�53      �  54      �� 55      $
��Auto �6'   �� 56      $
��Auto �6'   .+�58      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 59      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5:      5;      5<      .��5=      � -   5         �Name$ GridDeleteMarket��5=        gridBackground#��[ 6%    � RowDefinitions 5>   
   �� 5?      $	��.5* �6   �� 5@      �� 5A      �� 5B      �� 5C      �� 5D      �� 5E      �� 5F      $	��.3* �6   �� 5G       5K   
   �� 5L      �� 5M      .+�5P   
   �� $��DELETE MARKET��6   $��Center=�6)   $��Center=�6F   $��2��6a   �� 5Q   
   $��Market Name��6   $��1��6'   $
��Left=�64   $��Center=�6O   $��7q�6j   $��74��6u   #��[  6�   �� 5R   
   $��Location��6   $��2��6#   $
��Left=�60   $��Center=�6K   $��7q�6f   #��[  6q   �� 5S   
   $��Commodity Type��6   $��3��6)   $
��Left=�66   $��Center=�6Q   $��7q�6l   #��[  6w   �� 5T   
   $��Currency��6   $��4��6#   $
��Left=�60   $��Center=�6K   $��7q�6f   #��[  6q   �� 5U   
   $��
Start Date��6   $��5��6&   $
��Left=�63   $��Center=�6N   $��7q�6i   �� 5V   
   $��End Date��6   $��6��6$   $
��Left=�61   $��Center=�6L   $��7q�6g   �� 5W   
   -   5        $��txtMarketName��5W   u   $��1��6   $��1��6"   $��5q�6/   	 �� 
IsReadOnly	 . $��1��6h   ��6:   �� *
MarketName+6�   �� 5X   
   -   5        $��cmbLocation��5X   ;   $��2��6   $��1��6    $��5q�60   {�.  ��6N   �� 6{   "   CustomControls.MultiComboBox  5[   
   -   5        $��cmbCommodityType��5[   L   $��	0,10,-3,0q�6   $��3��6/   $��1��6<   
 �� SelectionMode$
 Multiple=�6d   {�.  $��Center=�5\   "      IsCreateNewEnabled .    DisplaySeparator$ , ��5^   "   $��2��5`   W   $��3��6k   ��5_   "   �� *CommodityTypeNames+$   CustomControls.BindableListBox   SelectedItems 5`   "   �� *SelectedCommodityTypeNames+5b      �� 5c   
   -   5        $��cmbCurrency��5c   ;   $��4��6   $��1��6    $��5q�60   {�.  ��6N   ��  �� SelectedItem 6f   �� *
Currency+ �� Text 6�   �� *
Currency+6�   �� 5d   
   -   5         ��Name$ Delete��5d   T   $
��SAVE��6   $��8��6    $��0��6-   $��5q�6=   $	��100��6H   $��4��6y    �� 	IsDefault .  �� IsCancel .  6�   �� 5e   
   -   5        $ Cancel��5e   V   $��CANCEL��6   $��8��6"   $��1��6/   $��5q�6?   $	��100��6J   $��5��6{    . 6�   �� 5f   
   $��*Mandatory Fields��6   $��7��6.   $��0��6;   $��8(�6K   
���  ��6k   (  "System.Windows.Controls.DatePicker  5g   
   -   5        $��datePicker1��5g   G   $��25��6   $
��Left=�6!   $��5q�6<   $	��Top=�6Z   $	��129��6r   $��1��6~   $��5��6�   $��2��6�      SelectedDate 6�   �� *	StartDate+6�     5h   
   -	   5        $��datePicker2��5h   M   $��25��6   $
��Left=�6!   $��5,5,0,0q�6<   $	��Top=�6`   $	��129��6x   $��1��6�   $��6��6�   $��3��6�    6�   �� *	EndDate+6�   5i      5j      