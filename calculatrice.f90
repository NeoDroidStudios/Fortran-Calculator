program calculatrice

    integer :: operateur, choix
    real :: val1, val2, resultat
    choix = 1 

    DO WHILE (choix == 1)

        print *, 'Entrez la première valeur: '
        read(*,*) val1

        print *, 'Entrez la deuxième valeur: '
        read(*,*) val2

        print *, '(1) Multiplication (2) Division (3) Addition (4) Soustraction: '
        read(*,*) operateur

        IF (operateur == 1) THEN
            resultat = val1*val2
        ELSE IF (operateur == 2) THEN
            resultat = val1/val2
        ELSE IF (operateur == 3) THEN
            resultat = val1+val2
        ELSE IF (operateur == 4) THEN
            resultat = val1-val2
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