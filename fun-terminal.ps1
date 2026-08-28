# ============================================================
# FUN TERMINAL PRANKS 🎉
# 25 harmless PowerShell terminal jokes
# ============================================================

function Pause-Menu {
    Write-Host ""
    Read-Host "Press Enter to continue"
}

function Fake-Hacker {
    Clear-Host
    1..30 | ForEach-Object {
        Write-Host "ACCESSING SECRET_DATABASE... $_%" -ForegroundColor Green
        Start-Sleep -Milliseconds 100
    }
    Write-Host "`n😂 ACCESS DENIED: Too much potato." -ForegroundColor Yellow
}

function Fake-VirusScan {
    Clear-Host
    1..20 | ForEach-Object {
        $p = $_ * 5
        Write-Progress -Activity "Scanning for viruses..." `
            -Status "$p% complete" -PercentComplete $p
        Start-Sleep -Milliseconds 200
    }
    Write-Progress -Activity "Scanning for viruses..." -Completed
    Write-Host "😂 1 potato virus detected!" -ForegroundColor Yellow
}

function Fake-SelfDestruct {
    Clear-Host
    10..1 | ForEach-Object {
        Clear-Host
        Write-Host "💀 SYSTEM SELF-DESTRUCT IN $_..." -ForegroundColor Red
        Start-Sleep 1
    }
    Clear-Host
    Write-Host "😂 GOTCHA! Nothing happened." -ForegroundColor Green
}

function Creepy-Message {
    Clear-Host
    Write-Host "👀 I CAN SEE YOU..." -ForegroundColor Red
    Start-Sleep 2
    Write-Host "..."
    Start-Sleep 1
    Write-Host "😂 Just kidding!" -ForegroundColor Cyan
}

function Fake-PasswordCracker {
    Clear-Host
    1..25 | ForEach-Object {
        Write-Host "Trying password: $(Get-Random)" -ForegroundColor Yellow
        Start-Sleep -Milliseconds 150
    }
    Write-Host "`n🔓 PASSWORD FOUND: LOL123" -ForegroundColor Green
    Write-Host "😂 Totally fake!" -ForegroundColor Cyan
}

function Fake-Download {
    Clear-Host
    1..100 | ForEach-Object {
        Write-Progress -Activity "Downloading SECRET_FILES.zip" `
            -Status "$_% complete" -PercentComplete $_
        Start-Sleep -Milliseconds 25
    }
    Write-Progress -Activity "Downloading SECRET_FILES.zip" -Completed
    Write-Host "`n😂 Download complete: 0 bytes." -ForegroundColor Red
}

function Random-Insult {
    $messages = @(
        "😂 Your PC is faster than you.",
        "🤓 Nice keyboard, nerd.",
        "404: Brain not found.",
        "🥔 The potato has more RAM.",
        "💻 Your computer deserves a better owner.",
        "😂 Windows is judging you.",
        "🚨 Critical error: Too much confidence.",
        "🐌 Even a snail would type faster."
    )
    Write-Host ($messages | Get-Random) -ForegroundColor Cyan
}

function Show-Cat {
    Write-Host @"
 /\_/\
( o.o )
 > ^ <
"@ -ForegroundColor Magenta
}

function Matrix-Rain {
    Write-Host "Press Ctrl+C to stop the Matrix." -ForegroundColor Green
    Start-Sleep 1

    while ($true) {
        Write-Host (Get-Random -Minimum 1000000000 -Maximum 9999999999) `
            -ForegroundColor Green
    }
}

function Fake-Alarm {
    for ($i = 0; $i -lt 10; $i++) {
        [Console]::Beep(800, 150)
        Write-Host "🚨 INTRUDER ALERT 🚨" -ForegroundColor Red
    }
    Write-Host "😂 False alarm!" -ForegroundColor Green
}

function Magic-8Ball {
    $answers = @(
        "🎱 Definitely!",
        "🎱 Absolutely not!",
        "🎱 Ask again later.",
        "🎱 Probably...",
        "🎱 The computer says YES!",
        "🎱 The computer says NO!",
        "🎱 My sources say: LOL."
    )

    $question = Read-Host "Ask the Magic 8-Ball a question"
    Write-Host ""
    Write-Host "Thinking..." -ForegroundColor Yellow
    Start-Sleep 2
    Write-Host ($answers | Get-Random) -ForegroundColor Cyan
}

function Dice-Roller {
    $result = Get-Random -Minimum 1 -Maximum 7
    Write-Host "🎲 Rolling..." -ForegroundColor Yellow
    Start-Sleep 1
    Write-Host "You rolled: $result" -ForegroundColor Green
}

function Coin-Flip {
    Write-Host "🪙 Flipping coin..." -ForegroundColor Yellow
    Start-Sleep 1

    if ((Get-Random -Minimum 0 -Maximum 2) -eq 0) {
        Write-Host "HEADS! 🪙" -ForegroundColor Green
    }
    else {
        Write-Host "TAILS! 🪙" -ForegroundColor Cyan
    }
}

function Rock-Paper-Scissors {
    $choices = @("Rock 🪨", "Paper 📄", "Scissors ✂️")

    $player = Read-Host "Choose Rock, Paper, or Scissors"
    $computer = $choices | Get-Random

    Write-Host ""
    Write-Host "Computer chose: $computer"

    $p = $player.ToLower()

    if ($p -notin @("rock", "paper", "scissors")) {
        Write-Host "❌ Invalid choice." -ForegroundColor Red
        return
    }

    $c = $computer.Split(" ")[0].ToLower()

    if ($p -eq $c) {
        Write-Host "🤝 DRAW!" -ForegroundColor Yellow
    }
    elseif (
        ($p -eq "rock" -and $c -eq "scissors") -or
        ($p -eq "paper" -and $c -eq "rock") -or
        ($p -eq "scissors" -and $c -eq "paper")
    ) {
        Write-Host "🎉 YOU WIN!" -ForegroundColor Green
    }
    else {
        Write-Host "😂 COMPUTER WINS!" -ForegroundColor Red
    }
}

function Guess-Number {
    $number = Get-Random -Minimum 1 -Maximum 101
    $attempts = 0

    Write-Host "🎯 Guess the number between 1 and 100!"

    while ($true) {
        $guess = Read-Host "Your guess"

        if (-not [int]::TryParse($guess, [ref]$n)) {
            Write-Host "Enter a number!" -ForegroundColor Red
            continue
        }

        $attempts++

        if ($n -eq $number) {
            Write-Host "🎉 YOU WON in $attempts attempts!" -ForegroundColor Green
            break
        }
        elseif ($n -lt $number) {
            Write-Host "⬆️ Too low!"
        }
        else {
            Write-Host "⬇️ Too high!"
        }
    }
}

function Fake-WindowsUpdate {
    Clear-Host

    1..100 | ForEach-Object {
        Write-Progress -Activity "Installing Totally Real Windows Update" `
            -Status "$_% complete" -PercentComplete $_
        Start-Sleep -Milliseconds 35
    }

    Write-Progress -Activity "Installing Totally Real Windows Update" -Completed

    Write-Host ""
    Write-Host "😂 Update failed successfully." -ForegroundColor Yellow
}

function Compliment-Machine {
    $compliments = @(
        "🔥 You're absolutely legendary!",
        "😎 Your coding skills are suspiciously good.",
        "🧠 Big brain detected!",
        "🚀 You're operating at maximum power!",
        "👑 Certified terminal wizard!",
        "⭐ 10/10 human detected."
    )

    Write-Host ($compliments | Get-Random) -ForegroundColor Magenta
}

function Random-Color {
    $colors = @(
        "Red",
        "Green",
        "Blue",
        "Yellow",
        "Cyan",
        "Magenta"
    )

    $color = $colors | Get-Random
    Clear-Host
    Write-Host "🌈 RANDOM COLOR: $color" -ForegroundColor $color
}

function Spam-Emojis {
    $emojis = @("😂","🤣","🔥","💀","🐸","🥔","🚀","👀","😎","🤖")

    1..30 | ForEach-Object {
        Write-Host ($emojis | Get-Random) -NoNewline
        Start-Sleep -Milliseconds 80
    }

    Write-Host ""
}

function Fake-SystemError {
    Clear-Host

    Write-Host "================================" -ForegroundColor Red
    Write-Host "       SYSTEM ERROR 💀" -ForegroundColor Red
    Write-Host "================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Error Code: 0xLOL123"
    Write-Host "Reason: User is too awesome."
    Write-Host ""
    Start-Sleep 2
    Write-Host "😂 SYSTEM RECOVERED." -ForegroundColor Green
}

function Fortune-Cookie {
    $fortunes = @(
        "🥠 You will find something you lost... probably your charger.",
        "🥠 Great things are coming. Hide your snacks.",
        "🥠 Your next bug will be caused by a missing semicolon.",
        "🥠 Today is your lucky day!",
        "🥠 Someone will compliment your terminal skills.",
        "🥠 Beware of low battery."
    )

    Write-Host ($fortunes | Get-Random) -ForegroundColor Yellow
}

function Countdown {
    param(
        [int]$Seconds = 5
    )

    $Seconds..1 | ForEach-Object {
        Write-Host "⏳ $_..."
        Start-Sleep 1
    }

    Write-Host "🎉 BOOM! Just kidding 😂" -ForegroundColor Green
}

function Show-Banner {
    Clear-Host

    Write-Host ""
    Write-Host "███████╗██╗   ██╗███╗   ██╗" -ForegroundColor Cyan
    Write-Host "██╔════╝██║   ██║████╗  ██║" -ForegroundColor Cyan
    Write-Host "█████╗  ██║   ██║██╔██╗ ██║" -ForegroundColor Cyan
    Write-Host "██╔══╝  ██║   ██║██║╚██╗██║" -ForegroundColor Cyan
    Write-Host "██║     ╚██████╔╝██║ ╚████║" -ForegroundColor Cyan
    Write-Host "╚═╝      ╚═════╝ ╚═╝  ╚═══╝" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "       TERMINAL PRANKS 🎉" -ForegroundColor Yellow
    Write-Host ""
}

function Show-Menu {
    while ($true) {
        Show-Banner

        Write-Host " 1. 🟢 Fake Hacker"
        Write-Host " 2. 🦠 Fake Virus Scan"
        Write-Host " 3. 💀 Fake Self Destruct"
        Write-Host " 4. 👀 Creepy Message"
        Write-Host " 5. 🔓 Fake Password Cracker"
        Write-Host " 6. 📦 Fake Download"
        Write-Host " 7. 😂 Random Insult"
        Write-Host " 8. 🐱 Cat"
        Write-Host " 9. 🟢 Matrix Rain"
        Write-Host "10. 🚨 Fake Alarm"
        Write-Host "11. 🎱 Magic 8-Ball"
        Write-Host "12. 🎲 Dice"
        Write-Host "13. 🪙 Coin Flip"
        Write-Host "14. ✂️ Rock Paper Scissors"
        Write-Host "15. 🎯 Guess the Number"
        Write-Host "16. 💻 Fake Windows Update"
        Write-Host "17. 👑 Compliment Machine"
        Write-Host "18. 🌈 Random Color"
        Write-Host "19. 😂 Emoji Spam"
        Write-Host "20. 💀 Fake System Error"
        Write-Host "21. 🥠 Fortune Cookie"
        Write-Host "22. ⏳ Countdown"
        Write-Host "23. 🔥 Random Insult Again"
        Write-Host "24. 🐱 Cat Again"
        Write-Host "25. 🎉 Surprise"
        Write-Host " 0. Exit"
        Write-Host ""

        $choice = Read-Host "Choose an option"

        switch ($choice) {
            "1"  { Fake-Hacker; Pause-Menu }
            "2"  { Fake-VirusScan; Pause-Menu }
            "3"  { Fake-SelfDestruct; Pause-Menu }
            "4"  { Creepy-Message; Pause-Menu }
            "5"  { Fake-PasswordCracker; Pause-Menu }
            "6"  { Fake-Download; Pause-Menu }
            "7"  { Random-Insult; Pause-Menu }
            "8"  { Show-Cat; Pause-Menu }
            "9"  { Matrix-Rain }
            "10" { Fake-Alarm; Pause-Menu }
            "11" { Magic-8Ball; Pause-Menu }
            "12" { Dice-Roller; Pause-Menu }
            "13" { Coin-Flip; Pause-Menu }
            "14" { Rock-Paper-Scissors; Pause-Menu }
            "15" { Guess-Number; Pause-Menu }
            "16" { Fake-WindowsUpdate; Pause-Menu }
            "17" { Compliment-Machine; Pause-Menu }
            "18" { Random-Color; Pause-Menu }
            "19" { Spam-Emojis; Pause-Menu }
            "20" { Fake-SystemError; Pause-Menu }
            "21" { Fortune-Cookie; Pause-Menu }
            "22" { Countdown; Pause-Menu }
            "23" { Random-Insult; Pause-Menu }
            "24" { Show-Cat; Pause-Menu }
            "25" {
                $surprise = Get-Random -Minimum 1 -Maximum 6

                switch ($surprise) {
                    1 { Fake-Hacker }
                    2 { Show-Cat }
                    3 { Fake-SystemError }
                    4 { Fortune-Cookie }
                    5 { Compliment-Machine }
                }

                Pause-Menu
            }
            "0" {
                Write-Host "👋 Bye! Have fun!" -ForegroundColor Cyan
                return
            }
            default {
                Write-Host "❌ Invalid option!" -ForegroundColor Red
                Start-Sleep 1
            }
        }
    }
}

Show-Menu
