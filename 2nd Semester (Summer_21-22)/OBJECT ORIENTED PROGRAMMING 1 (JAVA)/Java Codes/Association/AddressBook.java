public class AddressBook {
	private String ownerName;
	private String info;
	private Contact [] listOfContact; 
	
	AddressBook() {
	
	}
	public AddressBook(String ownerName,String info) {
	this.ownerName=ownerName;
	this.info=info;
	
	}
	
		public void setOwnerName(String ownerName){
		this.ownerName = ownerName;
	}
	
	public String getOwnerName(){
		return ownerName;
	}
	
	public void setInfo(String info){
		this.info = info;
	}
	
	public String getInfo(){
		return info;
	}

	public void setListOfContact(Contact [] listOfContact){
		this.listOfContact = listOfContact;
	}
	
	public Contact [] getlistOfContact(){
		return listOfContact;
	}
	
	public void  AddContact(Contact con) {
		for (int i = 0; i < listOfContact.length; i++) {
			if (listOfContact[i]==null) {
				listOfContact[i]=con;
				break;
			}
		}
	}
	
	public void DeleteContact(Contact con) {
		for(int i=0;i<listOfContact.length;i++) {
			if(listOfContact[i]==con) {
				listOfContact[i]=null;
			}
		}
	}
	
	public void DeleteContactByName(String name){
		for (int i = 0; i < listOfContact.length; i++) {
			if(listOfContact[i]!=null) {
				if(listOfContact[i].getPersonName().equals(name)) {
					listOfContact[i] = null;
				}
			}
		}
	}
	
	public void ShowAllContactInfo(){
		System.out.println("Owner Name : "+ownerName);
		for (int i = 0; i < listOfContact.length; i++) {
			if (listOfContact[i]!=null) {
				listOfContact[i].ShowPersonInfo();
				System.out.println();
			}
		}
	}

	
	
	
}
