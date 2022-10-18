$characters=@("Darth Vader","Daffy Duck", "Cruela DeVil", "Bill Gates", "Santa Claus")
$salutationFormula=@("has a message for you:", "asks:", "wishes to know:")
$trickOrTreatMessage="Trick or Treat!"
$spacingSoBotTakesABreak="                      "

$finalMessage = $($characters | Get-Random) + $($salutationFormula | Get-Random) + $spacingSoBotTakesABreak + $trickOrTreatMessage

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak($finalMessage)