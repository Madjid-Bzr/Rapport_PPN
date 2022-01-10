#ifndef DEF_HEADER
#define DEF_HEADER

#define TAILLE_TAB 500

void Multiplication(int  (*A)[TAILLE_TAB], int (*B)[TAILLE_TAB], int (*C)[TAILLE_TAB], int taille);

void Affichage(int (*tab_res)[TAILLE_TAB]);

void Chargement(int (*A)[TAILLE_TAB], int (*B)[TAILLE_TAB]);

#endif
