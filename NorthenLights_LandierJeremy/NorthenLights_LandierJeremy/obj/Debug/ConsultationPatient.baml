   M S B A M L   `   `   `  ����V  RNorthenLights_LandierJeremy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:NorthenLights_LandierJeremyNorthenLights_LandierJeremy  5      5    /NorthenLights_LandierJeremy.ConsultationPatient   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ;local)clr-namespace:NorthenLights_LandierJeremy     5      -   5          � Title$  ConsultationPatient��5	       � SizeToContent$ WidthAndHeight=�5
       � WindowStartupLocation$ CenterScreen=�5       � 
ResizeMode$ NoResize=�5      $	��418��5      $
��1176��5      .��5      � $
��Left=�5   	   $
��1166��5   	   $
�� 350��5   	   .+�5   
   �� $��INFORMATIONS PATIENTS��5      $��
953,27,0,0q�5         	TitleText#��[  5      $	��215��5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataPatient��5      $
��Left=�5      $	��252��5      $��	15,88,0,0q�5      $	��Top=�5      $
��1131��5         AutoGenerateColumns .  ��5       ��    Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ NSS Patient��5$      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5%      �� *NSS+  5&      $ Prénom��5'      	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 100 5(       5)      �� *prenom+  5*      $	 Nom��5+      $		 100 5,       5-      �� *nom+  5.      $ Téléphone��5/      $		 100 50       51      �� *	telephone+  52      $	 Lit��53      $	 30 54       55      �� *	numeroLit+  56      $ Type Lit��57      $	 80 58       59      �� *description+  5:      $ Département��5;      $		 100 5<       5=      �� *nomDepartement+  5>      $ Date Admission��5?      $		 100 5@       5A      �� *dateAdmission+
 �� StringFormat$
 d��  5B      $ Date Sortie��5C      $		 100 5D       5E      �� *	dateConge+$
 d��  5F      $ Date Chirurgie��5G      $		 100 5H       5I      �� *dateChirurgie+$
 d��  5J      $ Médecin��5K      $	 * 5L       5M      �� *
nomMedecin+  5N      $ 	Assurance��5O      $	 * 5P       5Q      �� *nomCompagnie+5S      �� 5T   
   ���	#FFAEFFFB$
��Left=�5V      $��54��5W      $��	26,12,0,0q�5X      $	��Top=�5Y      $��24��5Z      �� 5[   
   $��N L H��5\      $
��Left=�5]      $��	11,27,0,0q�5^      $	��Top=�5_      $��55��5`      $
��Bold"�5a      
�������$��Center=�5c      ���	#FFA5FBFF$��24��5e      5f      5g      