#include <stdio.h>

struct company
{
	char comname[4];  //��˾����
	char headname[10]; //�ܲ�����
	int rank;        //����
	int income;      //����
	char product[4];  //��Ʒ����
};

company dec = { "DEC", "ken Olsen", 137, 40, "PDP" };

int main()
{
	int i;
	dec.rank = 38;
	dec.income = dec.income + 70;
	i = 0;
	dec.product[i] = 'V';
	i++;
	dec.product[i] = 'A';
	i++;
	dec.product[i] = 'X';
	return 0;
}