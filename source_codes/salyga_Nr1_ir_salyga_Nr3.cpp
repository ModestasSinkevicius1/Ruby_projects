#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

//Si funkcija nustato egzamino ivertinimo rezultata (islaikyta ar neislaikyta)
void EgzaminoVertinimas(float paz)
{
    cout<<"Iveskite pazymio ivertinima egzaminui: ";
    cin>>paz;
    //Salygos nustato, ar ivertinimas islaikyta ar ne
    if(paz>=5)
        cout<<"Islaikyta!"<<endl;
    else cout<<"Neislaikyta!"<<endl;
    cout<<endl;
}
//Si funkcija nustato maziausia reiksme is 3 reiksmiu
void Maziausias(float sk1,float sk2,float sk3)
{
    cout<<"Iveskite 3 bet kokius skaicius, programa nustatys ju maziausia reiksme"<<endl;
    cin>>sk1>>sk2>>sk3;
    //Salygos tikrina skaiciu maziausia reiksme
    if((sk1==sk2)&&(sk1==sk3))
        cout<<"skaiciai yra lygus"<<endl;
    else if((sk1<=sk2)&&(sk1<=sk3))
        cout<<"maziausias skaicius: "<<sk1<<endl;
    else if (sk2<=sk3)
            cout<<"maziausias skaicius: "<<sk2<<endl;
    else cout<<"maziausia skaicius: "<<sk3<<endl;
    cout<<endl;
}
//Si funkcija nustato trikampio forma ir apskaiciuoja jo plota
void Krastines(float a, float b, float c)
{
    float plotas;
    float p;
    cout<<"Iveskite trikampio a, b ir c krastiniu ilgius"<<endl;
    cin>>a>>b>>c;
    /*Naudojama trikampio egzistavimo formule (pirmoje salygoje).
    Programa patikrina trikampio krastiniu ilgius salygas,
    jei nesutampa, tai programa nekreipia kitu salygu ir neskaiciuoja plota.
    Jis isvedamas neagzistuojanciu trikampiu. Jei sutampa salygos,
    tai nustatoma jo forma ir apskaiciuojama jo plota*/
    if((a+b>c)&&(b+c>a)&&(c+a>b))
    {
        if((a==b)&&(a==c))
            cout<<"Tai lygiakrastis trikampis "<<endl;
        else if((a==b)||(a==c)||(b==c))
                cout<<"Tai lygiasonis trikampis "<<endl;
        if((a!=b)&&(a!=c)&&(b!=c))
            cout<<"Tai ivairiakrastis trikampis "<<endl;
        p = (a+b+c)/2;
        plotas = sqrt(p*((p-a)*(p-b)*(p-c)));
        cout<<"ir jo plotas yra: "<<plotas<<endl;
    }
    else cout<<"Neagzistuoja tokio trikampio"<<endl;
    cout<<endl;

}
//Si funkcija apskaiciuoja pardavimo kieki i pardavimo atlygi
void Pardavimas(float suma)
{
    cout<<"Iveskite prekiu pardavimu suma: ";
    cin>>suma;
    /*Programa tikrina prekiu pardavimo sumos
    atlygi ir apskaiciuojama*/
    if(suma<=5000)
        suma*=0.1;
    if((suma>=5000)&&(suma<=10000))
        suma*=0.2;
    if(suma>10000)
        suma*=0.25;
    cout<<"Pardavejo atlygis bus: "<<suma<<" eur"<<endl;
    cout<<endl;
}
//Si funkcija apskaiciuoja sunaudotos elektros energijos kiekio kaina
void ElektrosSaskaita(float kiekis)
{
    bool stop = true;
    float up = 1;
    float kW=0;
    cout<<"Iveskite sunaudotos elektros energijos kieki: ";
    cin>>kiekis;
    /*ciklas tikrina energijos kieki stampancius salygus,
    kiekviena cikla salygos padidinamos 2 kartus, kad suzinotu,
    ar energijos kiekis sunaudotas dvigubai ar trigubai ir t.t.
    sutampant salygas. Ciklas sustabdomas, kai pirma salyga nesutampa.*/
    while(stop)
    {
        if(kiekis>=50*up)
            kW+=0.5;
        else stop = false;
        if(kiekis>=100*up)
        {
            kW+=0.75;
            if(up>1)
                kW+=1.20;
        }
        if(kiekis>=250*up)
            kW=0.2*(kW+1.50);
        up++;
    }
    cout<<kW<<" eur/kW"<<endl;
}
int main()
{
    //egzamino busamieji parametrai
    float paz;
    //Busimieji skaiciai kurie bus tikrinami, kuris maziausias (max 3 sk.)
    float sk1;
    float sk2;
    float sk3;
    //Busimieji krastiniu ilgiai bus nustatomi ju forma ir plota
    float a;
    float b;
    float c;
    //Busimas prekiu pardavimo skaicius
    float suma;
    //Busimas elektros energijos kiekio skaicius
    float kiekis;

    EgzaminoVertinimas(paz);
    Maziausias(sk1,sk2,sk3);
    Krastines(a,b,c);
    Pardavimas(suma);
    ElektrosSaskaita(kiekis);

    return 0;
}
