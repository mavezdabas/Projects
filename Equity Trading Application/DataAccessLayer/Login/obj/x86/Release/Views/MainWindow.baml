   M S B A M L   `   `   `  ���� 	  Login    Login.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  
MainWindow��$	��350��$	��525�� � WindowState$ 	Maximized=�.��� ����  �� ImageSource$ /Resources/blueback.jpg�� �� Opacity$	 0.7Q� � ColumnDefinitions �� �� .+�� -   $
��logo��$��0��$	��200��$	��200��$��300,-220,0,0q����� $ /Resources/Main.jpg��� -   $��mainGrid��$��1�� � RowDefinitions �� �� �� .+��� -   $��username��$��-500,100,0,0q�$��25(�$��0��$	��300��$��50������ *
UserName+.���� -   $��password��$��25(�$��-500,-200,0,0q�$��1��$	��300��$��50������ *
Password+.���� -   $��forgotAndLogin��$	��300��$��50��$��-500,-540,0,0q�$��2�� �� Orientation$ 
Horizontal=�.+��� -   $��forgot��$��Forgot Password��$
��Bold"�
������ $��15(�$	��150��$��50������ *ForgotCommand+�� -   $��login��$��Login��$	��150��$
��Bold"�
������ $��15(�$��50������ *LoginCommand+