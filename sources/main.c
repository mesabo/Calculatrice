#include <stdio.h>
#include <stdlib.h>
#include "../header/addition.h"
#include "../header/soustraction.h"
#include "../header/multiplication.h"
#include "../header/division.h"
#include "produit.h"

int main() {
    /* extern int a, b;
     int resultat;
     resultat = addition(2, 3);
     printf("%d + %d = %d", a, b, resultat);
 */
    printf("\nle addition vaut %d\n", addition(2, 3));
    printf("\nle soustraction vaut %d\n", soustraction(2, 3));
    printf("\nle multiplication vaut %d\n", multiplication(2, 3));
    printf("\nle division vaut %d\n", division(2, 3));
    // printf("\nle produit vaut %d\n", produit(2, 3));
    return EXIT_SUCCESS;
}
