   M S B A M L   `   `   `  ����S  OEquityTradingApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:EquityTradingApplication.Converters#EquityTradingApplication.Converters  5   	   p lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls 5   	   S.clr-namespace:EquityTradingApplication.Helpers EquityTradingApplication.Helpers  5   	   2    ,EquityTradingApplication.Views.PortfolioView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Clocal1clr-namespace:EquityTradingApplication.Converters     5   	   eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5   	   BsendBtn.clr-namespace:EquityTradingApplication.Helpers     5   	     � Title$  PortfolioView��5   	   $	��600��6   $	��800��6,    � WindowState$ 	Maximized=�68    � 
ResizeMode$ NoResize=�6P    � 	Resources 5	      9  3EquityTradingApplication.Converters.ColourConverter   colorConverter<   6EquityTradingApplication.Converters.DeleteBtnConverter  deleteBtnConverter;   5EquityTradingApplication.Converters.RadioBtnConverter  radioBtnConverter@  :EquityTradingApplication.Helpers.SendExecutionBtnConverter  sendBtnConverter �� 
TargetType �� Property �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType ��Name	 �� Padding
 �� ImageSource  PriceChangeStyle*  $System.Windows.Controls.DataGridCell �� Triggers �� Binding �� 	Converter �� Value��%#  &	        &	      &	 &     &	 9     '�� L     '	� �     '  �     &	 �    7   7     5   
   6      5   
   6#     5   
   6"     5   
   6,   �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   6:   5      �� 5   
   " 	�6   .�5      ��  � ��$
 Bold"�6+   6:   5      �� 5   
   "  6   .�5      ��  � ��$ Center=�69   �� 5       � ��$ 20��6'   �� 5       �@ SeparatorBrush
 �   �6/   �� 5       � ��$ Black"�6+   �� 5       � �� 5      �� 5       "  6&   .R�5!      � .+�5"      �� $ columnHeaderBorder��6%   $��1q�6A   $	 3,0,3,0q�6U   
���   ���5#   "   �� 5$   &   $
 /Resources/header.png��61   6W   ._�5&   "   �� 5'      5(      5)      5+      5,      �� 5.   
   "  6)    5/      �� 50       6   �� 8    True51   B   .a�52      ��  � ��
 � � �6C   53      �� 54       6   �� 8  	 False55   B   .a�56      ��  � ��
 �  ��6A   57      5:      5<      .��5>      A� .+�5?      � ��5A      �� 5B      $
 /Resources/Background.jpg��6    �� Opacity$	 0.5Q�6E   6U    � RowDefinitions 5E      �� 5F      $��50 �6(   �� 5G      $��30 �6(   �� 5H      $	��740 �6(   �� 5I      .+�5L      �� -   5        $��searchPanel��5L   !    �� Orientation$ 
Horizontal=�64   $��1q�6M   .+�5M      �� 
���   �$	��0.5q�65   ._�5O      -  'System.Windows.Controls.AutoCompleteBox  -   5        $��
tBoxSearch��5O   3   $��20(�6n   $
��Bold"�6|   $	��650��6�   $��5q�6�   
������    Text 6E   �� *
SearchText+ �� Mode$ TwoWay=�6�   5Q      �� 5R      
���   �$	��0.5q�65   ._�5S      �� -   5        $��	btnSearch��5S   %   $	��108��66   
������ $��5q�6}   ��6B   �� *SearchCommand+ � Triggers 5T   "   :� 5U   &    :� RoutedEvent$ Button.Click��63   .[�5V   *   �� .��5W   .   �� .��5X   2   W�  �� 
TargetName$ 	btnSearch��5Y   %    �� TargetProperty$ Opacity�5Z   %    W� From$	 1.0X�5[   %   	 W� To$	 0.0X�60    g� Duration$ 0:0:1D�69    g� AutoReverse . 5\   %   5]   /   5^   +   5_   '   .��5a   "   �� $ 
Horizontal=�6-   .+�5b   &   �� $��22(�60   Search6G   5c   #   5d      5e      5f      �� 5i      -   5        $��radioButtons��5i   !   $ 
Horizontal=�65   $��1��6N   .+�5j      	� -   5        $��rBtnNew��5j      $	��New��6-   $��5q�6;   $	��600��6F   $
��Left=�6R   ��6m   �� *
NewCommand+ d� 	IsChecked 6�   �� *RadioNewButton+$ TwoWay=�	� 5l      -   5        $��rbtnOpen��5l      $
��Open��6.   $��5q�6=   $	��700��6H   $��Center=�6T   ��6q   �� *OpenCommand+ 6�   �� *RadioOpenButton+	� 5n      -   5        $��rbtnAll��5n      $	��All��6-   $��5q�6;   $	��100��6F   $��Right=�6R   ��6n   �� *
AllCommand+ 6�   �� *RadioAllButton+5p      &   System.Windows.Controls.DataGrid  5r      -   5        $��dataGrid��5r         	CellStyle# [ 6/   $��2��6]      AutoGenerateColumns .     
IsReadOnly . ��6�   �� *OrderViewList+  �� SelectedItem  6�   �� *SelectedItem+$ TwoWay=� 5s      )	  #System.Windows.Controls.DataGridRow��%p   '	        �� 5t      " 	 6$   .�5u   "   ��  �@	 
IsSelected 5v      �� *
IsSelected+5w      5x      !   Columns! 5z      4
  .System.Windows.Controls.DataGridTemplateColumn
  5{      " 
  CellTemplate" 5|   "   �� 5}   &   .R�5~   *   �� $��25��61   $��25��6<   ��6H   �� *DataContext.ViewOrderCommand+# �� RelativeSource# �� *FindAncestor+$ �� AncestorType"$ �.��5   .   �� $ 
Horizontal=�69   .+�5�   2   �� $��/Resources/search.png��68   $��Uniform=�6W   5�   /   5�   +   5�   '   5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn%   Header$% Order ID��61   &   
Foreground
& �   �1  +System.Windows.Controls.DataGridBoundColumn'   Binding' 6C   �� *	OrderID+$ TwoWay=�6k     5�      $% Security Name��61   
& �   �' 6H   �� *SecurityName+$ TwoWay=�6u     5�      $% Symbol��61   
& �   �' 6A   �� *Symbol+$ TwoWay=�6h     5�      $
% Side��61   
& �   �' 6?   �� *Side+$ TwoWay=�6d     5�      $% Order Status��61   
& �   �' 6G   �� *
StatusName+$ TwoWay=�6r     5�      $% Market Price��61   
& �   �' 6G   �� *MarketPrice+$ TwoWay=�6s     5�      $% PnL Position��61   (   FontSize$( 15Q�6p   ' 6G   �� *
Position+$ TwoWay=�6p   5�      �� 5�      -	   5        $��buttons��5�   !   $ 
Horizontal=�60   $��3��6I   .+�5�      �� -
   5        $��	btnCreate��5�   !   $��5q�62   $	��120��6=   
������ $
��Left=�6b   ��6}   �� *OpenCreateOrder+.��5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $��17(�6,   $��5,0,0,0q�6:   Create6T   5�      5�      �� 5�      -   5        $��	btnDelete��5�      $��5q�6*   $	��120��65   
������ $��Center=�6|   ��6Z   �� *DeleteCommand+{�5�   "   �� ) �� Path$) SelectedItem�# [ .��5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $��17(�6,   $��5,0,0,0q�6:   Delete6T   5�      5�      �� 5�      -   5        $��btnGraph��5�   !   $��5q�61   $	��120��6<   
������ $��Center=�6a   ��6~   �� *	OpenGraph+.��5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $��17(�6,   $��5,0,0,0q�6:   Graph6S   5�      5�      �� 5�      -   5        $��btnSendForExecution��5�   !   $��	900,5,5,5q�6<   $	��120��6O   
������ $��Right=�6�   ��6[   �� *SendCommand+$ OneWay=�{�5�      �� $) SelectedItem�# [ .��5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $��17(�6,   Send6A   5�      5�      5�      5�      5�      5�      