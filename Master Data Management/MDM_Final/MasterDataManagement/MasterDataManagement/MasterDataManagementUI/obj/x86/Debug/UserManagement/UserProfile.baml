   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    MasterDataManagementUI7   1MasterDataManagementUI.UserManagement.UserProfile   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Profile!��5   	   $	��300��6   $	��300��6'    � WindowStartupLocation$ CenterScreen=�63    � 
ResizeMode$ NoResize=�6X   .��5	      �    gridBackground#��[  6    � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��
My Profile��6   $��Normal"�6&   $��Arial)�6:   $��Center=�6M   $��Center=�6j   $��20(�6�   $��
71,12,69,7q�6�   �� 5   
   -   5         ��Name$ LoginID��5   (   $��145,14,32,0q�6   $��12(�69   $��24��6H   $	��Top=�6T   $��1��6l   �� 5   
   -   5        $ Username��5   &   $��
145,0,32,8q�6   $��12(�68   $��24��6F   $��Bottom=�6R   $��2��6m   �� 5   
   -   5         ��Name$ Password��5   &   $��145,0,32,17q�6   $��Change Password��68   $��12(�6v   $��20��6�   $��Bottom=�6�   $��3��6�   �� 5   
   $��Center=�6   $��31,14,205,5q�62   $��12(�6G   $��LoginID��6U   $��1��6d   �� 5   
   $��Center=�6   $��24,11,186,8q�62   $��12(�6G   $��Username��6U   $��2��6e   �� 5   
   $��Center=�6   $��28,9,180,11q�62   $��12(�6G   $��Password��6U   $��69��6e   $��3��6p   �� 5#   
   -   5        $��Cancel��5#      $��	ExtraBold"�6>   $��12(�6U   $��
0,12,32,12q�6c   $��4��6w   $��Right=�6�   $	��101��6�    �� IsCancel . 6�   �� 5-   
   -   5         ��Name$ 
ErrorBlock��5-      
���  ��$��95,0,116,135q�65   $��34��6K   $��Bottom=�6W   �� 5.   
   -   5        $
 Save��5.       $
��Save��6   $��12(�6.   $��	ExtraBold"�6<   $��24,12,159,11q�6h   $��4��6~   �� 5/   
   -   5        $��lblError��5/   K   $��23��6   $
��Left=�6   $��
182,82,0,0q�67   $	��Top=�6[   $	��164��6s   
���  ��6   59      5:      