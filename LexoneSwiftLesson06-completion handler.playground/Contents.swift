import Darwin

let myCompletionHandler: (Bool) -> Void = { doneWorking in
    if doneWorking {
        print("Work is done.")
    }
}

func myFunc(using completionHndler: (Bool) -> Void) {
    sleep(2)
    print("Stage 1 passed...")
    sleep(2)
    print("Stage 2 passed...")
    sleep(2)
    print("Stage 3 passed...")
    sleep(1)
    completionHndler(true)
}

myFunc(using: myCompletionHandler)
