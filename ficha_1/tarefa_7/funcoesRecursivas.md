Chegamos ao "Chefe Final" da Ficha 1! 👾 A **Recursividade** (Secção 4, Página 11) é, sem dúvida, o conceito mais importante e poderoso da Programação Funcional.

Como em Haskell não existem ciclos `for` ou `while` (loops), a única forma de repetir uma ação é através da **recursividade**.

### O que é uma Função Recursiva?

O ficheiro define de forma simples: "Diz-se que a função se invoca a si própria".
Ou seja, na definição da função, usamos o nome da própria função.

Para que a recursividade funcione e não fique a rodar para sempre (loop infinito), precisamos de **Duas Regras de Ouro**:

1. **O Caso de Paragem (Base Case):** Uma condição simples onde sabemos a resposta imediata e **não** chamamos a função novamente. É onde o ciclo "bate no fundo" e para.


2. **O Passo Recursivo:** A parte onde a função se chama a si mesma, mas com um argumento "mais pequeno" ou mais próximo do fim.

### O Exemplo do Fatorial (`fact`)

A ficha usa o clássico exemplo matemático do fatorial () para explicar isto .

**Traduzindo para Haskell (como está no ficheiro):**

```haskell
fact :: Int -> Int
fact n = if (n == 0) then 1            -- Regra 1: Caso de Paragem
         else n * fact (n-1)           -- Regra 2: Passo Recursivo

```

**Como o computador pensa ("O Mergulho"):**
Se calculares `fact 3`:

1. É 0? Não. Então faz: `3 * fact 2`
2.  (`fact 2`) É 0? Não. Faz: `2 * fact 1`
3.  (`fact 1`) É 0? Não. Faz: `1 * fact 0`
4.  (`fact 0`) É 0? **SIM!** Devolve `1`.
2. Agora sobe à tona: `1 * 1` = 1.
3. Sobe mais: `2 * 1` = 2.
4. Sobe ao topo: `3 * 2` = **6**.

---

### Tarefa 7: Vamos Praticar? ✍️

Vamos resolver a **Tarefa 7** (Página 11), exercício a exercício. O segredo é sempre perguntar: *"Qual é o meu caso de paragem?"*.

#### Exercício 7.1: Exponenciação ()

> "Defina uma função que calcule o resultado da exponenciação inteira  sem recorrer a funções pré-definidas." 
> 
> 

**Raciocínio:**

* Matemática: .
* Recursivamente: .
* **Caso de Paragem:** Todo o número elevado a 0 é quanto? ().

**O teu Desafio:**
Tenta escrever a função `potencia :: Int -> Int -> Int`.
Usa a estrutura do `fact` como "cábula".

1. Se `y` for 0, devolve 1.
2. Senão, devolve `x` vezes a `potencia` de `x` com `y-1`.

Consegues escrever o código?