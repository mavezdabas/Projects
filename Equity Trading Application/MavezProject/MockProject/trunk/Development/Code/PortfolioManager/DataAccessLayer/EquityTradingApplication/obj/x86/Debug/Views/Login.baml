   M S B A M L   `   `   `  ����S  OEquityTradingApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:EquityTradingApplication.Helpers EquityTradingApplication.Helpers  5   	   )    #EquityTradingApplication.View.Login   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   <w.clr-namespace:EquityTradingApplication.Helpers     5   	     � Title$  Login��5   	   $	��489��6   $	��644��6$    � Left$	 450��60   
 � Top$	 200��6;    � WindowState$ Normal=�6E   $y�Visible=�6Z    � WindowStartupLocation$ CenterScreen=�6o    � WindowStyle$
 None=�6�    � 
ResizeMode$ NoResize=�6�    J� Opacity$ 1Q�6�    � AllowsTransparency . .��5      � ��5	   
   �� 5
      	 �� ImageSource$	 /Resources/Background.jpg��6   6C   .+�5   
   � -   5        $��sPanel��5      
 J� SnapsToDevicePixels
 .   � DataContext 6:   �� .+�5      �� $��67,120,402,183q�6   ��5      �� 5      $	 /Resources/Stock.png��6!    j� Stretch$ Uniform=�6D   6X   5      �� 5      -   5        $��labelUserName��5      $��UserName��6)   $��73��6<   $��296,114,252,291q�6G   �� 5      -   5        $��labelPassword��5      $��Password��6)   $��73��6<   $��296,184,252,221q�6G   �� 5      -   5        $��tBoxUserName��5      $��296,142,96,278q�6*   
������� ^� ToolTip$ Enter Username��5      
����  �$	��230��5   ,   $��30��68   $��13(�6D   ��5      �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=�.��6T   5       G� 5%      -   5         G�Name$
 pBox��5%   +    G� PasswordChar$ *��6   $��296,208,96,212q�69   
�������$��30��5&   )   $��13(�65   $ Enter Password��5'      
����  �$	��230��5(   ,   ;   5EquityTradingApplication.Helpers.PasswordBoxAssistant   BindPassword . 5+      �� 5,      -   5        $��btnLogin��5,      $��Login��6%   $��423,269,96,158q�65   
����  �$��Tahoma)�5-   &   
������� �� IsCancel .   �� 	IsDefault . ��5.   ,   �� *LoginCommand+��6M   ��  �� ElementName$
 pBox��6�   �� 50      -   5        $��btnForgorPassword��50      $��Forgot Password ?��6.   $��423,349,96,77q�51      
������ 
���   �$��0q�6X   ��50   J   �� *ForgotPasswordCommand+51   n   �� 52      $��12(�60   
���  ��$��313,235,109,171q�6O   $��Center=�6h   $��Center=�6�   $��44��6�   $	��200��6�   ��6   �� *	Message+6�   53      54      55      