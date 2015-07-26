void setup()
{
  background(255);
  size(525,525);
}

void stack_of_c()
{
  int CB_h = 1000;
  int Matt_h = 1000;
  boolean Matt_is_Yelling = false;
  //?:condition
  int a = Matt_h<CB_h ? 1:2;
  
  
  //while loop
  while (Matt_h > 0)
  {
    //if condition
    if(Matt_is_Yelling)
    {
      break;
    }
    Matt_h--;
  }
  
  //for loop
  for (int i=0; i<1000;i=i+3)
  {
    Matt_h++;
  }
  
  int num = int(random(0,3));
  
  switch(num) {
  case 0: 
    println("Zero");  // Does not execute
    break;
  case 1: 
    println("One");
    break;
  case 2: 
    println("Twooo"); 
    break;
  case 3: 
    println("Three");  
    break;
  default:
    println("aaaaa");
    break;
}
  
}
