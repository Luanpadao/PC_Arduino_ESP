#include "ESP8266WiFi.h"
#define dk D5
#define dn D6
#define q D7

//Tên và mật khẩu mà ESP8266 server phát ra
const char *ssid = "luan";
const char *password = "ahihiluan";
IPAddress server_ip(192, 168, 4, 1);

//port 23 là port của esp8266 server đã khởi tạo
#define PORT  23
WiFiClient client;

void setup() {
  pinMode(dk,OUTPUT);
  pinMode(dn,OUTPUT);
  pinMode(q,OUTPUT);
  uint8_t i = 0;
  Serial.begin(115200);

  //Kết nối tới wifi đã khởi tạo thông qua ssdi và password đã khai báo
  WiFi.begin(ssid, password);

  Serial.print("\nConnecting to ");
  Serial.println(ssid);

  //Trong khi không có kết nối wifi thì in ra "Connecting" mỗi 500ms
  while (WiFi.status() != WL_CONNECTED) {
    Serial.println("Connecting...");
    delay(500);
  }
}
unsigned long previousMillis = 0;
void loop() {

  //Kiểm tra xem đã kết nối wifi chưa
  //Nếu đã kết nối wifi mà client chưa kết nối được với server thì in ra báo kết nối thất bại
  if (WiFi.status() == WL_CONNECTED) {
    while (!client.connected()) {
      if (!client.connect(server_ip, PORT)) {
        Serial.println("connection failed");
        delay(1000);
        return;
      }
    }

    //Nếu client có dữ liệu thì sẽ đọc dữ liệu và lưu vào biến nhớ
    //Dùng các hàm tách chuỗi rồi so sánh với các ký tự trong chuỗi để xuất ngõ ra
    while (client.available()) {

      String line = client.readStringUntil('\r');
      Serial.println(line);
      if(line.substring(0,1) == "1")
        digitalWrite(dk,HIGH);
      else
        digitalWrite(dk,LOW);
      if(line.substring(2,3) == "1")
        digitalWrite(dn,HIGH);
      else
        digitalWrite(dn,LOW);
      if(line.substring(4) == "1")
        digitalWrite(q,HIGH);
      else
        digitalWrite(q,LOW);

      //Sử dụng chương trình tạo trễ để tránh việc đọc dữ liệu quá nhanh không kịp sử lý
      unsigned long currentMillis = millis();
      if (currentMillis - previousMillis >= 1000) {
      previousMillis = currentMillis;
      }
    }
  }
}
