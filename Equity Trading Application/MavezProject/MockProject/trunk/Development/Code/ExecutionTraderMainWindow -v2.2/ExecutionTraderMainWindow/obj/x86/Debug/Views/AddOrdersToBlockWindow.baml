   M S B A M L   `   `   `  ����T  PExecutionTraderMainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ExecutionTraderMainWindow.ViewModel#ExecutionTraderMainWindow.ViewModel  5   	   <    6ExecutionTraderMainWindow.Views.AddOrdersToBlockWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @vm1clr-namespace:ExecutionTraderMainWindow.ViewModel     5   	     � Title$  AddOrdersToBlockWindow��5   	   $	��400��6(   $	��600��65   .��5      �  � RowDefinitions 5   
   �� 5	      �� 5
      $
��0.3* �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��2��6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dGridAddToBlock��5      $��2��6,   $��10q�6@   $
��Auto��5   >      
IsReadOnly .    AutoGenerateColumns .  ��5   L   �� *	blockList+ �� SelectedItem 5      �� *selectedBlock+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Block Id��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 67   �� *	BlockId+  5      $
 Side��6%   	 63   �� *	BlockSide+  5      $ Symbol��6%   	 65   �� *security.SecuritySymbol+  5      $ Block Status��6%   	 6;   �� *BlockStatus+  5      $ Limit Price��6%   	 6:   �� *
LimitPrice+  5      $ 
Stop Price��6%   	 69   �� *	StopPrice+  5      $ Total Quantity��6%   	 6=   �� *TotalQuantity+  5      $ Open Quantity��6%   	 6<   �� *OpenQuantity+5      5      �� 5    
   -   5        
 ��Name$
 btnSave��5       $��1��6"   $
��Save��6/   $��25q�6>   $	��150��6v   ��6J   �� *SaveCommand+ �� Mode$ OneWay=�6v   �� 5!   
   -   5        $
 	btnCancel��5!      $��1��6$   $��1��61   $��Cancel��6A   $��25q�6R   $	��150��6�   ��6^   �� *CancelCommand+$ OneWay=�6�   5"      5#      