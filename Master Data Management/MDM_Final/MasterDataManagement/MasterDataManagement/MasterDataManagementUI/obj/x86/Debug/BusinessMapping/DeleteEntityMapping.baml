   M S B A M L   `   `   `  ����  MasterDataManagementUI@    :MasterDataManagementUI.BusinessMapping.DeleteEntityMapping   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Delete Entity Mapping��5      $	��350��6&   $	��300��63    � WindowStartupLocation$ CenterScreen=�6?    � WindowStyle$ ThreeDBorderWindow=�6d    � 
ResizeMode$ NoResize=�6�   .��5      � $��4q�6      gridBackground#��[  6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $ ��DELETE ENTITY MAPPING TYPE��6   $��Center=�66   $��Center=�6S   $��2��6n   $��0��6�   $��0��6�   �� 5   
   $��Mapping String *��6   $��1��6,   $��0��69   $��6q�6I   �� 5   
   $��Entity Name *��6   $��2��6)   $��0��66   $��6q�6G   �� 5    
   $��Mapping Description��6   $��3��6/   $��0��6<   $��6q�6L   �� 5!   
   $��Source System *��6   $��4��6+   $��0��68   $��6q�6H   �� 5"   
   $��IsDefault mapping *��6   $��5��6/   $��0��6<   $��6q�6L   �� 5#   
   $��Start Date *��6   $��6��6(   $��0��65   $��6q�6E   �� 5$   
   $��End Date��6   $��7��6$   $��0��61   $��6q�6A   �� 5%   
   $�� *Mandatory Fields��6   $��8��6/   $��0��6<   
���  ��6L   �� 5)   
   -   5         ��Name$ TBoxMappingString��5)      $��1��6-   $��1��6:    �� 	MaxLength$	 100��6n   $��3q�6~   ��6J   ��  �� Path$ MappingString�6~   �� 5*   
   -   5        $ TBoxEntityName��5*      $��2��6+   $��1��68   $��3q�6i   	 �� 
IsReadOnly	 . ��6H   �� $ 
EntityName�6t   �� 5+   
   -   5        $ TBoxDescription��5+      $��3��6+   $��1��68   $	 100��6q   $��3q�6�   ��6H   �� $ MappingDescription�6�   �� 5,   
   -   5        $ 
TBoxSource��5,      $��4��6&   $��1��63   $	 100��6j   $��3q�6z   ��6C   �� $ SourceSystemName�6z   �� 5-   
   -   5        $ TBoxDefault��5-      $��5��6'   $��1��64   $	 100��6k   $��3q�6{   ��6D   �� $ IsDefaultMapping�6{   (  "System.Windows.Controls.DatePicker  5.   
   -   5        $��StartDatePicker��5.      $��6��6,   $��6��69   $��3q�6�   
   IsDropDownOpen
 .     SelectedDate 6�   �� *	StartDate+6�     5/   
   -   5        $��EndDatePicker��5/      $��7��6*   $��7��67   $��3q�6�   
 .   6�   �� *	EndDate+6�   �� 52   
   -   5        $��Delete��52      $��0��6"   $��9��62   $��5q�6?   6J   �� 53   
   -	   5        $��Cancel��53      $��1��6"   $��10��62   $��5q�6@   6K   57      58      