# NTP
*RFC 5905*

## Hierarchie nach „Stratum“

![](https://upload.wikimedia.org/wikipedia/commons/c/c9/Network_Time_Protocol_servers_and_clients.svg)


## UTC, Unix-Timestamp, Zeitformate

| Bit    | Era / Epoch                   | Seconds (Era Offset) | Fraction | Überlauf |
| ------ | ----------------------------- | -------------------- | -------- | -------- |
| 32bit  | 1.1.1970                      | 32bit signed         | -        | 2038     |
| 64bit  | 1.1.1900                      | 32bit unsigned       | 32bit    | 2036     | 
| 128bit | 1.1.1900 Era 0 / 32bit signed | 32bit unsigned       | 64bit    | …        |
