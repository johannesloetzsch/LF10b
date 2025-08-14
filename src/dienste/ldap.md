# Verzeichnisdienste
*ITU-T X.500*

## [LDAP](https://de.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol)
**L**ightweight **D**irectory **A**ccess **P**rotocol

![](https://upload.wikimedia.org/wikipedia/commons/3/3e/Datenstruktur.png)


### Standart-Attributtypen

> **o**organization
>
> **c**ountry
>
> **st**ate
>
> **o**rganizational **u**nit
>
> **c**ommon **n**ame
>
> **s**ur**n**ame
>
> e-**mail**

### [Group Policy Objects (GPO)](https://de.wikipedia.org/wiki/Group_Policy_Object)
* Gruppenrichtlinien können 3 Zustände haben: „aktiviert“ / „deaktiviert“ / „nicht konfiguriert“
* Kumulative Vererbung innerhalb der [Group Policy Hierarchy](https://learn.microsoft.com/de-de/previous-versions/windows/desktop/policy/group-policy-hierarchy)
  * Ausnahme: [No Override](https://learn.microsoft.com/de-de/previous-versions/windows/desktop/policy/overriding-and-blocking-group-policy)


## [Active Directory (AD)](https://de.wikipedia.org/wiki/Active_Directory)
**A**ctive **D**irectory **D**omain **S**ervices

=> zentralisierte Windows-Domainverwaltung

### [Hauptkomponenten](https://de.wikipedia.org/wiki/Active_Directory#Die_vier_Hauptkomponenten)

* DNS
* LDAP
* [**S**erver **M**essage **B**lock (SMB)](https://de.wikipedia.org/wiki/Server_Message_Block)
=> Windows-Dateifreigabe
* [**Kerberos**](https://de.wikipedia.org/wiki/Kerberos_(Protokoll))
=> Authentifizierung

> **💡💬** [Vorlesung / Workshop](https://johannesloetzsch.de/about/kerberos/kerberos.pdf)
>
> **💻** [Beispiel Setup](https://johannesloetzsch.de/about/kerberos/setup_krb.sh)
