   M S B A M L   `   `   `  ����  MasterDataManagementUI4    .MasterDataManagementUI.Currency.DeleteCurrency   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Delete Currency��5   	   $	��300��6!   $	��300��6.    � WindowStartupLocation$ CenterScreen=�6:    � WindowStyle$ ThreeDBorderWindow=�6_    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         CTextBlockTemplate �� 
TargetType � ColumnDefinitions��%J  &	        �� 5   
   " ��65   .R�5      �  5	      �� 5
      $
��Auto �6'   �� 5      $
��Auto �6'   .+�5      �� #��z��6   $��0��6=   $
��Left=�6M   $��Center=�6h   �� 5      $��*��6   $
��Left=�6%   
���  ��$��1��6Q   $��Center=�6a   $��64��6|   $��2��6�   5      5      5      .��5      � -   5         �Name$ GridDeleteCurrency��5        gridBackground#��[ 6'    � RowDefinitions 5   
   �� 5      $	��.5* �6   �� 5      �� 5      �� 5      $	��.2* �6   �� 5       5   
   �� 5      �� 5      .+�5   
   �� $��DELETE CURRENCY��6   $��2��6+   $��Center=�6?   $��Center=�6\   �� 5    
   $��1��6   $��Currency Name��6   $
��Left=�65   $��Center=�6P   $��15q�6k   #��[  6w   �� 5!   
   $��2��6   $��Description��6!   $
��Left=�64   $��Center=�6O   $��15q�6j   �� 5"   
   $��1��6   $��1��6   $��20q�6/   	 �� 
IsReadOnly	 . $��1��6k   ��6;   �� *CurrencyName+6k   �� 5#   
   $��2��6   $��1��6   $��20q�6/   	 . $��2��6j   ��6;   �� *Description+6j   �� 5$   
   -   5        
 ��Name$

 Save��5$   ;   $��Delete��6   $��4��6"   $��20q�6/   $��3��6\    �� 	IsDefault . 6i   �� 5%   
   -   5        $
 Cancel��5%   K   $��Cancel��6   $��4��6"   $��1��6/   $��20q�6?   $��4��6p    �� IsCancel . 6}   �� 5&   
   $��*Mandatory Fields��6   $��3��6.   $��0��6;   $��8(�6K   
���  ��6k   5'      5(      