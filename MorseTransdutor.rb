class ADF
  def initialize(cadeia)
      @cadeia = cadeia
      @indice = 0
      @max = cadeia.size 
  end

  # pega apenas um caracter
  def proximo
    if @indice == @max
        ""
    else
        puts "Entre com o próximo símbolo: "
        @cadeia[@indice]
    end
  end
  
  
  def iniciar
    input = ""
    texto = ""
    estado = "q0"
    puts "Máquina iniciou no estado: " + estado
  
    loop do
      case [proximo, estado]
      #estados de q0
      in [".", "q0"] # .
        estado = "q1"
        input = "E"
      in ["-", "q0"] # -
        estado = "q2"
        input = "T"
      in ["/", "q0"]
        estado = "q0"
        texto += " "
      in [" ", "q0"]
        estado = "q0"
      
      #estados de q1
      in [".", "q1"] # ..
        estado = "q3"
        input = "I"
      in ["-", "q1"] # .-
        estado = "q4"
        input = "A"
      in [" ", "q1"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q1"] # fim do texto
        break
      
      #estados de q2
      in [".", "q2"] # -.
        estado = "q5"
        input = "N"
      in ["-", "q2"] # --
        estado = "q6"
        input = "M"
      in [" ", "q2"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q2"] # fim do texto
        break
        
        #estados de q3 
      in [".", "q3"] # ...
        estado = "q7"
        input = "S"
      in ["-", "q3"] # ..-
        estado = "q8"
        input = "U"
      in [" ", "q3"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q3"] # fim do texto
        break
        
        #estados de q4
      in [".", "q4"] # .-.
        estado = "q9"
        input = "R"
      in ["-", "q4"] # .--
        estado = "q10"
        input = "W"
      in [" ", "q4"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q4"] # fim do texto
        break
        
        #estados de q5
      in [".", "q5"] # -..
        estado = "q11"
        input = "D"
      in ["-", "q5"] # -.-
        estado = "q12"
        input = "K"
      in [" ", "q5"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q5"] # fim do texto
        break
        
        #estados de q6
      in [".", "q6"] # --.
        estado = "q13"
        input = "G"
      in ["-", "q6"] # ---
        estado = "q14"
        input = "O"
      in [" ", "q6"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q6"] # fim do texto
        break
        
        #estados de q7
      in [".", "q7"] # ....
        estado = "q15"
        input = "H"
      in ["-", "q7"] # ...-
        estado = "q16"
        input = "V"
      in [" ", "q7"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q7"] # fim do texto
        break
        
        #estados de q8
      in [".", "q8"] # ..-.
        estado = "q17"
        input = "F"
      in ["-", "q8"] # ..--
        estado = "q18"
        input = "Ŭ"
      in [" ", "q8"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q8"] # fim do texto
        break
        
        #estados de q9
      in [".", "q9"] # .-..
        estado = "q19"
        input = "L"
      in ["-", "q9"] # .-.-
        estado = "q20"
        input = "Æ"
      in [" ", "q9"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q9"] # fim do texto
        break
        
        #estados de q10
      in [".", "q10"] # .--.
        estado = "q21"
        input = "P"
      in ["-", "q10"] # .---
        estado = "q22"
        input = "J"
      in [" ", "q10"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q10"] # fim do texto
        break 
        
        #estados de q11
      in [".", "q11"] # -... 
        estado = "q23" 
        input = "B"
      in ["-", "q11"] # -..-
        estado = "q24"
        input = "X"
      in [" ", "q11"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q11"] # fim do texto
        break
        
        #estados de q12
      in [".", "q12"] # -.-.
        estado = "q25"
        input = "C"
      in ["-", "q12"] # -.--
        estado = "q26"
        input = "Y"
      in [" ", "q12"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q12"] # fim do texto
        break
        
        #estados de q13
      in [".", "q13"] # --..
        estado = "q27"
        input = "Z"
      in ["-", "q13"] # --.-
        estado = "q28"
        input = "Q"
      in [" ", "q13"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q13"] # fim do texto
        break
        
        #estados de q14
      in [".", "q14"] # ---.
        estado = "q29"
        input = "Ø"
      in ["-", "q14"] # ----
        estado = "q30"
        input = "Š"
      in [" ", "q14"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q14"] # fim do texto
        break
        
        #estados de q15
      in [".", "q15"] # ..... 
        estado = "q31"
        input = "5"
      in ["-", "q15"] # ....-
        estado = "q31"
        input = "4"
      in [" ", "q15"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q15"] # fim do texto
        break
        
        #estados de q16
      in [".", "q16"] # ...-.
        estado = "q31"
        input = "Ŝ"
      in ["-", "q16"] # ...--
        estado = "q31"
        input = "3"
      in [" ", "q16"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q16"] # fim do texto
        break
        
        #estados de q17
      in [".", "q17"] # ..-..
        estado = "q31"
        input = "Ę"
      in ["-", "q17"] # ..-.-
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q17"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q17"] # fim do texto
        break
        
        #estados de q18
      in [".", "q18"] # ..--.
        estado = "q32"
        input = "Ð"
      in ["-", "q18"] # ..---
        estado = "q31"
        input = "2"
      in [" ", "q18"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q18"] # fim do texto
        break
        
        #estados de q19
      in [".", "q19"] # .-...
        estado = "q31"
        input = "&"
      in ["-", "q19"] # .-..-
        estado = "q33"
        input = "Ł"
      in [" ", "q19"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q19"] # fim do texto
        break
        
        #estados de q20
      in [".", "q20"] # .-.-.
        estado = "q34"
        input = "+"
      in ["-", "q20"] # .-.--
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q20"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q20"] # fim do texto
        break
        
        #estados de q21
      in [".", "q21"] # .--..
        estado = "q31"
        input = "Þ"
      in ["-", "q21"] # .--.-
        estado = "q35"
        input = "Å"
      in [" ", "q21"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q21"] # fim do texto
        break
        
        #estados de q22
      in [".", "q22"] # .---.
        estado = "q31"
        input = "Ĵ"
      in ["-", "q22"] # .----
        estado = "q36"
        input = "1"
      in [" ", "q22"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q22"] # fim do texto
        break
        
        
        #estados de q23
      in [".", "q23"] # -....
        estado = "q37"
        input = "6"
      in ["-", "q23"] # -...-
        estado = "q31"
        input = "="
      in [" ", "q23"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q23"] # fim do texto
        break  
        
        #estados de q24
      in [".", "q24"] # -..-.
        estado = "q31"
        input = "/"
      in ["-", "q24"] # -..--
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q24"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q24"] # fim do texto
        break
        
        #estados de q25
      in [".", "q25"] # -.-..
        estado = "q31"
        input = "Ç"
      in ["-", "q25"] # -.-.-
        estado = "q38"
        input = "(Inválido)"
      in [" ", "q25"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q25"] # fim do texto
        break
        
        #estados de q26
      in [".", "q26"] # -.--.
        estado = "q39"
        input = "("
      in ["-", "q26"] # -.---
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q26"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q26"] # fim do texto
        break
        
        #estados de q27
      in [".", "q27"] # --...
        estado = "q31"
        input = "7"
      in ["-", "q27"] # --..-
        estado = "q40"
        input = "Ż"
      in [" ", "q27"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q27"] # fim do texto
        break
        
        #estados de q28
      in [".", "q28"] # --.-.
        estado = "q31"
        input = "Ĝ"
      in ["-", "q28"] # --.--
        estado = "q31"
        input = "Ñ"
      in [" ", "q28"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q28"] # fim do texto
        break
        
        #estados de q29
      in [".", "q29"] # ---..
        estado = "q41"
        input = "8"
      in ["-", "q29"] # ---.-
        estado = "q31"
      in [" ", "q29"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q29"] # fim do texto
        breaka
        
        #estados de q30
      in [".", "q30"] # ----.
        estado = "q31"
        input = "9"
      in ["-", "q30"] # -----
        estado = "q31"
        input = "0"
      in [" ", "q30"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q30"] # fim do texto
        break
        
        # A partir daqui chegamos ao fim, com algumas exceções de estados que são simbolos
        
        #estados de q31
      in [".", "q31"] # ......
        texto = "Erro! "
        input = "(Código Invalido) "
      break
      in ["-", "q31"] # .....-
       texto = "Erro! "
       input = "(Código Invalido) "
      break
      in [" ", "q31"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q31"] # fim do texto
        break
        
        #estados de q32
      in [".", "q32"] # 
        estado = "q31"
        input = "?"
      in ["-", "q32"] # 
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q32"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q32"] # fim do texto
        break
        
        #estados de q33
      in [".", "q33"] # 
        estado = "q31"
        input = '"'
      in ["-", "q33"] # 
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q33"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q33"] # fim do texto
        break
        
        #estados de q34
      in [".", "q34"] # 
        estado = "q31"
        input = "(Inválido)"
      in ["-", "q34"] # 
        estado = "q31"
        input = "."
      in [" ", "q34"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q34"] # fim do texto
        break
        
        #estados de q35
      in [".", "q35"] # 
        estado = "q31"
        input = '@'
      in ["-", "q35"] # 
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q35"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q35"] # fim do texto
        break
        
        #estados de q36
      in [".", "q36"] # 
        estado = "q31"
        input = "'"
      in ["-", "q36"] # 
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q36"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q36"] # fim do texto
        break
        
        #estados de q37
      in [".", "q37"] # 
        estado = "q31"
        input = "(Inválido)"
      in ["-", "q37"] # 
        estado = "q31"
        input = "-"
      in [" ", "q37"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q37"] # fim do texto
        break
        
        #estados de q38
      in [".", "q38"] # 
        estado = "q31"
        input = ";"
      in ["-", "q38"] # 
        estado = "q31"
        input = "!"
      in [" ", "q38"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q38"] # fim do texto
        break
        
        #estados de q39
      in [".", "q39"] # 
        estado = "q31"
        input = "(Inválido)"
      in ["-", "q39"] # 
        estado = "q31"
        input = ")"
      in [" ", "q39"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q39"] # fim do texto
        break
        
        #estados de q40
      in [".", "q40"] # 
        estado = "q31"
        input = "Ź"
      in ["-", "q40"] # 
        estado = "q31"
        input = ","
      in [" ", "q40"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q40"] # fim do texto
        break
        
        #estados de q41
      in [".", "q41"] # 
        estado = "q31"
        input = ":"
      in ["-", "q41"] # 
        estado = "q31"
        input = "(Inválido)"
      in [" ", "q41"] # próxima letra
        estado = "q0"
        texto += input + ""
      in ["", "q41"] # fim do texto
        break
        
  
    else
        puts "Algo de errado não está certo"
        break
        puts "Erro"
    end
  
      @indice += 1
      puts "Estado: " + estado
    end
    
      saida = texto+input
      puts
      puts "Você inseriu: "
      puts @cadeia
      puts
      puts "Tradução: " + saida
    
  end
end


morse = "-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. ---"
#Digite seu código entre "aspas" acima

adf = ADF.new(morse)
adf.iniciar