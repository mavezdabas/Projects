   M S B A M L   `   `   `  ���� 
  Trader    Trader.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  
MainWindow��$	��700��$	��400�� � WindowState$ 	Maximized=�.���  � ColumnDefinitions �� ��  � RowDefinitions �� $
��0.1* ��� .+�&   System.Windows.Controls.DataGrid  -   $��
updateGrid��$��0��$��0�� �� SelectedItem �� *SelectedItemUpdate+y��� *	Visible+ �� Mode$ TwoWay=����� *UpdateBlockList+$ TwoWay=��� -   $��updateButtons��$��0��$��1��$��10,0,0,0q� �� Orientation$ 
Horizontal=�y��� *	Visible+.+��� -   $��doneUpdating��$��DONE UPDATING��$	��100��$��50��$
��Left=�
������$��10,0,0,0q����� *DoneUpdatingCommand+�� -   $��cancelUpdating��$��CANCEL UPDATING��$	��100��$��50��$
��Left=�
���  ��$��10,0,0,0q����� *CancelUpdatingCommand+� -   $��leftGrid��$��0��$��1�� �� $��8* ��� .+�  -   $��orders��$��0��$��5q�   
IsReadOnly . ���� *ListToDisplay+ � 	Resources )  #System.Windows.Controls.DataGridRow	 �� 
TargetType
 �� Property �� Value��%G   '        �� "	  .��� 
 �@ 
IsSelected �� *
IsSelected+�� -   $��	btnCreate��$��CREATE��$��1��$��20q�$	��100��$��Center=�
���������� *CreateCommand+� -   $��	rightGrid��$��1��$��1�� �� $��2* ��� $
��0.5* ��� $
��1.5* �.+�  -	   $��blocks��$��0�� .    SelectionMode$ Extended=�   RowDetailsVisibilityMode$ VisibleWhenSelected=� �� *SelectedRow+���� *ListToDisplayBlocks+   RowDetailsTemplate �� .R�  $��5q�����  �� Path$ DataContext.Details� �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ WindowL� ��%G   '        �� "	  .��� 
 �@ 
IsSelected �� *
IsSelected+�� -
   $��buttons��$��1��$ 
Horizontal=�.+��� -   $��update��$��UPDATE��
����ح�$��	100,0,5,0q�$	��100��$��50������ *UpdateCommand+�� -   $��delete��$��DELETE��
���  ��$��	100,0,5,0q�$	��100��$��50������ *DeleteCommand+�� -   $��sendForExecution��
����ح�$
��SEND��$��	100,0,5,0q�$	��100��$��50������ *SendCommand+  -   $��executesBlocks��$��2������ *ExecutedBlocks+$ TwoWay=�