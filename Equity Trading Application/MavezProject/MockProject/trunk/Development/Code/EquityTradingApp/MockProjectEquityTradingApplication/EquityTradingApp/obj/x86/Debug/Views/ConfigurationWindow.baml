   M S B A M L   `   `   `  ����K  GEquityTradingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:EquityTradingApp.ViewModelsEquityTradingApp.ViewModels  5   	   0    *EquityTradingApp.Views.ConfigurationWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   8vm)clr-namespace:EquityTradingApp.ViewModels     5   	     � Title$  Configuration Window��5   	   $	��350��6&   $	��525��63   .��5      � 
����� � � DataContext 6   ��  � RowDefinitions 5   
   �� 5	      $��30 �6   �� 5
      �� 5      �� 5      $��30 �6   �� 5      �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      $	��150 �6   .+�5   
   �� $��Security Information��6   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
EquityGrid��5      $��2��6'   $��1��68   $��0��6E   $��10q�6U   ��5      �� *
securities+ �� SelectedItem 5      �� *Config+�� 5   
   $��Configuration Information��6   $��3��64     5   
   -   5        $ ConfigurationGrid��5      $��2��6.   $��4��6?   $��0��6L   $��10q�6\   ��5      �� *SecurityConfig+�� 5!   
   $��1��6   $��6��6%    66   ��  �� ElementName$ ConfigurationGrid�� �� Path$ SelectedItem�.+�5"      �� $��10q�6   ��6"   �� *
SecurityID+�� 5#      $��10q�6   ��6"   �� *MaxPriceSpread+�� 5$      $��10q�6   ��6"   �� *MaxExecutionNumber+�� 5%      $��10q�6   ��6"   �� *MaxExecutionInterval+�� 5&      $��10q�6   ��6"   �� *FullyExecutedOrderProbability+5'      �� 5)   
   -   5         ��Name$ btnSave��5)      $��7��6"   $��10q�6/   $��Center=�6;   $��Center=�6X   $
��Save��6s   $	��100��6�   $��20(�6�   ��5*      �� *SaveCommand+	 �� Mode$	 OneWay=��� 5+   
   -   5        $ 	btnCancel��5+      $��7��6$   $��1��61   $��10q�6A   $
��Left=�6M   $��Center=�6h   $��Cancel��6�   $	��100��6�   $��20(�6�   ��5,      �� *CancelCommand+$	 OneWay=�5.      5/      