^i::
PassCount := 300

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

    ; Скипаем на один пароль вниз
    Send {Down}
    ; и заходим внутрь
    Send {Enter}
    ; Копирование URL
    Send ^a
    Send ^c
    ; Подстановка в name и url
    Send !{Tab}
    Sleep, 500
    Send ^v
    Send {Right}
    Sleep, 100
    Send ^v
    Send {Right}
    Sleep, 100
    Send !{Tab}
    Sleep, 500
    ; Копирование логина
    Send {Tab}
    Send {Tab}
    Send ^a
    Send ^c
    ; Подстановка логина
    Send !{Tab}
    Sleep, 500
    Send ^v
    Send {Right}
    Sleep, 100
    Send !{Tab}
    Sleep, 500
    ; Раскрытие пароля
    Send {Tab}
    Send {Tab}
    Send {Tab}
    Sleep, 50
    Send {Enter}
    Sleep, 50
    ; Копирование пароля
    Send +{Tab}
    Send ^a
    Send ^c
    ; Подстановка пароля, возврат курсора в начало следующей строки
    Send !{Tab}
    Sleep, 500
    Send ^v

    Send {Left}
    Sleep, 50
    Send {Left}
    Sleep, 50
    Send {Left}
    Sleep, 50
    Send {Down}
    Sleep, 50

    Send !{Tab}
    Sleep, 500

    ; Выход, подготовка к новой итерации
    Send {Esc}
}
return

^Escape::
ExitApp
Return