PImage img;
String frame;

void setup(){
  for(int i=0;i<6564;i+=3){
    if(i>=0 && i<10)img = loadImage("sourse/BA_00000"+i+".png");
    else if(i>=10 && i<100)img = loadImage("sourse/BA_0000"+i+".png");
    else if(i>=100 && i<1000)img = loadImage("sourse/BA_000"+i+".png");
    else if(i>=1000 && i<10000)img = loadImage("sourse/BA_00"+i+".png");
    println("BA_"+i+".png");
    for(int y=0;y<1080;y+=80){
      frame+="#";
      for(int x=0;x<1920;x+=60){
        if(red(img.pixels[y*1920+x])<100){
          frame+="  ";
        }
        else{
          frame+="#";
        }
      }
      frame+="#";
      frame+="\n";
    }
    write(frame,i);
    frame="";
  }
}
void draw(){}

void write(String str,int i){
  PrintWriter output = createWriter("temp/BA_"+i+".txt");
  output.println(str);
  output.flush();
  output.close();
}
