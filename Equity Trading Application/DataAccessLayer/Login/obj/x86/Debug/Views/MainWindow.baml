   M S B A M L   `   `   `  ����@  <Login, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Login.HelpersLogin.Helpers  5   	       Login.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   )wclr-namespace:Login.Helpers     5   	     � Title$  
MainWindow��5   	   $	��743��6   $
��1150��6)    � WindowState$ 	Maximized=�66   .��5      � ��5   
   �� 5       �� ImageSource$ /Resources/blueback.jpg��6    �� Opacity$	 0.7Q�6?   6O    � ColumnDefinitions 5   
   �� 5      .+�5   
   � -   5        $��mainGrid��5      $��0��6    � RowDefinitions 5      .+�5      �� -   5        $��username��5      $��25(�6@   $	��300��6N   $��50��6Z   $��589,163,239,491q�6f   ��6&   �� *
UserName+.��6   5      �� 5      -   5        $��password��5      $��25(�6&   $��589,229,239,425q�6P   $	��300��6i   $��50��6u   ��65   �� *
Password+.��6�   5      �� 5      -   5        $��forgotAndLogin��5      $	��300��6/   $��50��6;   $��39,96,789,88q�6G   $��1��6]    �� Orientation$ 
Horizontal=�6j   6�   �� 5       -   5        $��login��5       $��Login��6"   $	��150��62   $
��Bold"�6_   
������ $��15(�6�   $��50��6�   $��748,303,230,351q�6�   ��6>   �� *LoginCommand+6�   �� 5"      -   5        $��forgot��5"      $��Forgot Password��6#   $
��Bold"�6_   
������ $��15(�6�   $	��161��6�   $��50��6�   $��589,303,378,351q�6�   ��6=   �� *ForgotCommand+6�   � 5$      -   5        $
��logo��5$      $	��200��6   $	��200��6+   $��251,153,677,351q�68   ��5%      �� 5&      $ /Resources/Main.jpg��6!   6E   5(      5)      5+      5,      