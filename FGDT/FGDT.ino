#include <DallasTemperature.h>
#include <OneWire.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h> 
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

#define ONE_WIRE_BUS D4

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensor(&oneWire);

const char* ssid = "MISQUEEN"; 
const char* password = "izzansilmiaziz96";

//const char* ssid = "RATU_NET3"; 
//const char* password = "b15m1ll4h";



//sesuikan posisi pin select
int s0 = D3;
int s1 = D2;
int s2 = D1;
  
//gunakan A0 sebagai input
int analogPin = A0;
  
//variabel untuk menyimpan nilai input
float nilaiInput1 = 0;
float nilaiInput2 = 0;
int GasStatus;
int FlameStatus;

int delayBetweenVal = 1000;
static uint32_t lastTimeSampling =0;
static uint32_t lastTimeSampling1=0;
static uint32_t lastTimeSampling2=0;
static uint32_t lastTimeSampling3=0;
static uint32_t lastTimeSampling4=0;
  
void setup() {
  //jadikan pin select sebagai output
  pinMode(s0, OUTPUT);
  pinMode(s1, OUTPUT);
  pinMode(s2, OUTPUT);
  pinMode(D5, INPUT);
  pinMode(D6, INPUT);
  
  //aktifkan komunikasi serial
  Serial.begin(9600);
  Serial.println("Gas sensor warming up!");
  delay(2000); 
  sensor.begin();
  delay(1000);
   WiFi.mode(WIFI_STA);
  WiFi.disconnect();
  delay(100);
  // attempt to connect to Wifi network:
  Serial.print("Connecting Wifi: ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  
}
  
void loop() {
  
  //memilih y0 sebagai input
  digitalWrite(s0,LOW);
  digitalWrite(s1,LOW);
  digitalWrite(s2,LOW);
  nilaiInput1 = analogRead(analogPin);

   //memilih y1 sebagai input
  digitalWrite(s0,HIGH);
  digitalWrite(s1,LOW);
  digitalWrite(s2,LOW);
  nilaiInput2 = analogRead(analogPin);

  GasStatus = digitalRead(D5);
  FlameStatus = digitalRead(D6);
  
  if(millis()-lastTimeSampling>=delayBetweenVal){
        lastTimeSampling1=millis();
        Serial.print("Sensor Gas Value: ");
        Serial.println(nilaiInput1);
//        if(nilaiInput1 > 200)
//        {
//          Serial.print(" | Smoke detected!");
//        }
      }
    
 
   if(millis()-lastTimeSampling>=delayBetweenVal){
        lastTimeSampling1=millis();
        Serial.print("Sensor Flame Value: ");
        Serial.println(nilaiInput2);
//        if(nilaiInput2 < 87)
//          {
//            Serial.print(" | Flame detected!");
//          }
       }
       
    if(millis()-lastTimeSampling>=delayBetweenVal){
        lastTimeSampling1=millis();
        sensor.requestTemperatures();
        Serial.print("Temperature is: ");
        Serial.println(sensor.getTempCByIndex(0));
       }
       
    if(millis()-lastTimeSampling>=delayBetweenVal){
        lastTimeSampling1=millis();
        Serial.print("Sensor Gas Status: ");
        Serial.println(GasStatus);
       }
    if(millis()-lastTimeSampling>=delayBetweenVal){
        lastTimeSampling1=millis();
        Serial.print("Sensor Flame Status: ");
        Serial.println(FlameStatus);
       }
   
       delay(2000);

  /*<-------Send Data to Database------>*/
              
        HTTPClient http;    //Declare object of class HTTPClient 
        String Data, Data1, postData, Data2;
        int flamevalue=FlameStatus;
        if(flamevalue == 1){
          Data=String("OFF");
        }
        else{
          Data=String("ON");
        }
        int gasvalue=GasStatus;
        if(gasvalue == 1){
          Data1=String("OFF");
        }
        else{
          Data1=String("ON");
        }
          float suhu = sensor.getTempCByIndex(0);
          Data2=suhu;
 
       //Post Data
      postData = "flamevalue=" + Data + "&gasvalue=" + Data1 + "&suhu=" + Data2;
  
      http.begin("http://dev.unimasoft.web.id/kampungsusu/apisend/insert.php");              //Specify request destination
      http.addHeader("Content-Type", "application/x-www-form-urlencoded");    //Specify content-type header
 
      int httpCode = http.POST(postData);   //Send the request
      String payload = http.getString();    //Get the response payload
 
     Serial.println(httpCode);   //Print HTTP return code
     Serial.println(payload);    //Print request response payload
 
     http.end();  //Close connection
  
    delay(5000);  //Post Data at every 5 seconds
}
