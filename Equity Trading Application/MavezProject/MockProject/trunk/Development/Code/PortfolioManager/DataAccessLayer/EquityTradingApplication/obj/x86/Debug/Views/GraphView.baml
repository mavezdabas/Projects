   M S B A M L   `   `   `  ����p  lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls  5       EquityTradingApplication.   (EquityTradingApplication.Views.GraphView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   eautoTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5      W SOxyPlot.Wpf, Version=2014.1.265.1, Culture=neutral, PublicKeyToken=75e952ba404cdbb0%oxyhttp://oxyplot.codeplex.com  5   	   -   5          � WindowStyle$
  None=�5   	    J� IsHitTestVisible .  � Title$ 	GraphView��5   	   $	��600��6   $	��800��6(    � Left$	 450��64   
 � Top$	 200��6?   .��5      A� .+�5   
   �  � RowDefinitions 5      �� 5      $
��0.1* �6    �� 5      $
��0.1* �6    �� 5      .+�5!      �� -   5        $��btnClose��5!      $��10q�6E   $��Right=�6Q   $��0��6m   $	��100��6z   $��CLOSE��6�   ��6%   �� *CloseWindow+6�   � 5#      -   5        $��searchPanel��5#       � Orientation$ 
Horizontal=�6+   $��1��6D   .+�5$      �� 
���   �$	��0.5q�6-   ._�5&      -   'System.Windows.Controls.AutoCompleteBox  -   5        $��
tBoxSearch��5&   +   $��20(�6f   $
��Bold"�6t   $	��650��6�   $��5q�6�      Text 6=   �� *
SearchText+ �� Mode$ TwoWay=�6�   5(      �� 5)      
���   �$	��0.5q�6-   ._�5*      �� -   5        $��	btnSearch��5*      $	��108��6.   
������ $��5q�6u   ��6:   �� *SearchCommand+	 � Triggers	 5+      :� 5,      
 :� RoutedEvent$
 Button.Click��6+   .[�5-   "   �� .��5.   &   �� .��5/   *   W�  �� 
TargetName$ 	btnSearch��50   %    �� TargetProperty$ Opacity�51   %    W� From$	 1.0X�52   %   	 W� To$	 0.0X�60    g� Duration$ 0:0:1D�69    g� AutoReverse . 53   %   54   '   55   #   56      .��58      ��  �� Orientation$ 
Horizontal=�6%   .+�59      �� $��22(�6(   Search6?   5:      5;      5<      5=      � 5?      $��2��6   .+�5@        OxyPlot.Wpf.Plot  -   5          Name$ Plot1��5@         Title$ A Graph��6*   $��20q�6L      Model 6:   �� 5A      5B      5C      5D      5F      