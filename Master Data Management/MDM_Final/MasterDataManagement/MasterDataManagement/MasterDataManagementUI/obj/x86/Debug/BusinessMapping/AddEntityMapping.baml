   M S B A M L   `   `   `  ����Q  MMasterDataManagementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:MasterDataManagementUI.Validations"MasterDataManagementUI.Validations  5   	   =    7MasterDataManagementUI.BusinessMapping.AddEntityMapping   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Blocal0clr-namespace:MasterDataManagementUI.Validations     5   	     � Title$  Create Entity Mapping��5   	   $	��300��6'   $	��300��64    � WindowStartupLocation$ CenterScreen=�6@    � WindowStyle$ ThreeDBorderWindow=�6e    � 
ResizeMode$ NoResize=�6�   .��5"      � -   5        $��addGrid��5"         gridBackground#��[  6    � RowDefinitions 5&   
   �� 5'      $	��26* �6   �� 5(      $	��26* �6   �� 5)      $	��26* �6   �� 5*      $	��26* �6   �� 5+      $	��26* �6   �� 5,      $	��26* �6   �� 5-      $	��32* �6   �� 5.      $	��31* �6   �� 5/      $	��15* �6   �� 50      $	��26* �6    � ColumnDefinitions 52   
   �� 53      �� 54      .+�58   
   �� $ ��CREATE ENTITY MAPPING TYPE��6   $��Center=�66   $��Center=�6S   $��2��6n   $��0��6�   $��0��6�   �� 59   
   $��Mapping String *��6   $��1��6,   $��0��69   $��6q�6I   �� 5:   
   $��Entity Name *��6   $��2��6)   $��0��66   $��6q�6G   �� 5;   
   $��Mapping Description��6   $��3��6/   $��0��6<   $��6q�6L   �� 5<   
   $��Source System *��6   $��4��6+   $��0��68   $��6q�6H   �� 5=   
   $��IsDefault mapping *��6   $��5��6/   $��0��6<   $��6q�6L   �� 5>   
   $��Start Date *��6   $��6��6(   $��0��65   $��6q�6E   �� 5?   
   $��End Date��6   $��7��6$   $��0��61   $��6q�6A   �� 5@   
   $�� *Mandatory Fields��6   $��8��6/   $��0��6<   
���  ��6L   �� 5C   
   -   5         ��Name$ TBoxMappingString��5C      $��1��6-   $��1��6:    �� 	MaxLength$	 100��6n   $��3q�6~   ��6J   ��  �� Path$ MappingString�6~   �� 5D   
   -   5        	 ��Name$	 CBoxEntityName��5D      $��2��6-   $��1��6:   $��3q�6b   ��6J   �� 6b   �� 5E   
   -   5        $ TBoxDescription��5E      $��3��6+   $��1��68   $	 100��6q   $��3q�6�   ��6H   �� $ MappingDescription�6�   �� 5G   
   -   5        $	 
TBoxSource��5G      $��4��6'   $��1��64   $��3q�6\   ��6D   �� 6\   �� 5V   
   -   5        $	 CBoxDefault��5V      $��5��6(   $��1��65   $��3q�6F   
 �� SelectedValue$
 No��6Q   (  "System.Windows.Controls.DatePicker  5X   
   -   5          Name$ 	startDate��5X      $��6��6(   $��1��65   $��3q�6�      SelectedDate 6�   �� *	StartDate+6�     5Y   
   -   5        $��endDate��5Y      $��7��6$   $��7��61   $��3q�6�    6   �� *	EndDate+6�   �� 5[   
   -	   5        $��btnAddEntityMapping��5[      $	��Add��6,   $��0��6:   $��9��6J   $��5q�6W   6b   �� 5\   
   -
   5        $��btnCancelEntityMapping��5\      $��Cancel��6/   $��1��6@   $��9��6P   $��5q�6]   6h   5`      5b      