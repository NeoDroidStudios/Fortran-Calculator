program calculatrice

    integer :: int1, operateur, int2, resultat, choix
    choix = 1 

    DO WHILE (choix /= 2)

        print *, 'Entrez la première valeur: '
        read(*,*) int1

        print *, 'Entrez la deuxième valeur: '
        read(*,*) int2

        print *, '(1) Multiplier (2) Division (3) Addition (4) Soustraction: '
        read(*,*) operateur

        IF (operateur == 1) THEN
            resultat = int1*int2
        ELSE IF (operateur == 2) THEN
            resultat = int1/int2
        ELSE IF (operateur == 3) THEN
            resultat = int1+int2
        ELSE IF (operateur == 4) THEN
            resultat = int1-int2
        END IF

        IF (operateur > 0 .and. operateur < 5) THEN
            print *, 'Résultat: ', resultat
        ELSE
            print *, 'Erreur: Entrez un entier entre 1 et 4'
        END IF

        print*, 'Souhaitez-vous refaire un calcul ? (1) Oui (2) Non'
        read(*,*) choix

    END DO

  end program calculatrice