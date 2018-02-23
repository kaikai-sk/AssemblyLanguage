#include <stdio.h>

struct company
{
	char comname[4];  //公司名称
	char headname[10]; //总裁名称
	int rank;        //排名
	int income;      //收入
	char product[4];  //产品名称
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