   M S B A M L   `   `   `  ����S  OEquityTradingApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:EquityTradingApplication.Helpers EquityTradingApplication.Helpers  5   	   6    0EquityTradingApplication.View.ForgotPasswordView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   <w.clr-namespace:EquityTradingApplication.Helpers     5   	     � Title$  ForgotPassword��5   	   $	��380��6    $	��450��6-    � 	Resources 5       �� 
TargetType �� Property �� Value �� ElementName �� Path��%  '��       'G� �    �� 5   
   " ��6   .�5      ��  �@=�ErrorTemplate 5	      �� 5
      .R�5      ]� .+�5      �� $	��Top=�6(   
���  ��$��12(�5      ��5      �� $ 	MyAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5      �� 5      
����  �$��1q�68   ._�5   "   �� $��	MyAdorner��6<   5      5      5      5      5      �� 5   
   " G�6   .�5      ��  �@=�ErrorTemplate 5      �� 5      .R�5       ]� .+�5!      �� $	��Top=�6(   
���  ��$��12(�5#      ��5$      �� $ 	MyAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5'      �� 5(      
����  �$��1q�68   ._�5)   "   �� $��	MyAdorner��6<   5*      5+      5,      5.      5/      51      .��52   
   � ��53   
   �� 54       �� ImageSource$ /Resources/Background.jpg��6   6C    � ColumnDefinitions 56   
   �� 57      $
��143* �6   �� 58      $
��235* �6   .+�5:   
   �� -   5        $��fPanel1��5:      	 �� Orientation$	 Vertical=�6$   $��Center=�6;   $��0��6X   .+�5;      �� $��Username��6   $��14(�6(   $��20q�66   $��25��6B   $��83��6N   6[   �� 5<      $��New Password��6   $��14(�6,   $��20q�6:   $��24��6F   6T   5>      �� 5?   
   -   5        $��fPanel2��5?      $	 Vertical=�6$   $��1��6<   .+�5G      �� -   5        $��tBoxUserName��5G      $��20q�6*   $	��200��66   
 ^� ToolTip$
 Enter Username��6B   $��14(�6j   $
��Left=�6x   .��6�   ��5H      �� 5I      $ UserName�6    �� Mode$ TwoWay=�6.    �� UpdateSourceTrigger$ PropertyChanged=�6<    �� ValidationRules 5J      8   2EquityTradingApplication.Helpers.UserNameValidator  5K      5M      5O      .��5P       5Q      G� 5V      -   5         G�Name$
 pBox��5V   +    G� PasswordChar$ *��6   $��14(�6:   $
��Left=�6H   $��20q�5W      $	��200��6$   $
 Enter Password��5X      
����  �;   5EquityTradingApplication.Helpers.PasswordBoxAssistant   BindPassword .    BoundPassword 5[      �� 5\      $ Password�6   $ TwoWay=�6.   $ PropertyChanged=�6<    5]      8   2EquityTradingApplication.Helpers.PasswordValidator  5^      64   5a      5c      �� 5d      -   5        $��btnLogin��5d      $��Reset Password��6%   $��20q�6>   $
��Left=�6J   $	��156��5f      ��5e      �� *ResetPasswordCommand+��6>   �� $
 pBox��5f   #   5g      5h      5i      