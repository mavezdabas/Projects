   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    MasterDataManagementUI=   7MasterDataManagementUI.UserManagement.EditWindowDetails   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   -   5          � Title$  Edit Details Of User��5   %   $	��500��6B   $	��391��6O    � WindowStartupLocation$ CenterScreen=�6[    � 
ResizeMode$ NoResize=�6�   .��5	      � $	��489��6      gridBackground#��[  6    � ColumnDefinitions 5   
   �� 5      $
��119* �6   �� 5      $
��370* �6   .+�5   
   �� $��2��6   $��50��6$   $	��300��60   $��Center=�6<   $��26,0,163,411q�6Y   �� 5   
   -   5         ��Name$ LoginID��5   7   $��1��6   $��
6,56,137,0q�6#   $��12(�6H   $��25��6o   $	��Top=�6{   ��6V   �� *	LoginId+6{   �� 5   
   -   5        $ Username��5   :   $��1��6   $��6,102,136,346q�6#   $��12(�6L   ��6Z   �� *Name+�� 5   
   -   5        $ Password��5   N   $y�Hidden=�6   $��1��6'   $��6,143,136,293q�67   $��12(�6`   $��25��6o   ��6{   �� *
Password+(  "System.Windows.Controls.DatePicker  5   
   -   5          Name$	 DOB��5   9   $y�Hidden=�6   $��1��6)   $��6,189,135,247q�6F   $��25��6]      Text 6i   �� *DateOfBirth+  5   
   -   5        $	 DOJ��5   :   $y�Hidden=�6   $��1��6*   $��6,231,136,205q�6G   $��25��6^    6j   �� *DateOfJoining+�� 5   
   -   5        $��1��5      $��Cancel��6"   $��	ExtraBold"�6O   $��12(�6f   $��80��6t   $��20��6   $��89,201,201,240q�6�    �� IsCancel . 6�   �� 5"   
   $��User Details��6   $
��Bold"�6(   $��Center=�6:   $��Center=�6W   $��20(�6r   $��1��6�   $��33,12,201,422q�6�   $	��136��6�   �� 5#   
   $��Center=�6   $��	ExtraBold"�61   $��14,63,57,-43q�6H   $��12(�6^   $��LoginID��6l   �� 5%   
   $��Center=�6   $��	ExtraBold"�61   $��14,111,37,-91q�6H   $��12(�6_   $��Name*��6m   �� 5&   
   $y�Hidden=�6   $��Center=�6(   $��	ExtraBold"�6E   $��13,156,40,-136q�6\   $��12(�6t   $��	Password*��6�   �� 5'   
   $��Center=�6   $��	ExtraBold"�61   $��14,200,20,-180q�6H   $��12(�6`   $y�Hidden=�6o   $��Date of Birth*��6�   �� 5(   
   $��Center=�6   $��	ExtraBold"�61   $��13,242,8,-222q�6H   $��12(�6_   $y�Hidden=�6m   $��Date of Joining*��6�   �� 5)   
   $��Center=�6   $��	ExtraBold"�61   $��25,142,59,-122q�6H   $��12(�6`   $��Role*��6n   �� 5*   
   -   5         ��Name$ 
ErrorBlock��5*      
���  ��$��9,364,83,72q�65   $��2��6J   �� 5+   
   $��*Mandatory Fields��6   
���  ��$��12,405,0,39q�6>   �� 5,   
   -	   5        	 ��Name$	 SaveBtn��5,      $
��Save��6"   $��12(�61   $��	ExtraBold"�6?   $��20��6V   $��80��6b   $��26,201,13,240q�6�   �� 5-   
   -
   5        $��lblError��5-   I   $��28��6   $
��Left=�6   $��7,83,0,0q�67   $	��Top=�6Y   $	��254��6q   
���  ��$��1��6�   �� 5.   
   -   5        
 ��Name$
 cmbUserRole��5.   *   $��7,140,136,301q�6   $��1��6u   ��6?   ��  �� SelectedItem 6W   �� *Role+6u   57      58      