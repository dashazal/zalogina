#include <Servo.h>

Servo blinds;
int n = 0;
bool alarm = false;

const int PIN_LDR   = A0;
const int PIN_NTC   = A1;
const int PIN_TRIG  = 3;
const int PIN_ECHO  = 4;
const int PIN_SERVO = 9;
const int PIN_LED   = 8;

void setup() {
  Serial.begin(115200);
  pinMode(PIN_TRIG, OUTPUT);
  pinMode(PIN_ECHO, INPUT);
  pinMode(PIN_LED, OUTPUT);
  blinds.attach(PIN_SERVO);
  blinds.write(0); // жалюзи закрыты
  digitalWrite(PIN_LED, LOW);
}

void loop() {
  delay(2000); // Период опроса T = 2 секунды
  n++;

  // s1: LDR 0-100%
  float s1 = analogRead(PIN_LDR) * 100.0 / 1023.0; 
  // s2: NTC -20..80 градусов
  float s2 = -20.0 + analogRead(PIN_NTC) * 100.0 / 1023.0; 
  
  // s3: HC-SR04 расстояние в см
  digitalWrite(PIN_TRIG, LOW);
  delayMicroseconds(2);
  digitalWrite(PIN_TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(PIN_TRIG, LOW);
  float s3 = pulseIn(PIN_ECHO, HIGH, 30000) * 0.034 / 2.0; 

  // Вывод строки DATA
  Serial.print("DATA n=");  Serial.print(n);
  Serial.print(" s1=");     Serial.print(s1, 2);
  Serial.print(" s2=");     Serial.print(s2, 2);
  Serial.print(" s3=");     Serial.println(s3, 2);

  // Порог: освещенность > 80%
  if (s1 > 80 && !alarm) {
    alarm = true;
    blinds.write(90); // открыть жалюзи
    digitalWrite(PIN_LED, HIGH); // включить светодиод
    Serial.print("EVENT n="); Serial.print(n);
    Serial.println(" type=THRESHOLD");
  }
  
  if (s1 <= 80 && alarm) {
    alarm = false;
    blinds.write(0); // закрыть жалюзи
    digitalWrite(PIN_LED, LOW); // выключить светодиод
    Serial.print("EVENT n="); Serial.print(n);
    Serial.println(" type=NORMAL");
  }
}
