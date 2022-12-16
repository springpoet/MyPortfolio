#include<stdio.h>
#include<stdlib.h>
#include<time.h>


int rand_num(int* lotto);
void swap(int* lotto, int a, int b);
int partition(int* lotto, int left, int right);
void quickSort(int* lotto, int left, int right);
int print(int* lotto);


int main()
{
	srand(time(NULL));
	int lotto[7];
	int left = 0;
	int lotto_size = (sizeof(lotto) / sizeof(int)); 
	int right = lotto_size - 2;

	rand_num(lotto);
	quickSort(lotto, left, right);
	print(lotto);

	return 0;
}

int rand_num(int* lotto) 
{
	int temp;
	int odd; 
	int even;
	for (int i = 0; i < 7; i++) 
	{
		lotto[i] = rand() % 45 + 1;
		while (1)
		{
			temp = 0;
			for (int j = 0; j < i; j++) 
			{
				if (lotto[i] == lotto[j]) 
				{
					temp = 1;
					i--;
					break;
				}
			}
			if (temp == 0);
			{
				break;
			}

			for (int j = 0; j < 6; j++)
			{
				if (lotto[j] % 2 == 0)
				{
					even++;
				}
				else
				{
					odd++;
				}
			}
			if (even == 6 || odd == 6) 
			{
				i--;
				break;
			}
		}
		if ((lotto[i - 1] + lotto[i] + lotto[i + 1]) / 3 == lotto[i])
		{
			i--;
		}
	}
	return 0;
}

void swap(int* lotto, int a, int b) 
{
	int temp = lotto[b];
	lotto[b] = lotto[a];
	lotto[a] = temp;
}

int partition(int* lotto, int left, int right)
{
	int pivot = lotto[left];
	int i = left;
	int j = right;

	while (i < j)
	{
		while (pivot < lotto[j]) 
		{
			j--;
		}
		while (i < j && pivot >= lotto[i])
		{
			i++;
		}
		swap(lotto, i, j); 
	}
	lotto[left] = lotto[j];  
	lotto[j] = pivot;
	return j;
}

void quickSort(int* lotto, int left, int right)
{
	if (left >= right) 
	{
		return;
	} 

	int pivot = partition(lotto, left, right); 

	quickSort(lotto, left, pivot - 1); 
	quickSort(lotto, pivot + 1, right); 
									
}

int print(int* lotto) 
{
	for (int i = 0; i < 6; i++)
	{
		printf(" [%d] ", lotto[i]);
	}
	printf("보너스 번호 : [%d]", lotto[6]);
	return 0;
}

