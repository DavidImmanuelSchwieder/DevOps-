# PowerShell
&rarr;PowerShell-Skripts(.ps1) benutzen wir um unsere Bicep-Dateien bereitzustellen. Sie können uns auch alles einfacher machen, zum Beispiel könnte man durch ein Skript sich anmelden lassen und eine Ressourcengruppe zu erstellen, ein Beispiel dafür ist hier:
                                    &dArr;
         
          Anmelden bei Azure
          Az Login
          
          Variablen definieren
          $resourceGroupName = "myResourceGroup"
          $templateFile = "path/to/compiled/template.json"

          Ressourcengruppe erstellen
          New-AzResourceGroup -Name $resourceGroupName -Location "West Europe"

          Bereitstellung ausführen
          New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile


# Virtual Machines
&rarr; Virtual Machine ist einer der ersten Cloud-Dienste von Microsoft. Wo Sie die Kontrolle über alles haben
von der Hardware bis zum Betriebssystem und den Anwendungen. Dies kann nützlich sein, wenn Sie etwas Besonderes haben
Anforderungen wie Unterstützung für Legacy-Anwendungen oder Laufzeit-Stacks oder zusätzliche Abhängigkeiten
oder benutzerdefinierte Skripte, die Sie ausführen müssen. Der Nachteil ist jedoch, dass Sie das Ganze verwalten müssen
Stapel von Anfang bis Ende. Und wie sieht es mit Hochverfügbarkeit und Lastausgleich aus? Du musst aufpassen
auch davon.

# Azure App Service
&rarr; Während virtuelle Maschinen vollständigen Zugriff und Unterstützung für nahezu jede Lösung oder Abhängigkeit bieten, bietet Azure App
Der Service ist eingeschränkter. Es handelt sich jedoch um eine vollständig verwaltete Hosting-Umgebung, was bedeutet, dass Sie viel haben
weniger zu verwalten. Mit Azure App Service Web Apps können Sie ganz einfach manuelle oder automatisierte Integrationen durchführen
Entwicklungsplattformen wie GitHub zum Veröffentlichen Ihres Codes und viele Standardfunktionen sind verfügbar
mit nur wenigen Klicks. Die Plattform ist darauf ausgelegt, moderne, hoch skalierbare Webanwendungen zu unterstützen
deren Verwaltung viel weniger Aufwand erfordert.

# Azure Functions
&rarr; Auch wenn Sie mit Azure Functions keine vollständigen MVC-Webanwendungen ausführen werden, ist dies auf jeden Fall möglich
APIs verfügbar machen. Azure Functions gilt als „serverlose“ Technologie. Wenn Sie ein kleines haben
Codestück, das Sie als Reaktion auf einen Auslöser ausführen müssen (denken Sie an „ereignisgesteuerte Architektur“),
Azure Functions könnte eine gute Option sein. Sie zahlen nur für die Ausführungszeit und Ressourcen,
und es unterstützt mehrere Sprachen.

# Container
&rarr; Erstens ist es gut zu wissen, dass Azure App Service oder Azure Functions Container unterstützen.
Wenn Sie eine Lösung erstellen, die bestimmte Abhängigkeiten oder Sprachen erfordert, für die dies nicht der Fall ist
Unterstützt durch Azure App Service oder Azure Functions können Sie Ihre Lösung mit einem bereitstellen
benutzerdefinierter Docker-Container. Azure bietet auch mehrere Container-spezifische Dienste an. Mit
Mit Azure Container Instances können Sie beispielsweise schnell einfache Container bereitstellen
Lösungen. Wenn Ihre Lösung erweiterte Überwachung, Skalierung und Orchestrierung erfordert.
