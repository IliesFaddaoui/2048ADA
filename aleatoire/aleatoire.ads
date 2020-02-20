PACKAGE Aleatoire IS
   TYPE Tableau IS ARRAY (1..4,1..4) OF Natural;
   Procedure Init(T : Out Tableau);
   PROCEDURE Afficher (T : IN Tableau);
END Aleatoire;

