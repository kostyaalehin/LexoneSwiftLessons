//var text: String? = "some text"
var text: String? = nil

// 1. Принудительно (forced) - не безопасно
//var unwrapped1: String = text!

// 2. Неявно (implicitly) - не безопасно
//var unwrapped2 = text!

// 3. Опциональное привязывание (optional bilding) - безопасно
if let unwrapped3 = text {
    print("Optional was successfully unwrapped and its value '\(unwrapped3)'")
} else {
    print("found nil while unwrapping")
}

// 4. Опциональная цепочка (chaining) - безопасно
let unwrapped4 = text?.uppercased()
print(unwrapped4 as Any)

// 5. Значение по умолчанию - безопасно
let unwrapped5 = text ?? "default value"
print(unwrapped5 as Any)

// 6. с помощью guard - безопасно
func guardTest() {
    guard let unwrapped6 = text else {
        return
    }
    print(unwrapped6 as Any)
}
guardTest()

// 7. Opional паттерн - безопасно
if case let unwrapped7? = text {
    print(unwrapped7)
}
