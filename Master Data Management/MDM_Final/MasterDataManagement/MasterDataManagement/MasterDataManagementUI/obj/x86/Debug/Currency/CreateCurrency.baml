   M S B A M L   `   `   `  ����Q  MMasterDataManagementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:MasterDataManagement.UIEntitiesMasterDataManagement.UIEntities  5   	   ?$clr-namespace:MasterDataManagementUIMasterDataManagementUI  5   	   4    .MasterDataManagementUI.Currency.CreateCurrency   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ?local-clr-namespace:MasterDataManagement.UIEntities     5   	   5vali$clr-namespace:MasterDataManagementUI     5   	     � Title$  Create Currency��5   	   $	��300��6!   $	��300��6.    � WindowStartupLocation$ CenterScreen=�6:    � WindowStyle$ ThreeDBorderWindow=�6_    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions0   *MasterDataManagement.UIEntities.CurrencyUI  c   CurrencyName   Description	 �� 
TargetType
 �� Property �� Value �� Triggers P� Property P� Value �� RelativeSource �� Path��%c  &	        &	 @    '�� f    �� 5	      " ��69   .R�5
      �  5      �� 5      $
��Auto �6+   �� 5      $
��Auto �6+   .+�5      �� #��z��6    $��0��6A   $
��Left=�6Q   $��Center=�6l   �� 5      $��*��6    $
��Left=�6)   
���  ��$��1��6U   $��Center=�6e   $��64��6�   $��2��6�   5      5        5   
   $  ��6%   $  ��65   �� 5   
   "	 ��6   .�5      �� 
 �@=�ErrorTemplate 5      �� 5      .R�5      ]� .+�5      �� $��Right=�6(   
���  ��$��	ExtraBold"�5   9   $��20(�5   (   $��!��66   �� 5      
����  �$��2q�68   ._�5   "   �� 5      5       5!      5#       5$      P� 5%       �@=�HasError . . �5&      �� 
 �@�ToolTip 5'      ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5)      5+      5-      .��5/      � -   5        $��GridCreateCurrency��5/        gridBackground#��[ 6%    � RowDefinitions 50   
   �� 51      $	��.5* �6   �� 52      �� 53      �� 54      $	��.2* �6   �� 55       59   
   �� 5:      �� 5;      .+�5=   
   �� $��CREATE CURRENCY��6   $��2��6*   $��Center=�6>   $��Center=�6[   �� 5>   
   $��1��6   $��Currency Name��6   $
��Left=�66   $��Center=�6Q   $��15q�6l   #��[  6x   �� 5?   
   $��2��6   $��Description��6   $
��Left=�64   $��Center=�6O   $��15q�6j   #��[  6v   �� 5A   
   -   5         ��Name$ txtCurrencyName��5A      $��1��6+   $��1��68   $��20q�6H   $��1��6T   .��6a   ��5B      �� 5C      $ CurrencyName�6    �� ValidationRules 5D      7   1MasterDataManagementUI.StringLengthValidationRule  5E         MinimumLength$ 2��6:      MaximumLength$	 100��5F   ;      ErrorMessage$ Invalid Data��5G   ;   5I      .��5J      5K      �� 5L   
   -   5        $ txtCurrencyDescription��5L      $��2��62   $��1��6?   $��20q�6O   $��2��6[   .��6h   ��5M      �� 5N      $ Description�6    5O        5P      $ 2��6:   $	 100��5Q   ;   $ Invalid Data��5R   ;   5T      .��5U      5W      �� 5X   
   -   5         ��Name$
 Save��5X   9   $
��Save��6   $��4��6    $��20q�6-   $��3��6Z    �� 	IsDefault . 6g   �� 5Y   
   -   5        $ Cancel��5Y   L   $��Cancel��6   $��4��6"   $��20q�60   $��1��6<   $��4��6q    �� IsCancel . 6~   �� 5Z   
   $��*Mandatory Fields��6   $��3��6.   $��0��6;   $��8(�6K   
���  ��6k   5[      5\      