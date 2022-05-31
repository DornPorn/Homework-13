//
//  CellAPI.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/30/22.
//

class CellAPI {
    static func getCellsData() -> [[CellModel]] {
        let cellData = [[CellModel(icon: "airplane", title: "Авиарежим", color: .systemOrange, onOffText: nil),
                         CellModel(icon: "wifi", title: "Wi-Fi", color: .systemBlue, onOffText: "Не подключено"),
                         CellModel(icon: "bluetooth", title: "Bluetooth", color: .systemBlue, onOffText: "Вкл."),
                         CellModel(icon: "antenna.radiowaves.left.and.right", title: "Сотовая связь", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "personalhotspot", title: "Режим модема", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "network", title: "VPN", color: .systemBlue, onOffText: nil)],
                        [CellModel(icon: "bell.fill", title: "Уведолмления", color: .systemRed, onOffText: nil),
                         CellModel(icon: "speaker.wave.3.fill", title: "Звуки, тактильные сигналы", color: .systemRed, onOffText: nil),
                         CellModel(icon: "moon.fill", title: "Не беспокоить", color: .systemPurple, onOffText: nil),
                         CellModel(icon: "hourglass", title: "Экранное время", color: .systemPurple, onOffText: nil)],
                        [CellModel(icon: "gear", title: "Основные", color: .systemGray, onOffText: nil),
                         CellModel(icon: "slider.horizontal.3", title: "Пункт управления", color: .systemGray, onOffText: nil),
                         CellModel(icon: "character", title: "Экран и яркость", color: .systemBlue, onOffText: nil),
                         CellModel(icon: "iphone.homebutton", title: "Экран домой", color: .blue, onOffText: nil),
                         CellModel(icon: "figure.stand", title: "Универсальный доступ", color: .systemBlue, onOffText: nil),
                         CellModel(icon: "camera.filters", title: "Обои", color: .systemCyan, onOffText: nil),
                         CellModel(icon: "s.circle", title: "Siri", color: .darkGray, onOffText: nil),
                         CellModel(icon: "faceid", title: "Face ID и пароль", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "cross.fill", title: "SOS", color: .systemRed, onOffText: nil),
                         CellModel(icon: "sun.min.fill", title: "Уведомления о воздействии", color: .black, onOffText: nil),
                         CellModel(icon: "battery.100", title: "Батарея", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "hand.raised.fill", title: "Приватность", color: .systemBlue, onOffText: nil)],
                        [CellModel(icon: "applelogo", title: "App Store", color: .systemCyan, onOffText: nil),
                         CellModel(icon: "wallet.pass", title: "Wallet & Apple Pay", color: .black, onOffText: nil)],
                        [CellModel(icon: "key.fill", title: "Пароли", color: .systemGray, onOffText: nil),
                         CellModel(icon: "envelope.fill", title: "Mail", color: .systemBlue, onOffText: nil),
                         CellModel(icon: "person.circle", title: "Контакты", color: .systemGray, onOffText: nil),
                         CellModel(icon: "calendar", title: "Календарь", color: .systemGray, onOffText: nil),
                         CellModel(icon: "note.text", title: "Заметки", color: .systemYellow, onOffText: nil),
                         CellModel(icon: "bubble.left.and.exclamationmark.bubble.right.fill", title: "Напоминания", color: .systemGray, onOffText: nil),
                         CellModel(icon: "waveform", title: "Диктофон", color: .black, onOffText: nil),
                         CellModel(icon: "phone.fill", title: "Телефон", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "message.fill", title: "Сообщения", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "video.fill", title: "Face Time", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "safari.fill", title: "Safari", color: .systemBlue, onOffText: nil),
                         CellModel(icon: "cloud.sun.fill", title: "Погода", color: .systemBlue, onOffText: nil),
                         CellModel(icon: "stocks", title: "Акции", color: .black, onOffText: nil),
                         CellModel(icon: "character.book.closed.fill", title: "Переводчик", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "map.fill", title: "Карты", color: .blue, onOffText: nil),
                         CellModel(icon: "safari", title: "Компасс", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "app.fill", title: "Команды", color: .black, onOffText: nil),
                         CellModel(icon: "heart.text.square.fill", title: "Здоровье", color: .red, onOffText: nil)],
                        [CellModel(icon: "photo.circle.fill", title: "Фото", color: .systemGreen, onOffText: nil),
                         CellModel(icon: "camera.fill", title: "Камера", color: .systemGray, onOffText: nil),
                         CellModel(icon: "book.fill", title: "Книги", color: .systemOrange, onOffText: nil),
                         CellModel(icon: "antenna.radiowaves.left.and.right.circle.fill", title: "Подкасты", color: .systemPurple, onOffText: nil),
                         CellModel(icon: "gamecontroller.fill", title: "Game Center", color: .systemPink, onOffText: nil)]]
        return cellData
    }
}
