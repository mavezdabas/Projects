   M S B A M L   `   `   `  ����  MasterDataManagementUI@    :MasterDataManagementUI.UserManagement.ChangePasswordWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Change Password��5   	   $	��300��6!   $	��414��6.    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6P   .��5      �    gridBackground#��[  6    � RowDefinitions 5   
   �� 5      �� 5      �� 5	      �� 5
      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��Change Password��6   $
��Bold"�6+   $��14(�6=   $��2��6K   $��142,-4,-142,4q�6_   �� 5   
   $��Current Password��6   $��1��6,   $��2��69   $��42,26,159,25q�6M   $��2��6c   �� 5   
   $��New Password��6   $	��101��6)   $��2��65   $��42,11,58,41q�6B   $��2��6W   �� 5   
   $��Re-Enter Password��6   $��3��6-   $��
42,5,21,47q�6:   $��2��6N   G� 5   
   -   5         G�Name$ CurrentPassword��5      $��1��6/   $��
47,26,60,3q�6?   $��1��6S   G� 5   
   -   5        $ NewPassword��5      $��1��6+   $��47,13,60,14q�6;   $��2��6P   G� 5   
   -   5        $ ReEnterPassword��5      $��1��6/   $��
47,4,61,21q�6?   $��3��6S   �� 5   
   -   5        $��lblError��5   W   $��3��6   $��28��6   $
��Left=�6)   $��	32,30,0,0q�6D   $	��Top=�6g   $	��143��6   
���  ��$��2��6�   �� 5   
   -   5         ��Name$ Chng_Button��5   +   $��CHANGE PASSWORD��6   $��2��6@   $��142,0,128,12q�6T   $��4��6j   6w   5       5!      