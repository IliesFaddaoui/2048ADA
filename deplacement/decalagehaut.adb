WITH Ada.Integer_Text_Io, Ada.Text_Io ;
USE Ada.Integer_Text_Io , Ada.Text_Io ;

PROCEDURE Decalagehaut IS
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
      t(1,3):=2;
      t(1,4):=2;
      T(2,1):=4;
      T(2,4):=2;
      T(3,1):=4;
      T(3,2):=4;
      T(4,1):=2;
      T(3,4):=2;
      T(4,3):=4;
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
         FOR I IN reverse 2..4 LOOP
         FOR J IN t'range loop
            IF T(I,J)>0 THEN
               IF T(I-1,J)=0 THEN

                  temp := t(i,j);
                  T(I-1,J):=temp;
                  T(I,J):=0;

                  end if;
            END IF;
         END LOOP;
         END LOOP;
         end loop;
      New_Line;

      --fusion
      FOR I IN T'RANGE LOOP
      FOR J IN T'RANGE LOOP
         IF i>1 THEN
            IF T(I,J)=T(I-1,J) THEN
               T(I-1,J):=T(I,J)+T(I-1,J);
               T(I,J):=0;
            END IF;
         END IF;
      END LOOP;
      END LOOP;

      -- dernier décalage
       for w in 1..4 loop
         FOR I IN reverse 2..4 LOOP
         FOR J IN t'range loop
            IF T(I,J)>0 THEN
               IF T(I-1,J)=0 THEN

                  temp := t(i,j);
                  T(I-1,J):=temp;
                  T(I,J):=0;

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
      end decalagehaut;
