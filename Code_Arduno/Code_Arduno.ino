#include "DHT.h"
#include <SoftwareSerial.h>
#include <Adafruit_Sensor.h>
#include <LiquidCrystal_I2C.h>
SoftwareSerial mySerial(10,11); //RX,TX Cấu hình chân 10 là RX và 11 là TX
#define DHTTYPE DHT11 // Định nghĩa loại cảm biến sử dụng là DHT11
#define DHTPIN 5 // Định nghĩa chân kết nối cảm biến DHT11 là chân 5
LiquidCrystal_I2C lcd(0x27,16,2); // Khai báo biến Lcd (địa chỉ, số cột, số dòng)
#define gas A0 // Định nghĩa chân kết nối cảm biến MQ-02 là chân A0
DHT dht(DHTPIN, DHTTYPE);
int dk = 2;
int dn = 3;
int q = 4;
String string = "";
int t,h,g; 
void setup()
{
    pinMode(dk, OUTPUT);
    pinMode(dn, OUTPUT);
    pinMode(q, OUTPUT);
    digitalWrite(dk,LOW); 
    digitalWrite(dn,LOW); 
    digitalWrite(q,LOW); 
    mySerial.begin(115200);
    Serial.begin(9600);
    dht.begin();
    lcd.init(); // Khởi động LCD
    lcd.clear(); // Xóa màn hình 
    lcd.backlight(); // Mở đèn
}
void loop()
{
    read_sensor();
    if(Serial.available())
    {
      string = Serial.readString();
      delay(100);
    }
    else
    {
      Serial.print(t);
      Serial.print(":");
      Serial.print(h);
      Serial.print(":");
      Serial.println(g);
      mySerial.print(string.substring(0,1));
      mySerial.print(string.substring(1,2));
      mySerial.println(string.substring(2,3));
    delay(100);
    }

    
    //In nhiet do ra LCD
    lcd.setCursor(0,0); // Con trỏ ở vị trí cột 0, hàng 0
    lcd.print(t); // In giá trị nhiệt độ
    lcd.setCursor(5,0); // Con trỏ ở vị trí cột 5, hàng 0
    lcd.print(" (C) "); // In chuỗi " (C) "

    //In do am ra LCD
    lcd.setCursor(10,0); // Con trỏ ở vị trí cột 0, hàng 0
    lcd.print(h); // In giá trị nhiệt độ
    lcd.setCursor(15,0); // Con trỏ ở vị trí cột 5, hàng 0
    lcd.print("%"); // In chuỗi " (C) "

    //In khi gas ra LCD
    lcd.setCursor(0,1); // Con trỏ ở vị trí cột 0, hàng 1
    lcd.print("Gas: "); // In ra chuỗi "Gas: "
    lcd.setCursor(6,1); // Con trỏ ở vị trí cột 6, hàng 1
    lcd.print(g); // In giá trị gas
    
    //Chương trình xóa chèn ký tự cũ trên lcd
    if (g >= 100) 
    {
      lcd.setCursor(10,1); // Con trỏ ở vị trí cột 10, hàng 1
      lcd.print(" PPM "); // In chuỗi " PPM "
    }
    else
    {
      lcd.setCursor(8,1); // Con trỏ ở vị trí cột 8, hàng 1
      lcd.print("  PPM "); // In chuỗi "  PPM "
    }
  
    if(string.substring(0,1)=="1")
      digitalWrite(dk,HIGH);
    else
      digitalWrite(dk,LOW);
    if(string.substring(1,2)=="1")
      digitalWrite(dn,HIGH);
    else
      digitalWrite(dn,LOW);
    if(string.substring(2)=="1")
      digitalWrite(q,HIGH);
    else
      digitalWrite(q,LOW);
    delay(100);
}
void read_sensor()
{
  t = dht.readTemperature(); // đọc giá trị nhiệt độ lưu vào biến t
  h = dht.readHumidity(); // đọc giá trị độ ẩm lưu vào biến h
  g = analogRead(gas); // đọc giá trị từ chân analog A0 và lưu vào biến g
}
