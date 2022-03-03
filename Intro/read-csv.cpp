#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>
 
using namespace std;
 
int main()
{
	string fname;
	cout<<"Enter the file name: ";
	cin>>fname;
 
	vector<vector<string>> content;
	vector<string> row;
	string line, word;
 
	fstream file (fname, ios::in);
	if(file.is_open())
	{
		while(getline(file, line))
		{
			row.clear();
 
			stringstream str(line);
 
			while(getline(str, word, ','))
				row.push_back(word);
			content.push_back(row);
		}
	}
	else
		cout<<"Could not open the file\n";
 
    int mvalue, fvalue, ovalue;
    mvalue = fvalue = ovalue = 0;
    string test_value = "";

	for(int i=0;i<content.size();i++)
	{
        test_value=content[i][5];
        if (test_value == "M") {
            mvalue = mvalue + 1;
        } else if (test_value == "F") {
            fvalue = fvalue + 1;
        } else {
            ovalue = ovalue + 1;
        }

	}
    cout<<"Males "<<mvalue<<"\n";
    cout<<"Females "<<fvalue<<"\n";;
    cout<<"Other "<<ovalue<<"\n";;
	return 0;
}
