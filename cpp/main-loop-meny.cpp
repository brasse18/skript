#include <iostream> // inport input stream

using namespace std;

int meny(bool infoOn)
{
	if (infoOn == true)
	{
		cout << "1 Run" << endl;
		cout << "0 Exit" << endl;
	}
	cin >> val;
}


int main ()  // funktions start
 {
	int val;
	bool loop = true;
	string nameTemp;
	while (loop)
	{
		meny(true);
		switch (val)
		{
			case 1:
			break;
			case 0:
				loop = false;
			break;
			defult:
			break;
		}
	}
	return 0;
 }
