   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    MasterDataManagementUI9   3MasterDataManagementUI.UserManagement.AddUserWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   -   5          � Title$  AddUserWindow��5   	   $	��500��6   $	��391��6,    � WindowStartupLocation$ CenterScreen=�68    � 
ResizeMode$ NoResize=�6]   .��5	      � $	��489��6      gridBackground#��[  6    � ColumnDefinitions 5   
   �� 5      $
��119* �6   �� 5      $
��370* �6   .+�5   
   �� $��2��6   $��50��6$   $	��300��60   $��Center=�6<   $��26,0,163,411q�6Y   �� 5   
   -   5         ��Name$ LoginID��5   7   $��1��6   $��
6,56,137,0q�6#   $��12(�6H   $��25��6x   $	��Top=�6�   �� 5   
   -   5        $ Username��5   :   $��1��6   $��6,102,136,346q�6#   $��12(�6L   �� 5   
   -   5        $ Password��5   :   $��1��6   $��6,143,136,293q�6#   $��12(�6L   $��25��6[   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$	 DOB��5   &   $��1��6   $��6,189,135,247q�63   $��25��6J   6V     5   
   -   5        $	 DOJ��5   &   $��1��6   $��6,231,136,205q�63   $��25��6J   �� 5   
   -   5        $��1��5      $��Return��6"   $��	ExtraBold"�6O   $��12(�6f   $��80��6t   $��20��6   $��106,327,184,114q�6�    �� IsCancel . 6�   �� 5"   
   $��User Details��6   $
��Bold"�6(   $��Center=�6:   $��Center=�6W   $��20(�6r   $��1��6�   $��33,12,201,422q�6�   $	��136��6�   �� 5#   
   $��Center=�6   $��	ExtraBold"�61   $��14,63,57,-43q�6H   $��12(�6^   $��LoginID*��6l   �� 5%   
   $��Center=�6   $��	ExtraBold"�61   $��14,111,37,-91q�6H   $��12(�6_   $��	Username*��6m   �� 5&   
   $��Center=�6   $��	ExtraBold"�61   $��13,156,40,-136q�6H   $��12(�6`   $��	Password*��6n   �� 5'   
   $��Center=�6   $��	ExtraBold"�61   $��14,200,20,-180q�6H   $��12(�6`   $��Date of Birth*��6n   �� 5(   
   $��Center=�6   $��	ExtraBold"�61   $��13,242,8,-222q�6H   $��12(�6_   $��Date of Joining*��6m   �� 5)   
   $��Center=�6   $��	ExtraBold"�61   $��16,279,68,-259q�6H   $��12(�6`   $��Role*��6n   �� 5*   
   -   5         ��Name$ 
ErrorBlock��5*      
���  ��$��9,364,83,72q�65   $��2��6J   �� 5+   
   $��*Mandatory Fields��6   
���  ��$��12,405,0,39q�6>   �� 5,   
   -	   5         ��Name$ Save_button��5,      $
��Save��6&   $��12(�65   $��	ExtraBold"�6C   $��20��6Z   $��80��6f   $��63,327,346,114q�6�   $��2��6�   �� 5-   
   -
   5        $��lblError��5-   I   $��28��6   $
��Left=�6   $��7,83,0,0q�67   $	��Top=�6Y   $	��254��6q   
���  ��$��1��6�   �� 5.   
   -   5        $��cmbUserRole��5.   +   $��6,272,137,169q�6   $��1��6V   ��6>   �� 6V   57      58      