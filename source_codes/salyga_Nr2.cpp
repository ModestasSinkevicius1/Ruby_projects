#include <iostream>

using namespace std;

//Programo savininkas: Modestas Sinkevicius PI17D

/*Rekursine funkcija atlieka tam tikra matematine
grandinine funkcija.*/

float grandine(float x, float a)
{
    //Busimas funk funkcijos reiskmes.
    float funk;
    /*Jei kintamasis a galioja si salyga, tai funkccija nebekartojama ir pabaigiama
    apskaiciuoti grandinine matematine funkcija.*/
    if(a==256)
        funk=(a/(x*x)+(x*x));
    /*Jei vienas is siu salygu galioja, tai apskaiciuojama tam tikra grandines
    funkcijos vieta su tam tikromis operacijas ir iskvieciama pati funkcija vel,
    bet su nauju kintamuoju.*/
    else if((a!=1)&&(a!=2))
        funk=((x*x)+(a/grandine(x, a*2)));
        else if(a!=2)
            funk=(a/grandine(x, a*2));
        else
            funk=((x+x)+((a/2)/grandine(x, a*2)));
    /*Pabaigus apskaiciuoti grandinines funkcijos reiksme. Randama funkcijo atsakyma
    ir jis naudojamas surasti kitu grandininiu funkciju reiksmes.*/
    return funk;
}

float grandine_new(float a, float x, int level)
{
    //Busimas funk funkcijos reiksmes.
    float funk;
    /*Jei kintamasis a galioja si salyga, tai funkccija nebekartojama ir pabaigiama
    apskaiciuoti grandinine matematine funkcija.*/
    if(a==256)
	{
        funk=grandine_new(a*2, x, level+1);
		/*Jei vienas is siu salygu galioja, tai apskaiciuojama tam tikra grandines
		funkcijos vieta su tam tikromis operacijas ir iskvieciama pati funkcija vel,
		bet su nauju kintamuoju.*/
		if(level>1)
		{
			a=(x*x)+(x/funk);
		}
		else
		{
			a=a/funk;
		}
	}
	else
	{
		return a/(x*x);
	{	
    /*Pabaigus apskaiciuoti grandinines funkcijos reiksme. Randama funkcijo atsakyma
    ir jis naudojamas surasti kitu grandininiu funkciju reiksmes.*/
    return a;
}

int main()
{
    //---------------a uzduotis--------------------------------//
    //x - skaicius ciklui.
    float x2;
    //y - grandinines funkcjos atsakymai.
    float y;
    /*a - kintamasis ciklui, padauginamas is 2, kad
    busimoje cikloje pabaigtu su a2=1 pries ciklo salygai tenkinant.*/
    float a2=256*2;

    cout<<"iveskite kintamaja ciklui"<<endl;
    cin>>x2;

    /*Sis ciklas apskaiciuoja tam tikra grandinine funkcija.*/
    while(a2!=1)
    {
        a2=a2/2;
        if(a2==256)
            y=x2*x2+(a2/x2);
        else if((a2!=1)&&(a2!=2))
            y=x2*x2+(a2/y);
        else if(a2!=2)
        {
            y=a2/y;
        }
        else
            y=x2*x2+((a2/2)/y);
    }
    //Isevedama grandinine funkcojos atsakyma ekrane.
    cout<<y<<endl;
    //-----------------------b uzduotis--------------------------//
    //x - skaicius rekursinei funkcijai.
    float x;
    //a - kintamasis rekursinei funkcijai.
    float a=1;
	int level=1;
    //Ivedama kintamaja
    cout<<"iveskite kintamaja rekursinei funkcijai"<<endl;
    cin>>x;
    cout<<grandine(x,a)<<endl;
    return 0;
}
