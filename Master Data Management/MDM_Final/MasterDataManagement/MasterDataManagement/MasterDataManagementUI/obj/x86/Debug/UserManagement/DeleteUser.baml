   M S B A M L   `   `   `  ����  MasterDataManagementUI6    0MasterDataManagementUI.UserManagement.DeleteUser   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
DeleteUser��5   	   $	��500��6   $	��800��6)    � 
ResizeMode$ NoResize=�65    � WindowStartupLocation$ CenterScreen=�6K   .��5      �    gridBackground#��[  6    � RowDefinitions 5   
   �� 5      �� 5      �� 5	      �� 5
       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   �� $��3��6   $��Delete User��6$   $��20(�6:   $
��Bold"�6H   $��Arial)�6Z   $��Center=�6m   �� 5   
   -   5         ��Name$ UserIdSearchBox��5   "   $��UserName��6   $��Right=�6;   $��
0,71,28,16q�6W   $	��110��6k   �� 5   
   -   5        $��1��5      $��Search��6!   $
��Left=�62   $��
19,71,0,16q�6M   $	��105��6a   6m   �� 5   
   -   5         ��Name$ chkMultiple��5      $��Multiple Delete��6(   $��2��6B   $��20(�6R   $
��Bold"�6`   $��Bottom=�6r   $��0,0,0,18q�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��DeleteSearchGrid��5   H   $��3��6      GridLinesVisibility$ 
Horizontal=�6'   $��122,0,109,1q�6x   $��2��6�   $��1��6�   ��6`   �� 6�   �� 5   
   $��3��6   $��RETURN��6   $��Right=�6/   $��0,28,135,51q�6K   $��88��6`   $��2��6k   �� 5   
   -   5        $��3��5      $��Delete��6   $
��Left=�6/   $��125,28,0,51q�6J   $��89��6_   6j   5      5      