import java.util.Calendar;


Calendar c;
double dayOfWeek;
static double startWork = 7;
static double endWork = 15;
static double minutesinWeek = 2400;
double minutesWasWork;

void setup()
{
  //size(640, 360);
  c = Calendar.getInstance();
  dayOfWeek = c.get(Calendar.DAY_OF_WEEK) - 1;
  println(dayOfWeek);
}

void draw()
{
  if(endWork > hour())
  {
    minutesWasWork = (dayOfWeek - 1) * 480;
    if(startWork < hour())
      minutesWasWork = minutesWasWork + ((hour() - startWork) * 60) + minute();
  }
  else
    minutesWasWork = dayOfWeek * 480;
    
  if((dayOfWeek - 1) > 5)
    minutesWasWork = minutesinWeek;
  
  
    
  println(minutesWasWork);
  
  print("Weekend loading: ");
  print(minutesWasWork*100/2400);
  println(" %");
  
  textSize(60);
  text("Weekend loading: ", 0, 70);
  String str = String.format ("%.2f", minutesWasWork*100/2400);
  text(str, 0, 140);
  text(" %", 300, 140);
}