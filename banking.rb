#include <iostream>
#include <string>
using namespace std;
// creating a class template for the bank account
class Bank
{
private:
    string name;
    int funds;
    int funds1;
public:
    Bank() // constructor
    {
        // initializations
        string fund_1;
        cout << "Enter your Name: " << endl;
        cin >> name;
        funds = 30000;
        fund_1 = to_string(funds);
        cout << "Your  current Balance is $" + fund_1 << endl;

    }
    void setDeposit (int deposited) // setting up the depositing method
    {
        cout << "Enter the Deposit amount: " << endl;
        cin >> deposited;
        funds = funds + deposited;
    }
    void setWithdrawal (int withdrawal) // setting up the withdrawal method
    {
        cout << "Enter the Withdrawal Amount: " << endl;
        cin >> withdrawal;
        funds1 = withdrawal;

    }
    void introduction() // the main method display
    {
        // converting the int figures to strings
        string  str;
        str = to_string(funds);
        cout << "Hello " + name + ", Welcome to your Bank" << endl;
        cout << "Your Current Balance is $" + str  << endl;
        str = to_string(funds1);
        cout << "After withdrawing $" + str << endl;
        funds = funds - funds1;
        str = to_string(funds);
        cout << "Your Current Balance is $" +  str << endl;
    }
};
// main method
int main() {
    // create an object of the class
    Bank account;
    account.setDeposit(0);
    account.setWithdrawal(0);
    account.introduction();
    return 0;
}
