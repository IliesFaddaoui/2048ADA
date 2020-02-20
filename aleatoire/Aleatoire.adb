WITH Ada.Text_IO, Ada.Integer_Text_IO, ada.numerics.Discrete_Random;
USE Ada.Text_IO, Ada.Integer_Text_IO;


PACKAGE BODY Aleatoire IS
   procedure Init ( T : Out Tableau) is
   SUBTYPE ValeurAleatoire IS Integer RANGE 1..10;
   PACKAGE Hasard IS NEW Ada.Numerics.Discrete_Random(ValeurAleatoire);
   USE Hasard;
      G,E: Generator;

   FUNCTION EntierAleatoire(G : Generator) RETURN ValeurAleatoire IS
      R : Integer;
      BEGIN
      IF Random(G)<=8
            THEN r:=2;
      ELSE r := 4;
         END IF;
         RETURN R;

   END EntierAleatoire;
   begin
   Reset(G);

      FOR I IN 1..4 LOOP
         FOR J IN 1..4 LOOP
            T(I,J):= EntierAleatoire(G);
         END LOOP;
      END LOOP;

         END Init;

   PROCEDURE Afficher (T : IN Tableau) IS
   BEGIN
      FOR I IN 1..4 LOOP
         FOR J IN 1..4 LOOP
            Put(T(I,J));
         END LOOP;
         NEW_Line;
      END LOOP;
   END Afficher;


END Aleatoire;



