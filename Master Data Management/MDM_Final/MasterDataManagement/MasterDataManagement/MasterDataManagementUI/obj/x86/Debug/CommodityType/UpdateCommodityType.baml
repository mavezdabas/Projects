   M S B A M L   `   `   `  ����  MasterDataManagementUI>    8MasterDataManagementUI.CommodityType.UpdateCommodityType   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  Update Commodity Type��5   	   $	��300��6'   $	��300��64    � WindowStartupLocation$ CenterScreen=�6@    � WindowStyle$ ThreeDBorderWindow=�6e    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions��%J  &	        �� 5   
   " ��65   .R�5      �  5      �� 5	      $
��Auto �6'   �� 5
      $
��Auto �6'   .+�5      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 5      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5      5      5      .��5      � -   5         �Name$ GridUpdateCommodity��5        gridBackground#��[ 6(    � RowDefinitions 5   
   �� 5      $	��.5* �6   �� 5      �� 5      �� 5      �� 5      �� 5      $	��.3* �6   �� 5       5   
   �� 5      �� 5      .+�5!   
   �� $��UPDATE COMMODITY TYPE��6   $��Center=�61   $��Center=�6N   $��2��6i   �� 5"   
   $��1��6   $��Commodity Type Name��6   $
��Left=�6<   $��Center=�6W   $��7q�6r   #��[  6}   �� 5#   
   $��2��6   $��Commodity Class��6   $
��Left=�67   $��Center=�6R   $��7q�6m   #��[  6x   �� 5$   
   $��3��6   $��
Start Date��6   $
��Left=�63   $��Center=�6N   $��7q�6i   �� 5%   
   $��4��6   $��End Date��6   $
��Left=�61   $��Center=�6L   $��7q�6g   �� 5&   
   -   5        $!��Txt_CreateCommodityTypeName��5&   R   $��1��6   $��1��6   $��10q�6u   	 �� 
IsReadOnly	 . $��1��6�   ��6/   �� *CommodityTypeName+6�   �� 5'   
   -   5        $��Txt_CreateCommodityClass��5'   O   $��2��6   $��1��6   $��10q�6o   $��2��6{   ��6/   �� *CommodityClass+6{   �� 5)   
   $��*Mandatory Fields��6   $��5��6.   $��0��6;   $��8(�6K   
���  ��6k   �� 5*   
   -   5        
 ��Name$

 Save��5*   :   $
��Save��6   $��6��6    $��10q�6-   $��5��6[    �� 	IsDefault . 6h   �� 5+   
   -   5        $
 Cancel��5+   a   $��Cancel��6   $��6��6"   $��10q�60   $��1��6<   $��6��6q    �� IsCancel . 6~   (  "System.Windows.Controls.DatePicker  5,   
   -   5        $��datePicker1��5,   I   $��25��6   $��Center=�6!   $��7q�6>   $��Center=�6\   $	��129��6w   $��1��6�   $��3��6�   $��3��6�   {�.     SelectedDate 6�   �� *	StartDate+6�     5-   
   -   5        $��datePicker2��5-   I   $��25��6   $��Center=�6!   $��7q�6>   $��Center=�6\   $	��129��6w   $��1��6�   $��4��6�   $��4��6�    6�   �� *	EndDate+6�   5.      5/      