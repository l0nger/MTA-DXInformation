# Słowem wstępu...
Zasób DXInformation umożliwia wysyłanie powiadomień, które będą wyświetlane na ekranie wszystkich graczy, bądź tylko i wyłącznie dla jednego użytkownika. Wysyłanie powiadomień jest banalnie proste.

# O licencji...
Wkrótce.

# Autorzy
- l0nger (email kontaktowy: l0nger.programmer@gmail.com)

# Na koniec - jak uzywać...
Jak wyżej wspomniałem zasada działania/używania jest prosta, banalnie prosta. Wystarczy pobrać paczkę, wgrać na serwer i uruchomić zasób. 

Powiadomienie, możemy wysłać ze strony klienta jak i serwera, a wszystko przez zdarzenie "outputInformationText".
Skrypt po stronie serwera posiada dwie zaimplementowane funkcje jak i wyeksportowane (uruchamianie funkcji w innym zasobie). Są nimi - sendInformationToPlayer (dla jednego gracza) oraz sendInformationToAll (dla wszystkich aktywnych graczy).
