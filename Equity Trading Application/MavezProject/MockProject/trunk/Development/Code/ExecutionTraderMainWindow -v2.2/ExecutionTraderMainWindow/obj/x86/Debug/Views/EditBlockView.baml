   M S B A M L   `   `   `  ����T  PExecutionTraderMainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ExecutionTraderMainWindow.ViewModel#ExecutionTraderMainWindow.ViewModel  5   	   3    -ExecutionTraderMainWindow.Views.EditBlockView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @vm1clr-namespace:ExecutionTraderMainWindow.ViewModel     5   	     � Title$  EditBlockView��5   	   $	��482��6   $
��1060��6,    � 
ResizeMode$ NoResize=�69    � WindowState$ Normal=�6O   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��65* �6   �� 5      $
��230* �6   �� 5      $
��148* �6   .+�5   
   �� .+�5      �� -   5         ��Name$. (HiddenChangePriceMessageBoxCommandRunner��5      $y�Hidden=�6G   ��6[   �� *" ChangePriceMessageBoxShowCommand+ �� Mode$ OneWay=�&   System.Windows.Controls.DataGrid  5      -   5          Name$ EditBlockDataGrid��5   K   $��0��6   $
��Auto��6g   
����ح�   AutoGenerateColumns .     
IsReadOnly .  	   RowDetailsVisibilityMode$	 VisibleWhenSelected=�5   *   $��0q�6Y   ��5      �� *SelectedBlockList+$ TwoWay=�
 �� SelectedItem
 5      �� *SelectedBlock+$ TwoWay=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Block ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 6W      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *	BlockId+6c     5      $
 Side��6)   $	 110 6U    .  67   �� *	BlockSide+6a     5      $ Symbol��6)   $	 110 6e    .  69   �� *security.SecuritySymbol+6q     5       $ Status��6)   $	 110 6Z    .  69   �� *BlockStatus+6f     5!      $ Limit Price��6)   $	 110 6�    6>   �� *
LimitPrice+ �� NotifyOnTargetUpdated .  �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=�6�     5"      $ 
Stop Price��6)   $	 110 6�    6=   �� *	StopPrice+ . $ PropertyChanged=�$ TwoWay=�6�     5#      $ Total Quantity��6)   $	 110 6c    .  6A   �� *TotalQuantity+6o     5$      $ Executed Quantity��6)   $	 160 6i    .  6D   �� *ExecutedQuantity+6u     5%      $ Open Quantity��6)   $	 110 6a    .  6@   �� *OpenQuantity+6m   5'      5(      � 5*   
   $��2��6   $��0,66,0,0q�6    � ColumnDefinitions 5+      �� 5,      �� 5-      .+�50      �� -   5        $ 
SaveButton��50      $
��SAVE��6)   $��0��68   $��Center=�51      $��Center=�62   $��40��53      $	��150��6!   ��54      �� *SaveBlockCommand+$ OneWay=��� 58      -   5        $ CancelButton��58      $��CANCEL��6+   $��1��6<   $��Center=�59      $��Center=�62   $��40��5;      $	��150��6!   ��5<      �� *CancelCommand+$ OneWay=��� 5>      -   5        $ HiddenRemoveOrderButton��5>      $y�Hidden=�6i   ��66   �� *DeleteOrderCommand+$ OneWay=�6i   5?        5@   
   -   5        $ 
OrdersGrid��5@         RowBackground
 �����   	RowHeight$ 30Q�6=   $   HorizontalScrollBarVisibility$ Visible=�6L   
������� .  
���   �   AlternatingRowBackground
 ����� . $��
10,6,12,88q�6M  $��1��6a  $��2��6n  ��6t   �� *OrdersOfSelectedBlock+$ TwoWay=�
 6  �� *SelectedOrder+ 5A        5B      $ OrderId��6%    . $	 110 6d    66   �� *	OrderId+6d     5C      -   5        
symbol��$ Symbol��5C   5    . $	 110 6�    6E   �� *Security.SecuritySymbol+6�     5D      $
 Side��6%    . $	 110 6^    63   �� *Side+6^     5E      $ 
Order Type��6%    . $	 110 6i    69   �� *	OrderType+6i     5F      $ 	Qualifier��6%    . $	 110 6m    68   �� *OrderQualifier+6m     5G      $ Status��6%    . $	 110 6m    65   �� *Status.StatusName+6m     5H      $ Account Type��6%    . $	 110 6m    6;   �� *AccountType+6m     5I      $ Total Quantity��6%    . $	 110 6q    6=   �� *TotalQuantity+6q     5J      $ Open Quantity��6%    . $	 110 6o    6<   �� *OpenQuantity+6o     5K      $ Allocated Quantity��6%    . $	 110 6y    6A   �� *AllocatedQuantity+6y     5L      $ 
Stop Price��6%   $	 110 6W    69   �� *	StopPrice+6W     5M      $ Limit Price��6%   $	 110 6Y    6:   �� *
LimitPrice+6Y     5N      $ PortFolio Manager��6%    . $	 110 6s    6@   �� *Manager.Name+6s   4  .System.Windows.Controls.DataGridTemplateColumn  5O      $ Action��6)      CellTemplate 5P      �� 5Q      .R�5R      �� -   5        $��Remove Order��5R   %   6W   5S      5U      5W      5X      5Y      