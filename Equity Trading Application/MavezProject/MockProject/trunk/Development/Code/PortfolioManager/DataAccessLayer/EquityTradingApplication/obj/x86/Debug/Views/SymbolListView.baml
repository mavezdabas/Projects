   M S B A M L   `   `   `  ����  EquityTradingApplication3    -EquityTradingApplication.Views.SymbolListView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  SymbolListView��5   	   $	��451��6    $	��390��6-    � Left$	 450��69   
 � Top$	 200��6D    � WindowState$ Normal=�6N   .��5      �  � RowDefinitions 5   
   �� 5      $
��258* �6   �� 5      $	��53* �6   .+�5
   
   &   System.Windows.Controls.DataGrid     AutoGenerateColumns .  $��
12,8,12,12q�6�   ��6   �� *SecuritySymbolList+ �� Mode$ OneWay=� �� SelectedItem 6K   �� *SecurityModel+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Security ID��6!   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 66   �� *
SecurityID+$ OneWay=�  5      $	 Security Name��6!   
 68   �� *SecurityName+$ OneWay=�  5      $	 Security Symbol��6!   
 6:   �� *SecuritySymbol+$ OneWay=�5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��136* �6#   �� 5      $
��146* �6#   .+�5      �� $��Select��67   $��29,12,28,12q�6H   ��6   �� *SelectCommand+6_   �� 5      $��Cancel��67   $��1��6H   $��
0,12,40,11q�6X   $��Right=�6l   $	��120��6�   ��6   �� *CancelCommand+6�   5      5      5      