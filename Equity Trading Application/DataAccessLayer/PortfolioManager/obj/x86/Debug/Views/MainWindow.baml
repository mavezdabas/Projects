   M S B A M L   `   `   `  ����K  GPortfolioManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PortfolioManager.HelpersPortfolioManager.Helpers  5   	   I)clr-namespace:PortfolioManager.ConvertersPortfolioManager.Converters  5   	   p lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls 5   	   | xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting 5   	   !    PortfolioManager.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   8local&clr-namespace:PortfolioManager.Helpers     5   	   ?	converter)clr-namespace:PortfolioManager.Converters     5   	   eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   �chart{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � WindowState$ 	Maximized=�65    � 
ResizeMode$ NoResize=�6M    � 	Resources 5
      ;   5PortfolioManager.Converters.BoolToVisibilityConverter   BoolToVisibilityD   >PortfolioManager.Converters.PositiveNegativeIndicatorConverter  PositveNegative?   9PortfolioManager.Converters.PositiveNegativeAllSecurities  AllSecuritiesConverter)  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value �� Mode��%�   &	        &	      &	 &     '  9       5   
   6I     5   
   6Q     5   
   6S   �� 5   
   "  6   .�5      ��  �@ 
IsSelected 6+   �� *
IsSelected+$ TwoWay=�5      5      .��5      � .+�5   
   �� .@�5      �� $��Symbol Search��6   .��5      � -   5        $
��Grid��5       � ShowGridLines .  
�������	 � RowDefinitions	 5      �� 5      $
��3.5* �6(   �� 5      $
��1.9* �6(   .+�5      � -   5        $��topGrid��5       .  $��0��6@   
 � ColumnDefinitions
 5       �� 5!      $
��0.2* �6/   �� 5"      .+�5%      � -   5        $��profitabilityGrid��5%       .  $��0��6N   	 5&      �� 5'   "   $
��0.7* �60   �� 5(   "   $
��0.7* �60   �� 5)   "   $
��0.7* �60   �� 5*   "   $
��0.7* �60   �� 5+   "   $
��0.7* �60   �� 5,   "   $��0.75* �60   �� 5-   "   $
��0.9* �60   �� 5.   "   
 51      �� 52   "   �� 53   "   .+�56      �� -   5        $��epsLabel��56   $   $	��EPS��64   $��Center=�6B   $
��Bold"�6_   
�������$��20(�6�   $��0��6�   $��0��6�   6�   �� 57      -   5        $��peRatioLabel��57   $   $��	P/E Ratio��68   $��Center=�6L   $
��Bold"�6i   
�������$��20(�6�   $��1��6�   $��0��6�   6�   �� 58      -   5        $��change��58   $   $��Change��62   $��Center=�6C   $
��Bold"�6`   
�������$��20(�6�   $��2��6�   $��0��6�   6�   �� 59      -   5        $��changePercent��59   $   $��Change %��69   $��Center=�6L   $
��Bold"�6i   
�������$��20(�6�   $��3��6�   $��0��6�   6�   �� 5:      -   5        $
��high��5:   $   $
��High��60   $��Center=�6?   $
��Bold"�6\   
�������$��20(�6�   $��4��6�   $��0��6�   6�   �� 5;      -	   5        $	��low��5;   $   $	��Low��6/   $��Center=�6=   $
��Bold"�6Z   
�������$��20(�6   $��5��6�   $��0��6�   6�   �� 5<      -
   5        $��stockExchange��5<   $   $��Exchange��69   $��Center=�6L   $
��Bold"�6i   
�������$��20(�6�   $��6��6�   $��0��6�   6�   �� 5=      -   5        $��previousClose��5=   $   $��
Prev.Close��69   $��Center=�6N   $
��Bold"�6k   
�������$��20(�6�   $��7��6�   $��0��6�   6�   �� 5?      -   5        $��epsLabelValue��5?   &   $��Center=�6P   $
��Bold"�6m   $	��100��6   
���   �$��20(�6�   $��0��6�   $��1��6�   $��5q�6�   
����ح���6;   �� *EPS+6�   �� 5@      -   5        $��peRatioLabelValue��5@   &   $��Center=�6X   $
��Bold"�6u   $	��100��6�   
���   �$��20(�6�   $��1��6�   $��1��6�   $��5q�6�   ��6?   �� *	PERatio+6�   �� 5A      -   5        $��changeLabelValue��5A   &   $��Center=�6V   $
��Bold"�6s   $	��100��6�   $��20(�6�   $��2��6�   $��1��6�   $��5q�6  ��6>   �� *Change+��6�   ��  �� Path$ Change� �� 	Converter# [ 6  �� 5B      -   5        $��changePercentLabelValue��5B   &   $��Center=�6d   $
��Bold"�6�   $	��100��6�   $��20(�6�   $��3��6  $��1��6  $��5q�6   ��6E   �� *ChangePercent+��6�   �� $ ChangePercent�# [ 6-  �� 5C      -   5        $��highLabelValue��5C   &   $��Center=�6R   $
��Bold"�6o   $	��100��6�   
���   �$��20(�6�   $��4��6�   $��1��6�   $��5q�6�   ��6<   �� *High+6�   �� 5D      -   5        $��lowPercentLabelValue��5D   &   $��Center=�6W   $
��Bold"�6t   $	��100��6�   
���   �$��20(�6�   $��5��6�   $��1��6�   $��5q�6�   ��6B   �� *Low+6�   �� 5E      -   5        $��stockExchangeLabelValue��5E   &   $��Center=�6d   $
��Bold"�6�   $	��100��6�   
���   �$��20(�6�   $��6��6�   $��1��6�   $��7q�6�   ��6E   �� *StockExchange+6�   �� 5F      -   5        $��previousCloseLabelValue��5F   &   $��Center=�6d   $
��Bold"�6�   $	��100��6�   
���   �$��20(�6�   $��7��6�   $��1��6�   $��10q�6�   ��6E   �� *PreviousClose+6�   5H      � 5J      -   5        $��mainGrid��5J       .  $��1��6E   	 5K      �� 5L   "   $��0.15* �60   �� 5M   "   .+�5P      �� -   5        $��searchPanel��5P   O    �� Orientation$ 
Horizontal=�6)   $��0��6B   .+�5R   "   -  'System.Windows.Controls.AutoCompleteBox  -   5        $��
tBoxSearch��5R   7   $	��700��6I   $��25(�6�   $��10q�6�   $
��Bold"�6�      Text 6U   �� *
SearchText+$ TwoWay=�   ItemsSource 6}   �� *	Symbols+6�   �� 5T   "   -   5        $��	btnSearch��5T   )   $	��100��6:   $��10q�6F   $��20(�6R   
����ح�$��Search��6�   ��6w   �� *SearchCommand+6�   5U      � 5[      $��1��6#   
 5]   "   �� 5^   &   $
��0.7* �67   �� 5_   &   .+�5b   "   � $	��250��6'   $	��125��63   ��5c   &   �� 5d   *    �� ImageSource$ /Resources/glossyBack.png��65    �� Opacity$	 0.5Q�6]   6m   
 5g   &   �� 5h   *   �� 5i   *   $
��0.5* �6;   .+�5l   &   �� -   5        $��currentPrice��5l   ,   $��0��6a   $��48(�6q   $
��Bold"�6   $��2q�6�   $��Center=�6�   $��Center=�6�   ��6@   �� *CurrentPrice+6�   �� 5n   &   -   5        $��symbol��5n   0   $	��Top=�6>   $��1��6V   $��2q�6f   $��20(�6q   $
��Bold"�6   $��Right=�6�   ��6�   �� *SymbolSearched+5o   '   5q   #   � 5s   "   $��1��6'    .  .+�5t   &   >  8System.Windows.Controls.DataVisualization.Charting.Chart  -   5        $��mcChart��5t   T   
 �� Top$ 80��62    �� Left$ 10��6C   
���   �   Series 5v   .   B  <System.Windows.Controls.DataVisualization.Charting.PieSeries  ?  9System.Windows.Controls.DataVisualization.Charting.Series   Title$ 
Experience��6>   H	  BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries 	  ItemsSource 6Q   �� *ListForPieChart+ 	  IndependentValueBinding 5w   .   �� $
 Name� 	  DependentValueBinding 5x   .   �� $ Value�5y   /   5{   '   5|   #   5}      5      5�      � 5�      -   5        $��graphAndChartGrid��5�       .  $��1��6J   
 5�      �� 5�      �� 5�      .+�5�      �� 
����ح�$��3q�69   ._�5�      � -   5        $��	graphGrid��5�   #   
�������	 5�   "   �� 5�   &   $��6* �64   �� 5�   &   .+�5�   "   � -   5        $��graph��5�   '   $��0��6V   $��10q�6c   ��64   �� *
BrushGraph+5�   #   �� 5�   "   -   5        $��durationButtons��5�   -   $ 
Horizontal=�6D   $��1��6]   .+�5�   &   �� -   5        $��oneDay��5�   -   $��1D��6;   $��50��6k   $��	150,5,5,5q�6v   $
��Bold"�6�   
����ح���6H   �� *OneDayCommand+6�   �� 5�   &   -    5        $��fiveDays��5�   -   $��5D��6=   $��50��6o   $��5q�6z   $
��Bold"�6�   
����ح���6J   �� *FiveDayCommand+6�   �� 5�   &   -!   5        $��threeMonths��5�   -   $��3M��6@   $��50��6s   $��5q�6~   $
��Bold"�6�   
����ح���6M   �� *ThreeMonthCommand+6�   �� 5�   &   -"   5        $��	sixMonths��5�   -   $��6M��6>   $��50��6o   $��5q�6z   $
��Bold"�6�   
����ح���6K   �� *SixMonthCommand+6�   �� 5�   &   -#   5        $��oneYear��5�   -   $��1Y��6<   $��50��6l   $��5q�6w   $
��Bold"�6�   
����ح���6I   �� *OneYearCommand+6�   5�   #   5�      5�      �� 5�      
����ح�$��3q�69   $��1��6M   ._�5�      � -$   5        $��chart��5�   #   .+�5�   "     -%   5        $��
stockChart��5�   .   
�������
���   �$
��Bold"�5�   S    5�   *   E
  ?System.Windows.Controls.DataVisualization.Charting.ColumnSeries
  
���   �
���   � 5�   0   �� *ListForCharts+ 5�   0   �� $ NameOfStock� 5�   0   �� $ NetPnL�5�   +   5�   #   5�      5�      5�      5�      5�      �� 5�      $��Orders��6   .��5�      A� .+�5�      � 	 5�      �� 5�      $��50 �6,   �� 5�      $��30 �6,   �� 5�      $	��540 �6,   �� 5�      .+�5�      �� -&   5        $��sPanel��5�   %   $ 
Horizontal=�63   $��1q�6L   .+�5�      �� 
���   �$	��0.5q�69   ._�5�   "     -'   5        $��	searchBox��5�   7   $��20(�6�   $
��Bold"�6�   $	��650��6�   $��5q�6�   
������  6H   �� *SearchTextOrder+$ TwoWay=� 6u   �� *	Symbols+6�   5�      �� 5�      
���   �$	��0.5q�69   ._�5�   "   �� -(   5        $��btSearch��5�   )   $	��108��69   
������ $��5q�6�   ��6E   �� *SearchCommandOrder+ � Triggers 5�   &   :� 5�   *    :� RoutedEvent$ Button.Click��67   .[�5�   .   �� .��5�   2   �� .��5�   6   W�  �� 
TargetName$ 	btnSearch��5�   %    �� TargetProperty$ Opacity�5�   %    W� From$	 1.0X�5�   %   	 W� To$	 0.0X�60    g� Duration$ 0:0:1D�69     g� AutoReverse  . 5�   %   5�   3   5�   /   5�   +   .��5�   &   �� $ 
Horizontal=�61   .+�5�   *   �� $��22(�64   Search6K   5�   '   5�   #   5�      5�      �� 5�      -)   5        $��radioButtons��5�   %   $ 
Horizontal=�69   $��1��6R   .+�5�      	� -*   5        $��rBtnNew��5�   *   $	��New��69   $��5q�6G   $	��600��6R   $
��Left=�6^   ��6y   �� *
NewCommand+	� 5�      -+   5        $��rbtnOpen��5�   *   $
��Open��6:   $��5q�6I   $	��700��6T   $��Center=�6`   ��6}   �� *OpenCommand+	� 5�      -,   5        $��rbtnAll��5�   *   $	��All��69   $��5q�6G   $	��100��6R   $��Right=�6^   ��6z   �� *
AllCommand+5�      &   System.Windows.Controls.DataGrid  5�      --   5        $��
ordersGrid��5�   #   $��2��65   !   
IsReadOnly! . ��6u   �� *ListToDisplay+" �� SelectedItem" 6�   �� *SelectedItem+$ TwoWay=� 5�      ��%p   '        �� 5�   "   "  6(   .�5�   &   ��  �@ 
IsSelected 5�   *   �� *
IsSelected+5�   #   5�      5
     � 5     -.   5        $��buttonsGrid��5      . $��3��6G   .+�5     �� $ 
Horizontal=�6)   .+�5  "   �� -/   5        $��	btnCreate��5  )   $��CREATE��6:   $��50��6K   $	��100��6W   $��50,20,20,20q�6c   $
��Bold"�6x   
��������6�   �� *CreateCommand+6�   �� 5  "   -0   5        $��	btnUpdate��5  )   $��UPDATE��6:   $��50��6K   $	��100��6W   $��50,20,20,20q�6c   $
��Bold"�6x   
����ح���6�   �� *UpdateCommand+6�   �� 5  "   -1   5        $��	btnDelete��5  )   $��DELETE��6:   $��50��6K   $	��100��6W   $��50,20,20,20q�6c   $
��Bold"�6x   
���  ����6�   �� *DeleteCommand+6�   �� 5  "   -2   5        $��btnSend��5  )   $
��SEND��68   $��50��6G   $	��100��6S   $��650,20,20,20q�6_   $
��Bold"�6u   
���������6�   �� *SendCommand+6�   5     5     5     5     5     �� 5     -3   5        $��ALLSecurities��5     $��AllSecurities��6+   .��5       -4   5        $	��All��5     $��15(�6&   ! . #   AutoGenerateColumns# .  ��6F   �� *AllSecurities+$   Columns$ 5     0  *System.Windows.Controls.DataGridTextColumn  5     ,  &System.Windows.Controls.DataGridColumn%   Header$
% Name��6-   &   
Foreground
& �   �1  +System.Windows.Controls.DataGridBoundColumn'   Binding' 6;   �� *Name+$ TwoWay=�6`     5     $% Symbol��6-   
& �   �' 6=   �� *Symbol+$ TwoWay=�6d     5     $% MarketPrice��6-   
& �   �' 6B   �� *MarketPrice+$ TwoWay=�6n     5      $% PreviousClose��6-   
& �   �' 6D   �� *PreviousClose+$ TwoWay=�6r     5!     $% Volume��6-   
& �   �' 6=   �� *Volume+$ TwoWay=�6d     5"     $% Change��6-   (   
FontWeight$
( Bold"�6d   ' 6=   �� *Change+$ TwoWay=�)   ElementStyle) 5#     �� 5$  "   " ��6(   .�5%  &   ��  � �� 6C   �� $ Change�# [ 5'  '   5(  #   5+       5,     $% ChangePercent��6-   
& �   �' 6D   �� *ChangePercent+$ TwoWay=�6r   5.     50     52     53     54     