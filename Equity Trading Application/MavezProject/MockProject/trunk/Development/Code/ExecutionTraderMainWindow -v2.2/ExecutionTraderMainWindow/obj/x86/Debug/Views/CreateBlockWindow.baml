   M S B A M L   `   `   `  ����T  PExecutionTraderMainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ExecutionTraderMainWindow.ViewModel#ExecutionTraderMainWindow.ViewModel  5   	   7    1ExecutionTraderMainWindow.Views.CreateBlockWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @vm1clr-namespace:ExecutionTraderMainWindow.ViewModel     5   	     � Title$  CreateBlockWindow��5   	   $	��400��6#   $	��950��60    � 	Resources 5      ��%    5	      .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      $
��0.2* �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��2��6   .+�5   
   � 
���   � 5      �� 5      �� 5       5      �� 5      $��90 �6#   �� 5      $��90 �6#   �� 5      $��90 �6#   �� 5      $��90 �6#   �� 5       $��90 �6#   �� 5!      $��90 �6#   �� 5"      $	��100 �6#   �� 5#      $	��120 �6#   �� 5$      $	��100 �6#   .+�5&      �� $��Block ID��6   �� 5'      $��1��6   $
��Side��6,   �� 5(      $��2��6   $��Symbol��6,   �� 5)      $��3��6   $��Status��6,   �� 5*      $��4��6   $��Limit Price��6,   �� 5+      $��5��6   $��
Stop Price��6,   �� 5,      $��6��6   $��Total Quantity��6,   �� 5-      $��7��6   $��Executed Quantity��6,   �� 5.      $��8��6   $��Open Quantity��6,   �� 5/      -   5         ��Name$ BlockId��5/      $��1��6)   ��66   �� *
blockModel+ �� Path$ BlockId��� 50      -   5        $ 	BlockSide��50      $��1��6/   $��1��6<   ��6L   �� *
blockModel+$ 	BlockSide��� 51      -   5        $ SecuritySymbol��51      $��1��60   $��2��6=   ��6M   �� *Symbol+53      �� 54      -   5        $ BlockStatus��54      $��1��6-   $��3��6:   ��6J   �� *
blockModel+$ BlockStatus��� 55      -   5        $ 
LimitPrice��55      $��1��6,   $��4��69   ��6I   �� *
blockModel+$ 
LimitPrice��� 56      -   5        $ 	StopPrice��56      $��1��6+   $��5��68   ��6H   �� *
blockModel+$ 	StopPrice��� 57      -   5        $ TotalQuantity��57      $��1��6/   $��6��6<   ��6L   �� *
blockModel+$ TotalQuantity��� 58      -   5        $ ExecutedQuantity��58      $��1��62   $��7��6?   ��6O   �� *
blockModel+$ ExecutedQuantity��� 59      -	   5        $ OpenQuantity��59      $��1��6.   $��8��6;   ��6K   �� *
blockModel+$ OpenQuantity�5:      &   System.Windows.Controls.DataGrid  5<   
   -
   5          Name$ dGridViewOrder��5<      $��2��6+   $��10q�6?   $��1��6r      AutoGenerateColumns .  ��6K   �� *SelectedOrders+   Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn	   Header$	 OrderId��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 66   �� *	OrderId+  5A      $	 
Order Type��6%   
 69   �� *	OrderType+  5B      $	 	Qualifier��6%   
 68   �� *OrderQualifier+  5C      $	 Status��6%   
 65   �� *Status.StatusName+  5D      $	 Account Type��6%   
 6;   �� *AccountType+  5E      $	 Total Quantity��6%   
 6=   �� *TotalQuantity+  5F      $	 Open Quantity��6%   
 6<   �� *OpenQuantity+  5G      $	 Allocated Quantity��6%   
 6A   �� *AllocatedQuantity+  5H      $	 
Stop Price��6%   
 69   �� *	StopPrice+  5I      $	 Limit Price��6%   
 6:   �� *
LimitPrice+  5J      $	 PortFolio Manager��6%   
 6@   �� *Manager.Name+5M      5N      �� 5O   
   -   5         ��Name$ btnSave��5O      $��1��6"   $
��Save��6/   $��10q�6>   $	��150��6J   ��6V   �� *SaveCommand+ �� Mode$ OneWay=��� 5P   
   -   5        $ 	btnCancel��5P      $��1��6$   $��1��61   $��Cancel��6A   $��10q�6R   $	��150��6^   ��6j   �� *CancelCommand+$ OneWay=�5Q      5S      