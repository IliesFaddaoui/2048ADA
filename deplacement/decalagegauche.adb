WITH Ada.Integer_Text_Io, Ada.Text_Io ;
USE Ada.Integer_Text_Io , Ada.Text_Io ;

PROCEDURE Decalagegauche IS
   TYPE Tab IS ARRAY (1..4,1..4) OF Integer;
   T : Tab;
   temp: integer;



   BEGIN

-- initialisation du tableau + remplissage des cases pour tester
      FOR I IN T'RANGE LOOP
         FOR J IN T'RANGE LOOP
            T(I,J):=0;
         END LOOP;
      END LOOP;
      t(1,4):=2;
      T(2,3):=2;
      T(2,4):=2;
      T(3,2):=2;
      T(3,4):= 2;
      T(4,1):=2;
      T(4,2):=2;
      T(4,3):=2;
      T(4,4):=2;


      --quatres décalages initiaux


FOR I IN T'RANGE LOOP
         FOR J IN T'RANGE LOOP
            Put(T(I,J));
         END LOOP;
         New_Line;
 END LOOP;
New_Line ; New_Line ; New_Line;



      for w in 1..4 loop
         FOR I IN T'RANGE LOOP
         FOR J IN 1..3 loop
            IF T(I,J+1)>0 THEN
               IF T(I,J)=0 THEN

                  temp := t(i,j+1);
                  T(I,J):=temp;
                  T(I,J+1):=0;

                  end if;
            END IF;
         END LOOP;
         END LOOP;
         end loop;
      New_Line;


   -- fusion
   FOR I IN T'RANGE LOOP
      FOR J IN T'RANGE LOOP
         IF j>1 THEN
            IF T(I,J)=T(I,J-1) THEN
               T(I,J-1):=T(I,J)+T(I,J-1);
               T(I,J):=0;
            END IF;
         END IF;
      END LOOP;
      END LOOP;
      New_Line;
      New_Line;
-- dernier décalage


      for w in 1..4 loop
         FOR I IN T'RANGE LOOP
         FOR J IN 1..3 loop
            IF T(I,J+1)>0 THEN
               IF T(I,J)=0 THEN

                  temp := t(i,j+1);
                  T(I,J):=temp;
                  T(I,J+1):=0;

                  end if;
            END IF;
         END LOOP;
         END LOOP;
         end loop;
      New_Line;
      FOR I IN T'RANGE loop
         FOR J IN T'RANGE loop
         Put(T(I,J));
         END LOOP;
         New_Line;
      END LOOP;
   END Decalagegauche;

