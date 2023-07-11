#include <ESP8266WiFi.h>
#define PORT  23

// Giới hạn số clients kết nối
#define MAX_CLIENTS 3

// Khai báo tên và mật khẩu cho ESP8266 Server
const char *ssid = "luan";
const char *password = "ahihiluan";

String dk = "0",dn = "0",q = "0";

// Khởi tạo địa chỉ IP
IPAddress local_IP(192, 168, 4, 1);
IPAddress gateway(192, 168, 4, 1);
IPAddress subnet(255, 255, 255, 0);

//Khởi tạo port để clients kết nối
WiFiServer server(PORT);
WiFiClient clients[MAX_CLIENTS];

void setup() {
  Serial.begin(115200);
  Serial.println();
  Serial.print("Setting soft-AP configuration ... ");

  //Cấu hình AP (acces point), cài đặt soft AP để client kết nối vào
  WiFi.softAPConfig(local_IP, gateway, subnet);
  WiFi.softAP(ssid, password);

  
  Serial.print("AP IP address: ");
  Serial.println(WiFi.softAPIP());
  Serial.println("Telnet server started");
  server.begin();
}

void loop() {
  uint8_t i;

  
  //Kiểm tra client có kết nối không
  if (server.hasClient())  {
    for (i = 0; i < MAX_CLIENTS; i++) {
      if (!clients[i] || !clients[i].connected())
      { if (clients[i]) clients[i].stop();
        clients[i] = server.available();
        continue;
      }
    }
    WiFiClient serverClient = server.available();
    serverClient.stop();
  }

  //Đọc dữ liệu từ Serial mà arduino UNO R3 gửi qua
  if (Serial.available())
  {
    String temp = Serial.readString();
    dk = temp.substring(0,1);           //tách chuỗi lấy ký tự đầu
    dn = temp.substring(1,2);           //tách chuỗi lấy ký tự 2
    q = temp.substring(2,3);            //tách chuỗi lấy ký từ 3
  }

  //Kiểm tra nếu có client kết nối thì sẽ gửi dữ liệu cho client đó.
  for (i = 0; i < MAX_CLIENTS; i++) {
    if (clients[i] && clients[i].connected()) {
        String resp = dk + ":" + dn + ":" + q + "\r";
        clients[i].write(resp.c_str());
    }
  }
}
