//
//  CellAPI.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/30/22.
//

class CellModel {
    static func getCellsData() -> [[Cell]] {
        let cellData = [[Cell(icon: "airplane", title: "Авиарежим", color: .systemOrange, onOffText: nil),
                         Cell(icon: "wifi", title: "Wi-Fi", color: .systemBlue, onOffText: "Не подключено"),
                         Cell(icon: "bluetooth", title: "Bluetooth", color: .systemBlue, onOffText: "Вкл."),
                         Cell(icon: "antenna.radiowaves.left.and.right", title: "Сотовая связь", color: .systemGreen, onOffText: nil),
                         Cell(icon: "personalhotspot", title: "Режим модема", color: .systemGreen, onOffText: nil),
                         Cell(icon: "network", title: "VPN", color: .systemBlue, onOffText: nil)],
                        [Cell(icon: "bell.fill", title: "Уведомления", color: .systemRed, onOffText: nil),
                         Cell(icon: "speaker.wave.3.fill", title: "Звуки, тактильные сигналы", color: .systemRed, onOffText: nil),
                         Cell(icon: "moon.fill", title: "Не беспокоить", color: .systemPurple, onOffText: nil),
                         Cell(icon: "hourglass", title: "Экранное время", color: .systemPurple, onOffText: nil)],
                        [Cell(icon: "gear", title: "Основные", color: .systemGray, onOffText: nil),
                         Cell(icon: "slider.horizontal.3", title: "Пункт управления", color: .systemGray, onOffText: nil),
                         Cell(icon: "character", title: "Экран и яркость", color: .systemBlue, onOffText: nil),
                         Cell(icon: "iphone.homebutton", title: "Экран домой", color: .blue, onOffText: nil),
                         Cell(icon: "figure.stand", title: "Универсальный доступ", color: .systemBlue, onOffText: nil),
                         Cell(icon: "camera.filters", title: "Обои", color: .systemCyan, onOffText: nil),
                         Cell(icon: "s.circle", title: "Siri", color: .darkGray, onOffText: nil),
                         Cell(icon: "faceid", title: "Face ID и пароль", color: .systemGreen, onOffText: nil),
                         Cell(icon: "cross.fill", title: "SOS", color: .systemRed, onOffText: nil),
                         Cell(icon: "sun.min.fill", title: "Уведомления о воздействии", color: .black, onOffText: nil),
                         Cell(icon: "battery.100", title: "Батарея", color: .systemGreen, onOffText: nil),
                         Cell(icon: "hand.raised.fill", title: "Приватность", color: .systemBlue, onOffText: nil)],
                        [Cell(icon: "applelogo", title: "App Store", color: .systemCyan, onOffText: nil),
                         Cell(icon: "wallet.pass", title: "Wallet & Apple Pay", color: .black, onOffText: nil)],
                        [Cell(icon: "key.fill", title: "Пароли", color: .systemGray, onOffText: nil),
                         Cell(icon: "envelope.fill", title: "Mail", color: .systemBlue, onOffText: nil),
                         Cell(icon: "person.circle", title: "Контакты", color: .systemGray, onOffText: nil),
                         Cell(icon: "calendar", title: "Календарь", color: .systemGray, onOffText: nil),
                         Cell(icon: "note.text", title: "Заметки", color: .systemYellow, onOffText: nil),
                         Cell(icon: "bubble.left.and.exclamationmark.bubble.right.fill", title: "Напоминания", color: .systemGray, onOffText: nil),
                         Cell(icon: "waveform", title: "Диктофон", color: .black, onOffText: nil),
                         Cell(icon: "phone.fill", title: "Телефон", color: .systemGreen, onOffText: nil),
                         Cell(icon: "message.fill", title: "Сообщения", color: .systemGreen, onOffText: nil),
                         Cell(icon: "video.fill", title: "Face Time", color: .systemGreen, onOffText: nil),
                         Cell(icon: "safari.fill", title: "Safari", color: .systemBlue, onOffText: nil),
                         Cell(icon: "cloud.sun.fill", title: "Погода", color: .systemBlue, onOffText: nil),
                         Cell(icon: "stocks", title: "Акции", color: .black, onOffText: nil),
                         Cell(icon: "character.book.closed.fill", title: "Переводчик", color: .systemGreen, onOffText: nil),
                         Cell(icon: "map.fill", title: "Карты", color: .blue, onOffText: nil),
                         Cell(icon: "safari", title: "Компасс", color: .systemGreen, onOffText: nil),
                         Cell(icon: "app.fill", title: "Команды", color: .black, onOffText: nil),
                         Cell(icon: "heart.text.square.fill", title: "Здоровье", color: .red, onOffText: nil)],
                        [Cell(icon: "photo.circle.fill", title: "Фото", color: .systemGreen, onOffText: nil),
                         Cell(icon: "camera.fill", title: "Камера", color: .systemGray, onOffText: nil),
                         Cell(icon: "book.fill", title: "Книги", color: .systemOrange, onOffText: nil),
                         Cell(icon: "antenna.radiowaves.left.and.right.circle.fill", title: "Подкасты", color: .systemPurple, onOffText: nil),
                         Cell(icon: "gamecontroller.fill", title: "Game Center", color: .systemPink, onOffText: nil)]]
        return cellData
    }
}
