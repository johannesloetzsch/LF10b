# Serverdienste

> [**❓❗**](https://de.wikipedia.org/wiki/Internetdienst "(Im Hintergrund laufende) Prozesse, die (über das Netzwerk) Funktionalität bereitstellen")
> Was ist ein Dienst?

> [**❓❗**](https://de.wikipedia.org/wiki/Socket "Quell-IP + Quell-Port + Ziel-IP + Ziel-Port + Prozess-ID")
> Was ist ein Socket?

> **💬** Welche Dienste laufen auf ihren Geräten?

> **💻** Auf Unix-Shell mit **S**ocket**S**tat nachschauen:
> ```sh
> ss -tul  ## --tcp --udp ----listening
>
> ## Mehr Details (über die Prozesse/Dienste):
> ss -tulp  ## --processes
> ss -tulpe  ## --extended
> ss -tulpen  ## --numeric
> ```


## Well-Known-Ports

| Port        | Dienst       |
| ----------- | ------------ |
|  **25** TCP | **SMTP**     |
|  **53**     | **DNS**      |
|  67,68  UDP | DHCP (BOOTP) |
|  **80** TCP | **HTTP**     |
|   123   UDP | NTP          |
|   110   TCP | POP3         |
|   143   TCP | IMAP         |
|   389       | LDAP         |
|   636       | LDAPS        |
| **443** TCP | **HTTPS**    |
|   465   TCP | SMTPS        |
|   993   TCP | IMAPS        |
|   995   TCP | POP3s        |

> [**💻**](https://www.man7.org/linux/man-pages/man5/services.5.html) Unix-Shell:
> ```sh
> cat /etc/services
> ```
