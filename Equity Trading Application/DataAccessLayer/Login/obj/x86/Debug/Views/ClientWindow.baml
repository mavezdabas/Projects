   M S B A M L   `   `   `  ����	  Login    Login.Views.ClientWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ClientWindow��5   	   $	��300��6   $	��300��6+    � WindowState$ 	Maximized=�67    � 	Resources 5         MyButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding �� CornerRadius	 �� Triggers
 P� Property P� Value �� 
TargetName��%  &	        �� 5   
   " ��6&   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       � ��$ 5q�6'   �� 5	       � �� 5
      �� 5      " ��6&   .R�5      �� $��border��6!   $��1q�5      $	 4,2q�5      
�������$ 3��5      #��z��5      ._�5      �� $��Center=�6/   $��Center=�6L   5      	 5      P� 5      
 �@J�IsMouseOver . . �5   "   �� $ border��6)    � ��
 �   �6T   5      5      5      5      5      .��5      � -   5        $��gridAccounts��5      ��5    
   �� 5!       �� ImageSource$ /Resources/Background.jpg��6   6C   .+�5#   
   �� -   5        $��scroller��5#      .��5$      �� -   5        $��accountList��5$      ��6.   �� ��5%      �� 5&      .R�5'      A�  A� Columns$ 3��6&   5(      ��5*      �� 5+      .R�5,      ��  �� Orientation$ Vertical=�6%   $��Center=�6<   $	��300��6W   $	��260��6c   .+�5-      �� $	��200��6%   $	��200��62   $��0q�6>   $��0,5,0,0q�6R   #��[  6c   ��6�   �� *OpenCommand+ �� Mode$ OneWay=���6�   �� ��5.   "   �� 5/   &    j� Stretch$
 Fill=�6O    61   �� *Image+6`    51   "   ��%Q   '��       �� 52   &   " ��6,   .�53   *   ��  � ��$ 0q�6L   54   '   55   #   56      58      5;      5=      5>      5?      5@      