import java.util.Scanner;

public class UserInput{
	public static void main(String[] args){
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Please enter your full name: ");
		String fullname = scan.nextLine();
		
		System.out.print("Enter your address: ");
		String address = scan.nextLine();
		
		System.out.print("Enter your age: ");
		int age = scan.nextInt();
		scan.nextLine();
	
		System.out.print("Enter your gender (M/F: ");
		char gender = scan.next().charAt(0);
		
		System.out.printf("Are you happy to learn java?(true/false: ");
		boolean isHappy = scan.nextBoolean();
		
		System.out.println("");
		System.out.println("");
		
		System.out.printf("Hello %s , How are you today?",fullname);
		System.out.printf("Nice meeting you , you are living in %s",address);
		System.out.printf("%s, you are %d years old",fuLLName,age);
		System.ouut.printf("You are ")
	}
}