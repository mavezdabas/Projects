   M S B A M L   `   `   `  ����p  lSystem.Windows.Controls.Input.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35pTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls  5       MasterDataManagementUI-   'MasterDataManagementUI.BusinessUserHome   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      htoolkitTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit     5      -   5        $��14(�5   i   
����� �
�������$��3q�6�     � Title$  BusinessUserHome��5   	   $	��550��6"   $	��525��6/    � WindowStartupLocation$ CenterScreen=�6;    � WindowStyle$ ThreeDBorderWindow=�5   	    � WindowState$ 	Maximized=�6*    � 	Resources 5       �� MergedDictionaries �� Source�� 5	   
    5
      �� 5      $# /Styles/TabControlStyles.xaml?�6%   6N   �� 5      $" /Styles/LinkButtonStyle.xaml?�6%   6M   %    5      .��5      �    gridBackground#��[  6    � RowDefinitions 5   
   �� 5      $��0.05* �6   �� 5      $��0.025* �6   �� 5      .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      �� 5      5      �� 5   
   -   5        	 ��Name$	 	userImage��5      $��0��6#   $��0��60   $7��1/MasterDataManagementUI;component/Images/user.jpg��6@   $
��Left=�6{   6�   �� 5   
   $��Master Data Management��6   $��0��62   $��1��6?   $��Arial)�6O   $��26(�6b   $��SemiExpanded&�6p   $��Normal$�6�   $
��Bold"�6�   ���	#FF092169$��Center=�6�   6�   �� 5   
   -   5        $��User Profile��5      $��1��6(     
LinkButton#��[ 65   $
��Left=�6p   6�   �� 5    
   -   5        
 ��Name$
 BusinessUserTab��5    c   $��5q�6   $��2��6      styleTabControl#���  6-   .@�5"      �� -   5         ��Name$ 	TabSearch��5"   ]   $��Search��6     styleTabItemLeft#���  6&   .��5#      �  5$      �� 5%      $
��0.1* �6(   �� 5&      �� 5'      $
��0.1* �6(   .+�5)      �  5*      �� 5+      $
��0.3* �6/   �� 5,      �� 5-      $
��0.3* �6/   .+�50      -   'System.Windows.Controls.AutoCompleteBox  -   5          Name$ autoTxtGenericSearch��50   N   $��1��62   $��10q�6B   6N   �� 51      -   5         ��Name$ 	BtnSearch��51   N   $��Search��6!   $��2��62   $��10q�6B   6a   52      &   System.Windows.Controls.DataGrid  53      -   5        $��dgSearch��53   ,   $��1��6      
IsReadOnly .    AlternatingRowBackground
 ����� �� AlternationCount$ 2��6�   ��6<   �� ��54      �� 55       �� ImageSource$; 5/MasterDataManagementUI;component/Images/download.jpg��6)    �� Opacity$ .5Q�6m   57      59      5:      �� 5;      -	   5        $��	TabMarket��5;   `   $��Market��6     styleTabItemDefault#���  6&   .��5<      �  5=      �� 5>      $
��0.1* �6(   �� 5?      �� 5@      $
��0.1* �6(   .+�5B      �  5C      �� 5D      $
��0.3* �6/   �� 5E      �� 5F      $
��0.3* �6/   .+�5I        -
   5        $ autoTxtMarketSearch��5I   N   $��1��62   $��10q�6B   6N   �� 5J      -   5        $ BtnMarketSearch��5J   N   $��Search��6!   $��2��62   $��10q�6B   6g   5K        5M      -   5        $��dgMarket��5M   ,   $��1��6    .    AutoGenerateColumns .  
 �����$ 2��6�   ��6<   ��    Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$ Market Name��61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6F   �� *
MarketName+6g     5P      $ Location Name��61    6H   �� *LocationName+6k     5Q      $ Currency Name��61    6H   �� *
Currency+6g     5R      $ 
Start Date��61    6E   �� *	StartDate+6e     5T      $ End Date��61    6C   �� *	EndDate+6a     5U      $ Commodity Names��61    6J   �� *CommodityNames+6o   5Y      � 5[      $��2��6    5\      �� 5]      �� 5^      �� 5_      .+�5a      �� -   5        $ BtnMarketAdd��5a   K   $	��Add��6!   $��0��6/   $��20q�6?   6a   �� 5b      -   5        $ BtnMarketUpdate��5b   N   $��Update��6!   $��1��62   $��20q�6B   6g   �� 5c      -   5        $ BtnMarketDelete��5c   N   $��Delete��6!   $��2��62   $��20q�6B   6g   5d      5e      5f      �� 5g      -   5        $��TabCommodity��5g   c   $��	Commodity��6   #���  6)   .��5h      �  5i      �� 5j      $
��0.1* �6(   �� 5k      �� 5l      $
��0.1* �6(   .+�5n      �  5o      �� 5p      $
��0.3* �6/   �� 5q      �� 5r      $
��0.3* �6/   .+�5u        -   5        $ autoTxtCommoditySearch��5u   N   $��1��62   $��10q�6B   6N   �� 5v      -   5        $ BtnCommoditySearch��5v   N   $��Search��6!   $��2��62   $��10q�6B   6j   5w        5y      -   5        $��dgCommodity��5y   ,   $��1��6    .  .  
 �����$ 2��6�   ��6?   ��  5z        5{      $ Commodity Name��61    6I   �� *CommodityTypeName+6q     5|      $ Commodity Class��61    6J   �� *CommodityClass+6o     5}      $ 
Start Date��61    6E   �� *	StartDate+6e     5~      $ 	 End Date��61    6D   �� *	EndDate+6b   5�      � 5�      $��2��6    5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -   5        $ BtnCommodityAdd��5�   K   $	��Add��6!   $��0��6/   $��20q�6?   6d   �� 5�      -   5        $ BtnCommodityUpdate��5�   N   $��Update��6!   $��1��62   $��20q�6B   6j   �� 5�      -   5        $ BtnCommodityDelete��5�   N   $��Delete��6!   $��2��62   $��20q�6B   6j   5�      5�      5�      �� 5�      -   5        $��TabLocation��5�   b   $��Location��6   #���  6(   .��5�      �  5�      �� 5�      $
��0.1* �6(   �� 5�      �� 5�      $
��0.1* �6(   .+�5�      �  5�      �� 5�      $
��0.3* �6/   �� 5�      �� 5�      $
��0.3* �6/   .+�5�        -   5        $ autoTxtLocationSearch��5�   N   $��1��62   $��10q�6B   6N   �� 5�      -   5        $ BtnLocationSearch��5�   N   $��Search��6!   $��2��62   $��10q�6B   6i   5�        5�      -   5        $��
dgLocation��5�   ,   $��1��6    . 
 �����$ 2��6�    .  ��6>   ��  5�        5�      $ Location Name��61    6H   �� *LocationName+  5�      $ Description��61    6F   �� *Description+5�      � 5�      $��2��6    5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -   5        $ BtnLocationAdd��5�   K   $	��Add��6!   $��0��6/   $��20q�6?   {�.  6u   �� 5�      -   5        $ BtnLocationUpdate��5�   N   $��Update��6!   $��1��62   $��20q�6B   {�.  6{   �� 5�      -   5        $ BtnLocationDelete��5�   N   $��Delete��6!   $��2��62   $��20q�6B   {�.  6{   5�      5�      5�      �� 5�      -   5        $��TabCurrency��5�   `   $��Currency��6     styleTabItemRight#���  6(   .��5�      �  5�      �� 5�      $
��0.1* �6(   �� 5�      �� 5�      $
��0.1* �6(   .+�5�      �  5�      �� 5�      $
��0.3* �6/   �� 5�      �� 5�      $
��0.3* �6/   .+�5�        -   5        $ autoTxtCurrencySearch��5�   N   $��1��62   $��10q�6B   6N   �� 5�      -    5        $ BtnCurrencySearch��5�   N   $��Search��6!   $��2��62   $��10q�6B   6i   5�        5�      -!   5        $��
dgCurrency��5�   ,   $��1��6    . 
 �����$ 2��6�    .  ��6>   ��  5�        5�      $ Currency Name��61    6H   �� *CurrencyName+6k     5�      $ Description��61    6F   �� *Description+6h   5�      � 5�      $��2��6    5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -"   5        $ BtnCurrencyAdd��5�   K   $	��Add��6!   $��0��6/   $��20q�6?   {�.  6u   �� 5�      -#   5        $ BtnCurrencyUpdate��5�   N   $��Update��6!   $��1��62   $��20q�6B   {�.  6{   �� 5�      -$   5        $ BtnCurrencyDelete��5�   N   $��Delete��6!   $��2��62   $��20q�6B   {�.  6{   5�      5�      5�      �� 5�      -%   5        $��TabEntityMapping��5�   e   $��EntityMapping��6   #���  6-   .��5�      �  5�      �� 5�      $
��0.1* �6(   �� 5�      �� 5�      �� 5�      $
��0.1* �6(   .+�5�      � $��0��6    5�      �� 5�      �� 5�      $
��0.3* �6/   .+�5�        -&   5        $ autoTxtMappingSearch��5�   M   $��0��62   $��0q�6B   6M   �� 5�      -'   5        $ BtnMappingSearch��5�   M   $��Search��6!   $��1��62   $��0q�6B   6g   5�      � 5�      $��1��6   $��24��6(   $��	0,0,0,181q�64    5�      �� 5�      �� 5�      �� 5�      .+�5�      	� -(   5        $��commodityRadioButton��5�   C   $��1��6&   $��0��63   $��	Commodity��6_   $��15(�6�   6�   	� 5�      -)   5        $��marketRadioButton��5�   C   $��1��6&   $��1��63   $��Market��6\   $��15(�6�   6�   	� 5�      -*   5        $��allRadioButton��5�   C   $��1��6&   $��2��63   $	��All��6Y   $��15(�6�   6�   5�        5�      -+   5        $��dgEntityMapping��5�   ,   $��1��6   $	��394��6�   $��0,1,0,15q�6�   $��2��6�    .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   ��6C   ��  5�        5�      $ Mapping String��61    6I   �� *MappingString+  5�      $ MappingDescription��61    6M   �� *MappingDescription+  5�      $ 
EntityName��61    6E   �� *
EntityName+  5�      $ 
EntityType��61    6E   �� *
EntityType+  5�      $ SourceSystem��61    6G   �� *SourceSystemName+  5�      $ IsDefaultMapping��61    6K   �� *IsDefaultMapping+5�      � 5�      $��2��6   $��40��6(   $��	0,186,0,0q�64   $��2��6G    5      �� 5      5     �� 5     �� 5     �� 5     .+�5
     �� -,   5        $ BtnMappingAdd��5
  C   $	��Add��6!   $��
10,0,10,10q�6/   $��15(�6v   �� 5     --   5        $ BtnMappingUpdate��5  V   $��Update��6!   $��1��62   $��
10,1,10,10q�6B   $��15(�6�   �� 5     -.   5        $ BtnMappingDelete��5  V   $��Delete��6!   $��2��62   $��
10,1,10,10q�6B   $��15(�6�   5     5     5     5     5     5     