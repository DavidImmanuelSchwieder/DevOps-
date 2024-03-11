# DevOps - die Praxis, nicht Azure DevOps die Plattform (CD & CI)
Der Begriff setzt sich aus „Dev“ (Development) und „Ops“ (Operations) zusammen.
DevOps lässt sich von zuvor getrennten Rollen wie Entwicklung, IT-Betrieb, Qualitätstechnik und Sicherheit koordinieren, um gemeinsam bessere und zuverlässigere Produkte zu realisieren<p></p>


![image](https://github.com/DavidImmanuelSchwieder/DevOps/assets/145438444/839f0b1d-95b6-4579-8ac1-ef848e7bf229)

### Was ist Continuous Integration (CI) ? 
<p></p>
CI ist ein aotmatisierungsprozess für Entwicklungsteams , dadruch können so viele leute wie beliebig an einem projekt arbeiten und die änderungen werden automatisch für alle beteilige in einem gemeinsamen Repository integriert. Dadurch werden Fehler in der Entwicklung schneller erkannt und können früher behoben werden.
<p></p>

### Was Ist Continuous Delivery ?
<p></p>

CD automatisiert die Bereitstellung von Codeänderungen in Test-, Staging- und Produktionsumgebungen. Es wird ein konsistenter und zuverlässiger Release-Prozess geleistet und es kann somit besser gearbeitet werden.

# IoT – Was ist das IoT und wofür wird es verwendet?
### Was ist das Internet of things (IoT)
<p></p>

Das IoT ist ein Netwerk von verbundenen Geräten, die sich mit Anderen IoT geräten und der Cloud verbinden und dort Informationen / Daten austauschen. In der Regel sind IoT-Geräte dinge mit Sensoren, einer Software und können digitale Geräte erfassen
<p></p>

### Wofür wird das Internet of things (IoT) verwendet?
<p></p>

Das IoT wird dafür verwendet um das Leben innovativer zu gestalten , beispielsweise das dass Garagen tor automatisch öffnet wenn man mit dem auto davor steht. Das Auto kommuniziert dann mit der Garage und sagt Garage öffne dich 

# Bicep - Microsoft-Sprache für Ressourcen 
### Wöfür wird eine Bicep File benötig ?
<p></p>

Bicep ist eine domänenspezifische Sprache (DSL), die von Microsoft für die Bereitstellung von Azure-Ressourcen entwickelt wurde. Sie wurde entwickelt, um die Erstellung und Verwaltung von Azure-Ressourcen zu vereinfachen, indem sie im Vergleich zu anderen Sprachen eine besser lesbare Syntax bietet. In einer Bicep-Datei definiert man die Infrastruktur, die man in Azure bereitstellen möchten, und verwenden diese Datei dann während des gesamten Entwicklungslebenszyklus, womit man seine Infrastruktur wiederholt bereitstellen kann.

# Azure-Subscription, Ressourcengruppen
### Azure-Subscription
<p></p>

Eine Azure Subcription ist ein Container für Ressourcen in Microsoft Azure. Sie bietet eine Möglichkeit Ressourcen zu verwalten und zu organisieren und den Zugriff auf Azure-Dienste zu kontrollieren 
<p></p>

### Ressource Groups
<p></p>
Eine Ressourcengruppe ist ein Container für Ressourcen, die in Azure bereitgestellt werden. Sie hilft bei der Organisation und Verwaltung von Ressourcen, der Anwednung einheitlicher Richtlinien und der Vereinfachung des Abrechnungsprozesses.


# Blob - Speichertyp und was darin gespeichert werden soll
### Blob Storage
<p></p>
Azure Blob Storage ist die Objektspeicherlösung von Microsoft für die Cloud. Sie ist für die Speicherung großer Mengen unstrukturierter Daten , wie Text oder Binärdaten da.
<p></p>

### Nutzen
<p></p>

Der Blob Storafe eignet sich für die Speicherung großer Datein, wie Videos und Bilder, Backups wichtiger Datein und anderer unstrukturierter Daten.
<p></p>

### Service Principal - Azure-Bereitstellung
<p></p>

En Azure-Service Principal ist eine Identität, die zur Verwendung mit Anwednungen gehosteten Diensten und automatisierten Tools für den Zugriff auf Azure Ressourcen erstellt wird. Durch die dem Service Prinicipal zugewiesenen Rollen wird dieser Zugriff eingeschränkt, sodadd du steuern kannst, welche Ebene auf welche Ressourcen zugreifen kann 

# Git - Source Control
### Pull Request
<p></p>

Ein Pull Request ist ein Ereignis, das auftritt, wenn ein Entwickler eine Anfrage schickt, um Code-Änderungen aus einem Branch mit einem Hauptprojekt-Repository zu verschmelzen.Wenn ein Pull Request aktzeptiert wird, spricht man von einem Merge. Wenn er gechlossen wird spricht man von einem Close.
<p></p>

### Branch
<p></p>

Ein Branch in Git ist eine parallele Version des Codes, die es den Entwicklern ermöglicht, unabhängig voneinander an Funktionen oder Fehlerbehebungen zu arbeiten, ohne den Hauptcode zu beeinträchtigen. Branches helfen bei der Organisation und Verwaltung von Entwicklungsabläufen.
<p></p>

### Commit
<p></p>

Als Commit in Git bezeichnet man den Vorgang des Einspielens von neuem oder geändertem Quelltext und anderen Datein in das Versionsverwaltungssystem. Wenn ein Entwickler Änderungen an seinem Code vornimmt und diese für andere zugänglich machen möchte, erstellt er einen Commit. Ein Commit ist eine Art Screenshot des Projekt zu einem bestimmten Zeitpunkt. Es speichert den aktuellen Zustand der Dateien und Änderungen. Die Änderungen werden dann im Repository festgehalten, welche dann von einem Entwickler genutzt werden können.

# Github
GitHub ist eine Plattform für das Hosting und die Zusammenarbeit an Git-Repositories. Sie bietet Funktionen wie Issue Tracking, Pull Requests und Workflows zur Verbesserung der Zusammenarbeit zwischen Entwicklern
<p></p>

### Repository
<p></p>

Ein Repository in Github ist ein verwalteter Container für ein Projekt, der Code, Dukumentationen und andere Ressourcen enthält. Entwickler können damit Änderungen einsehen, bearbeiten und wieder einsenden mit deren Veränderungen und Protokollen
<p></p>

### Action
<p></p>

Github Actions ist eine Plattform für Continuous Integration und Continuous Delivery ( CI & CD). Mit GitHub Action kannst du Builds, Tests und Bereitstellungen automatisieren. Du kannst Workflows erstellen, die Aufgaben wie das Testen und Erstellen von Pull Requests oder das Bereitstellen von germergten Pull Requests für die Produktion ausführen können
<p>

________________________________________________________________________________________________________________________________________________________________________________________________________________
</p>

# Voraussetzungen für diese Aufgaben
1. Visual Studio Code und Bicep als Ressourcenvorlage installieren
2. Informiere dich über mehr Biceps und versuch es so gut wie möglich zu verstehen
3. Installiere PowerShell Core mit der Azure-Erweiterung
4. Authentifiziere dich bei Azure für dein Abonnement und deine eigene Ressourcengruppe 
