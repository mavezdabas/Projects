   M S B A M L   `   `   `  ���� K  GPortfolioManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PortfolioManager.HelpersPortfolioManager.Helpers  I)clr-namespace:PortfolioManager.ConvertersPortfolioManager.Converters  p lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls | xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting !    PortfolioManager.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     8local&clr-namespace:PortfolioManager.Helpers     ?	converter)clr-namespace:PortfolioManager.Converters     eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     �chart{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit       � Title$  
MainWindow��$	��350��$	��525�� � WindowState$ 	Maximized=� � 
ResizeMode$ NoResize=� � 	Resources ;   5PortfolioManager.Converters.BoolToVisibilityConverter   BoolToVisibilityD   >PortfolioManager.Converters.PositiveNegativeIndicatorConverter  PositveNegative?   9PortfolioManager.Converters.PositiveNegativeAllSecurities  AllSecuritiesConverter)  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value �� Mode��%�   &	        &	      &	 
     '             �� "  .���  �@ 
IsSelected �� *
IsSelected+$ TwoWay=�.��� .+��� .@��� $��Symbol Search��.��� -   $
��Grid�� � ShowGridLines .  
�������	 � RowDefinitions	 �� $
��3.5* ��� $
��1.9* �.+�� -   $��topGrid�� .  $��0��
 � ColumnDefinitions
 �� $
��0.2* ��� .+�� -   $��profitabilityGrid�� .  $��0��	 �� $
��0.7* ��� $
��0.7* ��� $
��0.7* ��� $
��0.7* ��� $
��0.7* ��� $��0.75* ��� $
��0.9* ��� 
 �� �� .+��� -   $��epsLabel��$	��EPS��$��Center=�$
��Bold"�
�������$��20(�$��0��$��0���� -   $��peRatioLabel��$��	P/E Ratio��$��Center=�$
��Bold"�
�������$��20(�$��1��$��0���� -   $��change��$��Change��$��Center=�$
��Bold"�
�������$��20(�$��2��$��0���� -   $��changePercent��$��Change %��$��Center=�$
��Bold"�
�������$��20(�$��3��$��0���� -   $
��high��$
��High��$��Center=�$
��Bold"�
�������$��20(�$��4��$��0���� -	   $	��low��$	��Low��$��Center=�$
��Bold"�
�������$��20(�$��5��$��0���� -
   $��stockExchange��$��Exchange��$��Center=�$
��Bold"�
�������$��20(�$��6��$��0���� -   $��previousClose��$��
Prev.Close��$��Center=�$
��Bold"�
�������$��20(�$��7��$��0���� -   $��epsLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��0��$��1��$��5q�
����ح����� *EPS+�� -   $��peRatioLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��1��$��1��$��5q����� *	PERatio+�� -   $��changeLabelValue��$��Center=�$
��Bold"�$	��100��$��20(�$��2��$��1��$��5q����� *Change+����  �� Path$ Change� �� 	Converter# [ �� -   $��changePercentLabelValue��$��Center=�$
��Bold"�$	��100��$��20(�$��3��$��1��$��5q����� *ChangePercent+���� $ ChangePercent�# [ �� -   $��highLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��4��$��1��$��5q����� *High+�� -   $��lowPercentLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��5��$��1��$��5q����� *Low+�� -   $��stockExchangeLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��6��$��1��$��7q����� *StockExchange+�� -   $��previousCloseLabelValue��$��Center=�$
��Bold"�$	��100��
���   �$��20(�$��7��$��1��$��10q����� *PreviousClose+� -   $��mainGrid�� .  $��1��	 �� $��0.15* ��� .+��� -   $��searchPanel�� �� Orientation$ 
Horizontal=�$��0��.+�-  'System.Windows.Controls.AutoCompleteBox  -   $��
tBoxSearch��$	��700��$��25(�$��10q�$
��Bold"�   Text �� *
SearchText+$ TwoWay=�   ItemsSource �� *	Symbols+�� -   $��	btnSearch��$	��100��$��10q�$��20(�
����ح�$��Search������ *SearchCommand+� $��1��
 �� $
��0.7* ��� .+�� $	��250��$	��125������  �� ImageSource$ /Resources/glossyBack.png�� �� Opacity$	 0.5Q�
 �� �� $
��0.5* �.+��� -   $��currentPrice��$��0��$��48(�$
��Bold"�$��2q�$��Center=�$��Center=����� *CurrentPrice+�� -   $��symbol��$	��Top=�$��1��$��2q�$��20(�$
��Bold"�$��Right=����� *SymbolSearched+� $��1�� .  .+�>  8System.Windows.Controls.DataVisualization.Charting.Chart  -   $��mcChart��
 �� Top$ 80�� �� Left$ 10��
���   �   Series B  <System.Windows.Controls.DataVisualization.Charting.PieSeries  ?  9System.Windows.Controls.DataVisualization.Charting.Series   Title$ 
Experience��H	  BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries 	  ItemsSource �� *ListForPieChart+ 	  IndependentValueBinding �� $
 Name� 	  DependentValueBinding �� $ Value�� -   $��graphAndChartGrid�� .  $��1��
 �� �� .+��� 
����ح�$��3q�._�� -   $��	graphGrid��
�������	 �� $��6* ��� .+�� -   $��graph��$��0��$��10q����� *
BrushGraph+�� -   $��durationButtons��$ 
Horizontal=�$��1��.+��� -   $��oneDay��$��1D��$��50��$��	150,5,5,5q�$
��Bold"�
����ح����� *OneDayCommand+�� -    $��fiveDays��$��5D��$��50��$��5q�$
��Bold"�
����ح����� *FiveDayCommand+�� -!   $��threeMonths��$��3M��$��50��$��5q�$
��Bold"�
����ح����� *ThreeMonthCommand+�� -"   $��	sixMonths��$��6M��$��50��$��5q�$
��Bold"�
����ح����� *SixMonthCommand+�� -#   $��oneYear��$��1Y��$��50��$��5q�$
��Bold"�
����ح����� *OneYearCommand+�� 
����ح�$��3q�$��1��._�� -$   $��chart��.+�  -%   $��
stockChart��
�������
���   �$
��Bold"� E
  ?System.Windows.Controls.DataVisualization.Charting.ColumnSeries
  
���   �
���   � �� *ListForCharts+ �� $ NameOfStock� �� $ NetPnL��� $��Orders��.��A� .+�� 	 �� $��50 ��� $��30 ��� $	��540 ��� .+��� -&   $��sPanel��$ 
Horizontal=�$��1q�.+��� 
���   �$	��0.5q�._�  -'   $��	searchBox��$��20(�$
��Bold"�$	��650��$��5q�
������  �� *SearchTextOrder+$ TwoWay=� �� *	Symbols+�� 
���   �$	��0.5q�._��� -(   $��btSearch��$	��108��
������ $��5q����� *SearchCommandOrder+ � Triggers :�  :� RoutedEvent$ Button.Click��.[��� .���� .��W�  �� 
TargetName$ 	btnSearch�� �� TargetProperty$ Opacity� W� From$	 1.0X�	 W� To$	 0.0X� g� Duration$ 0:0:1D�  g� AutoReverse  . .���� $ 
Horizontal=�.+��� $��22(�Search�� -)   $��radioButtons��$ 
Horizontal=�$��1��.+�	� -*   $��rBtnNew��$	��New��$��5q�$	��600��$
��Left=����� *
NewCommand+	� -+   $��rbtnOpen��$
��Open��$��5q�$	��700��$��Center=����� *OpenCommand+	� -,   $��rbtnAll��$	��All��$��5q�$	��100��$��Right=����� *
AllCommand+&   System.Windows.Controls.DataGrid  --   $��
ordersGrid��$��2��!   
IsReadOnly! . ���� *ListToDisplay+" �� SelectedItem" �� *SelectedItem+$ TwoWay=� ��%G   '        �� "  .���  �@ 
IsSelected �� *
IsSelected+� -.   $��buttonsGrid�� . $��3��.+��� $ 
Horizontal=�.+��� -/   $��	btnCreate��$��CREATE��$��50��$	��100��$��50,20,20,20q�$
��Bold"�
���������� *CreateCommand+�� -0   $��	btnUpdate��$��UPDATE��$��50��$	��100��$��50,20,20,20q�$
��Bold"�
����ح����� *UpdateCommand+�� -1   $��	btnDelete��$��DELETE��$��50��$	��100��$��50,20,20,20q�$
��Bold"�
���  ������ *DeleteCommand+�� -2   $��btnSend��$
��SEND��$��50��$	��100��$��650,20,20,20q�$
��Bold"�
����������� *SendCommand+�� -3   $��ALLSecurities��$��AllSecurities��.��  -4   $	��All��$��15(�! . #   AutoGenerateColumns# .  ���� *AllSecurities+$   Columns$ 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn%   Header$
% Name��&   
Foreground
& �   �1  +System.Windows.Controls.DataGridBoundColumn'   Binding' �� *Name+$ TwoWay=�  $% Symbol��
& �   �' �� *Symbol+$ TwoWay=�  $% MarketPrice��
& �   �' �� *MarketPrice+$ TwoWay=�  $% PreviousClose��
& �   �' �� *PreviousClose+$ TwoWay=�  $% Volume��
& �   �' �� *Volume+$ TwoWay=�  $% Change��(   
FontWeight$
( Bold"�' �� *Change+$ TwoWay=�)   ElementStyle) �� " ��.���  � �� �� $ Change�# [   $% ChangePercent��
& �   �' �� *ChangePercent+$ TwoWay=�