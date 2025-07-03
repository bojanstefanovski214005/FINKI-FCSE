// Да се дефинира класа Potpisuvac во која се чуваат информации за:

// име (низа од максимум 20 знаци)
// презиме (низа од максимум 20 знаци)
// ЕМБГ (низа од максимум 14 знаци)
// За класата да се дефинира copy конструктор, default конструктор и конструктор со аргументи.

// Да се дефинира класа Dogovor, во која се чуваат информации за:

// број на договор (int),
// категорија на договор (низа од 50 знаци),
// поле од 3 потпишувачи на договорот (објекти од класата Potpisuvac)
// Во класата да се додаде метод кој ќе проверува дали постојат два исти потпишувачи (имаат ист ЕМБГ).
#include <iostream>
#include <cstring>

using namespace std;

class Potpisuvac
{
    char ime[20];
    char prezime[20];
    char embg[14];
public:
    Potpisuvac(){}
    
    Potpisuvac(char * _ime, char * _prezime, char * _embg){
        strcpy(ime, _ime);
        strcpy(prezime, _prezime);
        strcpy(embg, _embg);
    }
    
        Potpisuvac(Potpisuvac &p){
        strcpy(ime, p.ime);
        strcpy(prezime, p.prezime);
        strcpy(embg, p.embg);
    }

    char * getEMBG(){
        return embg;
    }
    
};


class Dogovor
{
    int broj;
    char kategorija[50];
    Potpisuvac p[3];
public:

    Dogovor(int _broj, char * _kategorija, Potpisuvac * _p){
        broj = _broj;
        strcpy(kategorija, _kategorija);
        p[0] = _p[0];
        p[1] = _p[1];
        p[2] = _p[2];
    }
    
    bool proverka(){
        
   for(int i = 0; i < 3; ++i)
        {
            for(int j = i+1; j < 3; ++j)
            {
                if(strcmp(p[i].getEMBG(), p[j].getEMBG()) == 0){
                    return true;
                }
            }
 
        }
        return false;
    }

};


//ne smee da se menuva main funkcijata
int main()
{
    char embg[14], ime[20], prezime[20], kategorija[20];
    int broj, n;
    cin >> n;
    for(int i = 0; i < n; i++){
    	cin >> embg >> ime >> prezime;
    	Potpisuvac p1(ime, prezime, embg);
    	cin >> embg >> ime >> prezime;
    	Potpisuvac p2(ime, prezime, embg);
    	cin >> embg >> ime >> prezime;
    	Potpisuvac p3(ime, prezime, embg);
    	cin >> broj >> kategorija;
    	Potpisuvac p[3];
    	p[0] = p1; p[1] = p2; p[2] = p3;
    	Dogovor d(broj, kategorija, p);
        cout << "Dogovor " << broj << ":" << endl; 
    	if(d.proverka() == true)
    	    cout << "Postojat potpishuvaci so ist EMBG" << endl;
    	else
    	    cout << "Ne postojat potpishuvaci so ist EMBG" << endl;
    }
    return 0;
}