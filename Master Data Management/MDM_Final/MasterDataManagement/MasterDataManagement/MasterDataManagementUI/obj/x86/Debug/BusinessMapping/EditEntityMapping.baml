   M S B A M L   `   `   `  ����Q  MMasterDataManagementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:MasterDataManagementUI.Validations"MasterDataManagementUI.Validations  5   	   >    8MasterDataManagementUI.BusinessMapping.EditEntityMapping   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Blocal0clr-namespace:MasterDataManagementUI.Validations     5   	     � Title$  Edit Entity Mapping��5      $	��350��6$   $	��300��61    � WindowStartupLocation$ CenterScreen=�6=    � WindowStyle$ ThreeDBorderWindow=�6b    � 
ResizeMode$ NoResize=�6�   .��5      � $��4q�6      gridBackground#��[  6    � RowDefinitions 5#   
   �� 5$      �� 5%      �� 5&      �� 5'      �� 5(      �� 5)      �� 5*      �� 5+      �� 5,      �� 5-       � ColumnDefinitions 5/   
   �� 50      �� 51      .+�53   
   �� $��EDIT ENTITY MAPPING TYPE��6   $��Center=�64   $��Center=�6Q   $��2��6l   $��0��6�   $��0��6�   �� 54   
   $��Mapping String *��6   $��1��6,   $��0��69   $��6q�6I   �� 55   
   $��Entity Name *��6   $��2��6)   $��0��66   $��6q�6G   �� 56   
   $��Mapping Description��6   $��3��6/   $��0��6<   $��6q�6L   �� 57   
   $��Source System *��6   $��4��6+   $��0��68   $��6q�6H   �� 58   
   $��IsDefault mapping *��6   $��5��6/   $��0��6<   $��6q�6L   �� 59   
   $��Start Date *��6   $��6��6(   $��0��65   $��6q�6E   �� 5:   
   $��End Date��6   $��7��6$   $��0��61   $��6q�6A   �� 5;   
   $�� *Mandatory Fields��6   $��8��6/   $��0��6<   
���  ��6L   �� 5<   
   -   5         ��Name$ TBoxMappingString��5<      $��1��6-   $��1��6:    �� 	MaxLength$	 100��6n   $��3q�6~   ��6J   ��  �� Path$ MappingString�6~   �� 5=   
   -   5        $ TBoxEntityName��5=      $��2��6,   $��1��69   $��3q�6j   ��6I   �� $ 
EntityName�6j   �� 5>   
   -   5        $ TBoxDescription��5>      $��3��6+   $��1��68   $	 100��6q   $��3q�6�   ��6H   �� $ MappingDescription�6�   �� 5L   
   -   5        	 ��Name$	 
TBoxSource��5L      $��4��6'   $��1��64   $��3q�6\   ��6D   �� 6\   �� 5N   
   -   5        $	 CBoxDefault��5N      $��5��6(   $��1��65   $��3q�6F   (  "System.Windows.Controls.DatePicker  5O   
   -   5        $��	startDate��5O      $��6��6&   $��6��63   $��3q�6�   {�.  
   SelectedDate
 6�   �� *	StartDate+6�     5P   
   -   5        $��endDate��5P      $��7��6$   $��7��61   $��3q�6�      IsDropDownOpen .  
 6   �� *	EndDate+6�   �� 5S   
   -   5        $
��Save��5S      $��0��6    $��9��60   $��5q�6=   6H   �� 5T   
   -	   5        $��Cancel��5T      $��1��6"   $��10��62   $��5q�6@   6K   5U      5W      