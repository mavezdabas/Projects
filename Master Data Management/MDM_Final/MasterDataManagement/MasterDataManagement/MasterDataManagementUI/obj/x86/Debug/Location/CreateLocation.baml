   M S B A M L   `   `   `  ����Q  MMasterDataManagementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:MasterDataManagement.UIEntitiesMasterDataManagement.UIEntities  5   	   ?$clr-namespace:MasterDataManagementUIMasterDataManagementUI  5   	   4    .MasterDataManagementUI.Location.CreateLocation   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ?local-clr-namespace:MasterDataManagement.UIEntities     5   	   5vali$clr-namespace:MasterDataManagementUI     5   	     � Title$  Create Location��5   	   $	��300��6!   $	��300��6.    � WindowStartupLocation$ CenterScreen=�6:    � WindowStyle$ ThreeDBorderWindow=�6_    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions5   /MasterDataManagement.UIEntities.CommodityTypeUI  c   CommodityClass   CommodityTypeName	 �� 
TargetType
 �� Property �� Value �� Triggers P� Property P� Value �� RelativeSource �� Path��%c  &	        &	 @    '�� f    �� 5	   
   " ��65   .R�5
      �  5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   .+�5      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 5      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5      5        5   
   $  ��6*   $  ��6<   �� 5   
   "	 ��6   .�5      �� 
 �@=�ErrorTemplate 5      �� 5      .R�5      ]� .+�5      �� $��Right=�6(   
���  ��$��	ExtraBold"�5   9   $��20(�5   (   $��!��66   �� 5      
����  �$��2q�68   ._�5   "   �� 5      5       5!      5#       5$      P� 5%       �@=�HasError . . �5&      �� 
 �@�ToolTip 5'      ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5)      5+      5-      .��5/      � -   5        $��GridCreateLocation��5/        gridBackground#��[ 6%    � RowDefinitions 50   
   �� 51      $	��.5* �6   �� 52      �� 53      �� 54      $	��.2* �6   �� 55       58   
   �� 59      �� 5:      .+�5<   
   �� $��CREATE LOCATION��6   $��0��6,   $��0��69   $��2��6I   $��Center=�6]   $��Center=�6z   �� 5=   
   $��1��6   $��Location Name*��6   $
��Left=�66   $��Center=�6Q   $��15q�6l   #��[  6x   �� 5>   
   $��2��6   $��Description��6!   $
��Left=�64   $��Center=�6O   $��15q�6j   �� 5@   
   -   5         ��Name$ txtLocationName��5@   ;   $��1��6   $��1��6   $��20q�6/   .��6U   ��5A      �� 5B      $ LocationName�6    �� ValidationRules 5C      7   1MasterDataManagementUI.StringLengthValidationRule  5D         MinimumLength$ 1��6:      MaximumLength$	 100��5E   ;      ErrorMessage$ Invalid Data��5F   ;   5H      .��5I      5J      �� 5L   
   -   5        $ txtLocationDescription��5L   ;   $��2��6   $��1��6   $��20q�6/   .��6\   ��5M      �� 5N      $ Description�6    5O        5P      $ 1��6:   $	 100��5Q   ;   $ Invalid Data��5R   ;   5T      .��5U      5V      �� 5Y   
   $��*Mandatory Fields��6   $��3��6.   $��0��6;   $��8(�6K   
���  ��6k   �� 5Z   
   -   5         ��Name$
 Save��5Z   9   $
��Save��6   $��4��6    $��20q�6-   6G   �� 5[   
   -   5        $ Cancel��5[   L   $��Cancel��6   $��4��6"   $��20q�60   $��1��6<   6\   5\      5]      