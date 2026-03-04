import java.util.Scanner;

public class AlphabetCheck{
	public static void main(String[] args){
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter any alphabet A-Z of your choice: ");
		char alpha = input.next().charAt(0);
		
		switch(alpha){
			case 'A':
			case 'a':
			case 'E':
			case 'e':
			case 'I':
			case 'i':
			case 'O':
			case 'o':
			case 'U':
			case 'u':
				System.out.printf("%c is a vowel",alpha);
			break;
			default:
				System.out.printf("%c is a consonant",alpha);
			
		}		
	}
}