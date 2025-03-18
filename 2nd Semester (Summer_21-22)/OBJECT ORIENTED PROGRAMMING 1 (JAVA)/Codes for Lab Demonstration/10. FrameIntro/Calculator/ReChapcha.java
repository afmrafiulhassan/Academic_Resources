import java.util.Random;
import java.util.Scanner;
public class ReChapcha
{
    
    static String Ok="";
     void compare(String Ok, String input)
    {
        
        //boolean Check = Ok.equals(input);
        //System.out.println(Check);
        System.out.println(Ok.equals(input));
        
    }
    public static void main(String[] args)
    {
        System.out.print("reChapcha : ");

        String[] chapcha ={"AMpOqUSAzY", "WKbdxuOrTR", "oJnFihElvE", "bdxuOrTRoc"} ;
        
        //System.out.println(chapcha.charAt(0));
        Random rand = new Random();
        int i = rand.nextInt(4);
        int j = (int) (Math.random()*3) ;
        int k = (int) (Math.random()*4)+1 ;
        
    
        for(String f : chapcha)
        {
            for(;k<6;k++)
            {
                System.out.print(k+""+chapcha[i].charAt(j));
                Ok = Ok+k+""+chapcha[i].charAt(j);
                j++;
            }
            
        }    
    
        ReChapcha obj = new ReChapcha();
        System.out.println("");
        
        System.out.print("Enter this Capcha : ");
        Scanner in = new Scanner(System.in);
        String input = in.nextLine();

        obj.compare(Ok,input);
        
    }
}