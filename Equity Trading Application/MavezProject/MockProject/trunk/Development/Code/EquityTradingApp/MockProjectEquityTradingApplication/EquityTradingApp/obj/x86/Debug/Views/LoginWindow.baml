   M S B A M L   `   `   `  ����K  GEquityTradingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:EquityTradingApp.ViewModelsEquityTradingApp.ViewModels  5   	   C&clr-namespace:EquityTradingApp.HelpersEquityTradingApp.Helpers  5   	   (    "EquityTradingApp.Views.LoginWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;local)clr-namespace:EquityTradingApp.ViewModels     5   	   =
passHelper&clr-namespace:EquityTradingApp.Helpers     5   	     � Title$  Login Window��5   	   $	��500��6   $	��690��6+    � AllowsTransparency . 
������  � WindowStyle$
 None=�5
   	    � ShowInTaskbar .   � 	Resources 5       �� 
TargetType �� Property �� Value �� 
StartPoint	 �� EndPoint   	backBrush
 � Color � Offset��%O  '��       'G� u     '�� �     &	  �    �� 5   
   " ��6   .�5      ��  � ��$ 4q�5      �� 5       � ��
 �   �5      5      �� 5   
   " G�6   .�5      ��  � ��$ 4q�5      �� 5       � ��
 �   �5      5      �� 5   
   " ��6   .�5      ��  � ��$ 8q�5      �� 5       � ��$ 36��5      �� 5        � ��$ 36��5!      5"      �� 5#   
   $ 0.5,0.5&�6   $	 0.5,1&�5$      .��5&      � $
 Beige��6   $ 0Q�5'      � 5(      $
 Beige��6   $ 1Q�5)      5*      5+      .��5,      ��  �� CornerRadius$ 10��6   ���	#FF5F5F5F$��4q�5.   	   #��[  5/   	   $��24q�50   	    �� Padding$ 24q�51   	   $	��290��6   $	��575��6#   ._�52   
   �  � DataContext 6   ��  � ColumnDefinitions 53      �� 54      $��80��6#   $
��Auto �55      �� 56      $
��Auto �6#   �� 57      $��* �6#    � RowDefinitions 59      �� 5:      $
��Auto �6    �� 5;      $
��Auto �6    �� 5<      $
��Auto �6    �� 5=      $
��Auto �6    �� 5>      $
��Auto �6    �� 5?      $��* �6    .+�5A      �� -   5        $��imgKey��5D   	   $��5��5A      $	��Top=�5B   	   $
��Left=�5C   	   $	��135��5E   	   $��8,51,0,0q�5F   	   $��2��5G   	   $	��126��6   �� 5H      $��1��6   $��0��5I   	   $��2��5J   	   $��	4,10,4,20q�5K   	   $ 10��5L   	   ��5M      �� 5N      $	 0.5,1&�6*   $ 0.5,0&�5O      .��5P      � $
 	#FF45D6E2��6'   $ 0Q�5Q      � 5R      $
 	#FF52A0A0��6'   $ 1Q�5S      5T      ._�5V      �� $��18(�6   $��6q�5W      $7��1Please login to access Equity Trading Application��5X      5Y      �� 5Z      $��2��6   $��1��5[      $��	User Name��5\      $��	7,0,246,8q�6   �� 5]      $��2��6   $��2��5^      $��Password��5_      $��	8,4,255,4q�6   �� 5`      -   5        $��LoginID��5c      $��2��5`      $��1��5a       ^� ToolTip$ Enter Your User Name��5b      $��1��5c      $��60,4,4,4q�6'   $	��213��69   ��6E   �� *
UserName+G� 5e      -   5         G�Name$
 pBox��5e   +    G� PasswordChar$ *��6   $��
111,0,53,5q�69   $��2��6M   $��2��6Z   $��30��5f      $��13(�6"   $ Enter Password��5g      
����  �3   -EquityTradingApp.Helpers.PasswordBoxAssistant   BindPassword .    BoundPassword 5j      �� 5k       �� Path$ Password�6    �� Mode$ TwoWay=�6.    �� UpdateSourceTrigger$ PropertyChanged=�6<    �� ValidationRules 5l      0   *EquityTradingApp.Helpers.PasswordValidator  5m      6=   5p      5r      �� 5s      $��2��6   $��4��5t      $��4q�5u      $��Right=�5v       �� Orientation$ 
Horizontal=�5w      6(   �� 5y      -   5        $��button4��5y   &   $��Cancel��6   $��2��65   $��	0,5,35,22q�6E   $��4��6X   $��91��6e   $��Right=�6p   $��5��6�   ��6�   �� *CancelButtonClickCommand+$ OneWay=�6�   �� 5z      -   5        $��btnLogin��5z   T   $��Login��6   $��94��6%   $��2��60   $��
0,4,143,23q�6@   $��4��6d   $��Right=�6q   $��3��6�   ��6�   �� *LoginButtonCommand+$ OneWay=���6�   ��  �� ElementName$
 pBox��6�   �� 5{      $��Forgot Password��6   $��2��6/   $��4��6@   $��7,4,0,23q�6M   $��4��6_   $	��117��6m   $
��Left=�6y   ��6�   �� *OpenInsertWindowCommand+$ OneWay=�6�   �� 5|      -   5        $��lblError��5|   i   $��2��6   $��3��6$   $��28��61   $
��Left=�6=   $��8,8,0,0q�6X   $	��Top=�6y   $	��353��6�   
���  ����6�   �� *Error+$ TwoWay=�5}      5~      5      