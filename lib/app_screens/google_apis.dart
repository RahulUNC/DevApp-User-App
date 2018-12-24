import 'package:flutter/material.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis/calendar/v3.dart';

final accountCredentials = new ServiceAccountCredentials.fromJson({
  "private_key_id": "b12a50f2ba9729b1c9744cdbaa67eaff14ba5687",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCH2l6IMtCiD1ZP\nvhqDz+wqOx5THOTayOaNQNu+wTofbeHcRnOOUOVDkOD6evK98C1cvVzy0bJ9e889\nt7IfZZGPuGjlrynQWrGqT+OmHex+8RFyka8qCU3SF38kdMOU/eQ3F+ub1KSWPMh9\n8pR1dlhZgFLt68eTMI48aGvIoDaiHGKTFLN5B23AatWBLu0NonJ1dR3k2qvbzHHu\nZpM1miKK0LZQJHmVdBUWK7VHFkirLmrZ4tHCuUb46xi/Nap0Vx4RURsws+4YDn5K\nIDBm095DjsolKayGgVpFbA7XDxkDkxX7riQzItyPLE32hp5eVWwS9drkuHbSWEOo\nGL01+BV5AgMBAAECggEAHHgws04i1rNsHQ3ztIfQMBFvi29UrlzHo/ZhlpobuhZm\n7Kh+8uYVBZHI8/TsBc3dU8ADSIeVZiKaDY7/bwDz/jBhGzEYDCfVb6GKTXeb5gZS\n57WMBb0pZ8uww00M555FQx5qK5/mVe2q/mnlnrAMV8VCm8V7b2cPh61CWSrqCBKo\nkFj+Wib9gxqhQDLygYAT9WiSRfT5IegmD+Unms/w4fdhzKODEDYNXEZp2zIeunCf\nhszMBEcjSWlW7HomlQOebjPVzYEtqwdHjyNw43YcCqakmigcmoRcO6PwQrtz9ji3\nwoHVl/JQFSVFvQ2VhQjhEvOG8HkOWmT/cKNLRJFJOQKBgQC+ETgrk45mmqD4NFN3\nJ/iigWaR8zvBnNddACbWfrh3GgplveTovq8C151t01zLA5RyoK8oCqpuvDB7CnQP\ncXbNfK8THOxqGRVt8+rYbwdPUHs3esrrxbWLRODmSesMiDf+4znSRK7LBfaOvO0U\nUDpzTWcGth7j017juw+WUWspjwKBgQC2+rF/OeLonR5L5M5Jo0HZZQq2eF0iHKLX\n3Zl6lKrMsh8B8qqjhXEgEazYluE7go62NjahT52r5sANeWMLWcWFXz5O4kDp88V1\nK7DZ1XIgg0MBtPtGwxbpzmYtwgvN0hfWgRGjgO1gUXOT3NK3OgNyO3ZpovM3cnqW\n4g/TplH8dwKBgGw3XaXh85gTvkbTdBpJ1dSgnIfI12MbK7u11GcX62tUlkrrXaPu\nvbJ+lRHs385vEVxahJ/lwrgdyfSkNQR988h3jy7wruKRuZPK5xGn1Z+hESa7cUHg\nZccPxoUX3Q5bmJY1Rbykgmjx0jne85U3QLBZh6lYlCnfNQ2weeV6IeudAoGAZZhk\nHSPi3Qz/2Vu9Ph2rXi0/+XhzHZGQyRJ9ORZ6jxUHKmm2XPymhwvJUKjVfdlLq9gG\nFSLDhMKmN9UCLTc2+Iqdaect67gyFpCfrRNaPrsi5Tu7mNqRSlgTW6y2KR1RpwQa\n6xGWuzf+WEbvqFRJvY9Oe/DB4jNp5YS3DOj39JkCgYBUHOD9rLriPbL4vLHbshtF\n68pLIUDLMTCuxEqRmYtKudSpKzTD2TRGkBfvQBZixXVEXxG/QtHJJ8RF/D3JAOLW\nY9fGp6See8ygh1Dzr+9hCFFOBTbsvDPxByaxPYLGC9VqheC/yrU05pQvZln1krru\nz7om5B83miQIubRhDrwiew==\n-----END PRIVATE KEY-----\n",
  "client_email": "google-api@devapp-226220.iam.gserviceaccount.com",
  "client_id": "105636925644170959800",
  "type": "service_account"
});

var _scopes = [CalendarApi.CalendarScope]; //defines the scopes for the calendar api
var calEvents = null;
void getCalendarEvents() { 
    clientViaServiceAccount(accountCredentials, _scopes).then((client) {
      var calendar = new CalendarApi(client);
      calEvents = calendar.events.list("devappunc@gmail.com");
      calEvents.then((Events events) {
        events.items.forEach((Event event) {print(event.summary);});
      });
    });
}

class calendarAPI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        getCalendarEvents();
    return Text(
       'placeholder',
        style:TextStyle(
        decoration:TextDecoration.none,
        fontSize: 25.0,
      ),
      textDirection: TextDirection.ltr
    );
  }

}