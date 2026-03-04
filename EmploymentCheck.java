import java.util.Scanner;

public class EmploymentCheck{
    public static void main(String[] args){
        
        Scanner input = new Scanner(System.in);
        
        // Accept name
        System.out.print("Enter your name: ");
        String name = input.nextLine();
        
        // Accept scores
        System.out.print("Enter English test score: ");
        double english = input.nextDouble();
        
        System.out.print("Enter Math test score: ");
        double math = input.nextDouble();
        
        System.out.print("Enter ICT test score: ");
        double ict = input.nextDouble();
        
        // Calculate average
        double average = (english + math + ict) / 3;
        
        System.out.println("\nApplicant Name: " + name);
        System.out.println("Average Score: " + average);
        
        // Check English score
        if (english > 70) {
            System.out.println("English score is greater than 70.");
        } else {
            System.out.println("English score is not greater than 70.");
        }
        
        // Grant or Reject Employment
        if (average >= 80 && english > 70) {
            System.out.println("Employment Granted");
        } else {
            System.out.println("Employment Rejected");
        }
        
        input.close();
    }
}