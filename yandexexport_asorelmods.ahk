^i::
PassCount := 500

Loop %PassCount% {
    ; Накликиваем список паролей
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Send {Tab}

    ; Скипаем на один пароль вниз
    Send {Down}
    ; и заходим внутрь
    Send {Enter}
    ; Копирование URL
    Send ^a
    Send ^c
    ; Подстановка в name и url
    Send !{Tab}
    Sleep, 1000
    Send ^v
    Send {Right}
    Sleep, 200
    Send ^v
    Send {Right}
    Sleep, 200
    Send !{Tab}
    Sleep, 1000
    ; Копирование логина
    Send {Tab}
    Send {Tab}
    Send ^a
    Send ^c
    ; Подстановка логина
    Send !{Tab}
    Sleep, 1000
    Send ^v
    Send {Right}
    Sleep, 200
    Send !{Tab}
    Sleep, 1000
    ; Раскрытие пароля
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Sleep, 100
    Send {Enter}
    Sleep, 100
    ; Копирование пароля
    Send +{Tab}
    Send ^a
    Send ^c
    ; Подстановка пароля, возврат курсора в начало следующей строки
    Send !{Tab}
    Sleep, 1000
    Send ^v

    Send {Left}
    Sleep, 100
    Send {Left}
    Sleep, 100
    Send {Left}
    Sleep, 100
    Send {Down}
    Sleep, 100

    Send !{Tab}
    Sleep, 1000

    ; Выход, подготовка к новой итерации
    Send {Esc}
}
return

^Escape::
ExitApp
Return