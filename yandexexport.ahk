; Метод далеко не самый оптимальный, ибо сложность его растет экспоненциально, но
; зато на относительно небольших количествах паролей он работает стабилньо.
; Добавиль постоянное обновление страницы, т.к. у меня переставали выбираться поля после
; нажатия esc.

; Если метод сбивается, то надо passNum задать зачнение, равное номеру последней внесенной
; строки с паролем в экселе - 1

; Бывает метод начинает тупить и делать неправильные копии. Зависит это от быстрдействия вашего ПК.
; Если такая проблема возникает, то имеет смысл поиграться с переменной sleepTime постепенно увеличивая 
; ее значение, пока программа не начнет работать правильно.

^i::
; Количество паролей
PassCount := 113   
; Номер последнего занесенного пароля, изначально должен стоять 0
passNum := 0
; Промежуток времени между операциями
; Если скрипт пропускает нажатия - нужно увеличить этот период
sleepTime := 150


Loop %PassCount% {
    ; Перезапускаем страницу, чтобы начинать всегда с одного места
    ; Иначе высока вероятность сбиться 
    Send {F5}   

    ; Переходим до первого пароля; цифра может МЕНЯТЬСЯ, перед использованием желательно проверить вручную,
    ; открыв страницу с паролями, нажав F5 и затем нажимать Таб пока не дойдет до первого пароля
    Loop 13 {
        Send {Tab}
        Sleep, 250
    }

    ; Спускаемся до нужного пароля
    Loop %passNum% {
        Send {Down}
        Sleep, %sleepTime%
    }
    ; и заходим внутрь
    Send {Enter}
    Sleep, %sleepTime%
    ; Копирование URL
    Send ^a
    Send ^c
    ; Подстановка в name и url
    Send !{Tab}
    Sleep, %sleepTime%
    Send ^v
    Send {Right}
    Sleep, %sleepTime%
    Send ^v
    Send {Right}
    Sleep, %sleepTime%
    Send !{Tab}
    Sleep, %sleepTime%
    ; Копирование логина
    Send {Tab}
    Sleep, %sleepTime%
    Send {Tab}
    Sleep, %sleepTime%
    Send ^a
    Send ^c
    ; Подстановка логина
    Sleep, %sleepTime%
    Send !{Tab}
    Sleep, %sleepTime%
    Send ^v
    Send {Right}
    Sleep, %sleepTime%
    Send !{Tab}
    Sleep, %sleepTime%
    ; Раскрытие пароля
    Send {Tab}
    Sleep, %sleepTime%
    Send {Tab}
    Sleep, %sleepTime%
    Send {Tab}
    Sleep, %sleepTime%
    Send {Enter}
    Sleep, %sleepTime%
    ; Копирование пароля
    Send +{Tab}
    Sleep, %sleepTime%
    Send ^a
    Send ^c
    ; Подстановка пароля, возврат курсора в начало следующей строки
    Send !{Tab}
    Sleep, %sleepTime%
    Send ^v

    Send {Left}
    Send {Left}
    Send {Left}
    Send {Down}

    Send !{Tab}
    Sleep, %sleepTime%

    ; Выход, подготовка к новой итерации
    Send {Esc}
    Sleep, %sleepTime%

    ; Переходим к следующему паролю
    passNum += 1
}
return

^Escape::
ExitApp
Return