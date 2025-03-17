interface IAccountSearch
{
	Account getAccountByAccountNumber(int accountNumber);
	Account getAccountByAccountHolderName(String name);
	//Account getAccountByAccountByBalance(int balance);
	//Account getAccountByAccountByOpeningDate(int day, int month,int year);
}

public interface IAccountOperations
{
	public abstract void addAccount(Account a);
	void removeAccount(Account a);
	void showAllAccounts();
}
