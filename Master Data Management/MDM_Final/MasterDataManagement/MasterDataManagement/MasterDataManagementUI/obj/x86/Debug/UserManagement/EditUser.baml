   M S B A M L   `   `   `  ����  MasterDataManagementUI4    .MasterDataManagementUI.UserManagement.EditUser   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  EditUser��5   	   $	��500��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�63    � 
ResizeMode$ NoResize=�6X   .��5      �    gridBackground#��[  6    � RowDefinitions 5   
   �� 5      �� 5	      �� 5
      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��2��6   $��EDIT WINDOW��6(   $��20(�6;   $
��Bold"�6I   $��Arial)�6[   $��Center=�6n   �� 5   
   -   5         ��Name$ UserIdSearchBox��5   "   $��UserName��6   $��Right=�6;   $��
0,71,45,16q�6W   $	��110��6k   �� 5   
   -   5        $��1��5      $��Search��6!   $
��Left=�62   $��
43,71,0,16q�6M   $	��105��6a   6m   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ EditSearchGrid��5   H   $��2��6      GridLinesVisibility$ 
Horizontal=�6'   $��122,0,109,1q�6x   $��2��6�   $��1��6�   ��6`   �� 6�   �� 5   
   -   5        $��3��5      $��RETURN��6   $��Right=�6/   $��0,28,241,51q�6K   $��88��6`   $��1��6k   6{   �� 5   
   -   5        $��3��5      $
��EDIT��6   $
��Left=�6-   $��234,28,0,51q�6H   $��89��6]   6h   5      5      