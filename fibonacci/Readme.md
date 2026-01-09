# Fibonacci - Estudo de Caso

Este diretório contém diferentes implementações e análises da **Sequência de Fibonacci** em Haskell, servindo como estudo de caso para compreender programação funcional avançada.

## 📂 Arquivos

### `Fib.hs`
Implementação principal da sequência Fibonacci com múltiplas abordagens.

### `fibonacci.hs`
Implementacao em C adaptada para Haskell.

### `Readme.md`
Documentação específica sobre as implementações.

## 🔍 Conceitos Explorados

### 1. **Lazy Evaluation (Avaliação Preguiçosa)**
- Listas infinitas em Haskell
- Geração sob demanda
- Eficiência de memória

### 2. **Referência Circular (Auto-Referência)**
```haskell
lista = 0:1:zipWith (+) lista (tail lista)
```
A lista depende de si mesma para ser construída.

### 3. **Funções de Ordem Superior**
- `zipWith` - Aplicar função a pares de elementos
- `take` - Consumir elementos de lista infinita
- `tail` - Manipulação de listas

### 4. **Diferentes Abordagens**
- ✅ Recursão com lazy evaluation
- ✅ Recursão tradicional com acumulador
- ✅ Geração de sequência

## 💡 Exemplo de Uso

```haskell
seqFib 10  -- Retorna [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```

## 📊 Comparação de Implementações

| Abordagem | Vantagens | Desvantagens |
|-----------|-----------|--------------|
| Lazy Evaluation | Elegante, eficiente | Difícil de entender |
| Recursão Tradicional | Fácil de entender | Mais código |
| Acumulador | Iterativo, rápido | Menos funcional |

## 🎓 Lições Aprendidas

1. Lazy evaluation permite trabalhar com estruturas infinitas
2. Referências circulares são válidas e úteis em Haskell

3. A elegância do código funcional vem da abstração
