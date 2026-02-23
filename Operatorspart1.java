public class Operatorspart1{
	public static void main(String[] args){
		//assignment operator(=)
		int num = 50;
		System.out.printf("The value of num is %d%n",num);
		
		//Arithmetic Operators(+,-,*,/,%)
		int num1 = 100;
		int num2 = 500;
		
		int addition = num1 + num2;
		System.out.printf("The sum of %d and %d is %d%n",num1,num1, addition);
		
		//correct here
		int subtraction = num1 - num2;
		System.out.printf("The difference between %d and %d is %d%n",num1,num2, subtraction);
		
		int multiplication = num1 * num2;
		System.out.printf("The product of %d and %d is %d%n",num1,num2, multiplication);
		
		double quotient = (double)num1/num2;
		System.out.printf("The quotient of %d / %d is %f%n",num1,num2, quotient);
		
		int remainder = num1%num2;
		System.out.printf("The remainder between %d and %d is %d%n",num1,num2, remainder);
		
		
		//compound assignment operator
	    num1 += num2;
		System.out.printf("The value of num1 is now %d%n",num1);


		num1 *= num2;
		System.out.printf("The value of num1 is now %d%n",num1);
		
		
	    num1 -= num2;
		System.out.printf("The value of num1 is now %d%n",num1);
		
		num1 /= num2;
		System.out.printf("The value of num1 is now %d%n",num1);
		
		num1 %= num2;
		System.out.printf("The value of num1 is now %d%n",num1);
		
		//Relational Operators(<,>,<=,>=,!=,==)
		int number1 = 20, number2 = 50;
		
		boolean isGreater = number1 > number2;
		System.out.printf("Is %d > %d? %b%n",number1,number2,isGreater);
		
		boolean isLessThan = number1 < number2;
		System.out.printf("is %d < %d? %b%n",number1,number2,isLessThan);
		
		boolean isLessThanOrEqualto = number1 <= number2;
		System.out.printf("Is %d <= %d? %b%n",number1,number2,isLessThanOrEqualto);
		
		boolean isGreaterThanOrEqualto = number1 >= number2;
		System.out.printf("is %d >= %d? %b%n",number1,number2,isGreaterThanOrEqualto);
		
		
		
	}
}	