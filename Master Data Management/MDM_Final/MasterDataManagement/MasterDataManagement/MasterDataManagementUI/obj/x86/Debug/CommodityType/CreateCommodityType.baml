   M S B A M L   `   `   `  ����Q  MMasterDataManagementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:MasterDataManagement.UIEntitiesMasterDataManagement.UIEntities  5   	   ?$clr-namespace:MasterDataManagementUIMasterDataManagementUI  5   	   >    8MasterDataManagementUI.CommodityType.CreateCommodityType   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ?local-clr-namespace:MasterDataManagement.UIEntities     5   	   5vali$clr-namespace:MasterDataManagementUI     5   	     � Title$  Create Commodity Type��5   	   $	��300��6'   $	��300��64    � WindowStartupLocation$ CenterScreen=�6@    � WindowStyle$ ThreeDBorderWindow=�6e    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions5   /MasterDataManagement.UIEntities.CommodityTypeUI  c   CommodityClass   CommodityTypeName	 �� 
TargetType
 �� Property �� Value �� Triggers P� Property P� Value �� RelativeSource �� Path��%c  &	        &	 @    '�� f    �� 5   
   " ��65   .R�5	      �  5
      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   .+�5      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 5      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5      5        5   
   $  ��6*   $  ��6<   �� 5   
   "	 ��6   .�5      �� 
 �@=�ErrorTemplate 5      �� 5      .R�5      ]� .+�5      �� $��Right=�6(   
���  ��$��	ExtraBold"�5   9   $��20(�5   (   $��!��66   �� 5      
����  �$��2q�68   ._�5   "   �� 5      5      5      5!       5"      P� 5#       �@=�HasError . . �5$      �� 
 �@�ToolTip 5%      ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5'      5)      5+      .��5-      � -   5        $��GridCreateCommodity��5-        gridBackground#��[ 6&    � DataContext 6N   ��  �� Source# [  � RowDefinitions 5.   
   �� 5/      $	��.5* �6   �� 50      �� 51      �� 52      �� 53      �� 54      $	��.3* �6   �� 55       58   
   �� 59      �� 5:      .+�5=   
   �� $��CREATE COMMODITY TYPE��6   $��Center=�61   $��Center=�6N   $��2��6i   �� 5>   
   $��1��6   $��Commodity Type Name��6   $
��Left=�6<   $��Center=�6W   $��7q�6r   #��[  6}   �� 5?   
   $��2��6   $��Commodity Class��6   $
��Left=�67   $��Center=�6R   $��7q�6m   #��[  6x   �� 5@   
   $��3��6   $��
Start Date��6   $
��Left=�63   $��Center=�6N   $��7q�6i   �� 5A   
   $��4��6   $��End Date��6   $
��Left=�61   $��Center=�6L   $��7q�6g   �� 5B   
   -   5        $ ��txtCreateCommodityTypeName��5B   /   $��1��6   $��1��6   $��10q�6Q   $��1��6]   .��6j   ��5C      �� 5D      $ CommodityTypeName�6    �� ValidationRules 5E      7   1MasterDataManagementUI.StringLengthValidationRule  5F         MinimumLength$ 2��6:      MaximumLength$	 100��5G   ;      ErrorMessage$ Invalid Data��5H   ;   5J      .��5K      5L      �� 5M   
   -   5        $��txtCreateCommodityClass��5M   /   $��2��6   $��1��6   $��10q�6N   $��2��6Z   .��6g   ��5N      �� 5O      $ CommodityClass�6    5P        5Q      $ 2��6:   $	 100��5R   ;   $ Invalid Data��5S   ;   5U      .��5V      5W      �� 5X   
   $��*Mandatory Fields��6   $��5��6.   $��0��6;   $��8(�6K   
���  ��6k   �� 5Y   
   -   5         ��Name$
 Save��5Y   9   $
��Save��6   $��6��6    $��10q�6-   $��5��6Z    �� 	IsDefault . 6g   �� 5Z   
   -   5        $ Cancel��5Z   L   $��Cancel��6   $��6��6"   $��10q�60   $��1��6<   $��6��6q    . 6~   (  "System.Windows.Controls.DatePicker  5[   
   -   5        $��dpStartDate��5[   G   $��25��6   $
��Left=�6!   $��7q�6<   $��Center=�6Z   $	��129��6u   $��1��6�   $��3��6�   $��3��6�   {�.  6�     5\   
   -   5        $��	dpEndDate��5\   G   $��25��6   $
��Left=�6!   $��7q�6<   $��Center=�6X   $	��129��6s   $��1��6   $��4��6�   $��4��6�      SelectedDate 6�   �� *	EndDate+6�   5]      5^      