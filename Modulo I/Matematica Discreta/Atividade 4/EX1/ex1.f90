program logp1ex1 !nome do programa (programa fonte logica1.f90)
    !Nome: Claudio Ferreira da Silva dos Santos
!O COMANDO IMPLICIT NONE é necessário para tirar a configuração de variáveis inteiras !começando com i,j,k,l,m,n
    implicit none
!BLOCO DE DECLARAÇÃO DE VARIÁVEIS
    logical :: a,b, S !variáveis lógicas
!BLOCO DE INICIALIZAÇÃO DAS VARIÁVEIS
    a = .true. !a = verdadeiro
    b = .true. !b = verdadeiro
!CÁLCULOS PROPOSICIONAIS S = ~((a ^ b) ^ ~ (a v b))
    S = .not.((a.and.b).and..not.(a.or.b))
!SAÍDA DE DADOS PARA TELA DOS
    write(*,*)'valor logico das proposicoes simples'
    write(*,*) ' a = ', a, ' b = ',b
    write(*,*)'valor logico da proposicao composta'
    write(*,*) ' S = ~((a ^ b) ^ ~ (a v b)) = ', S
!SAÍDA DE DADOS PARA ARQUIVO
    open(10,file='ex1.dat',status='replace') !abertura de arquivo teste.dat
        write(10,*)!valor logico das proposicoes simples
        write(10,*) 'a = ', a,'b = ',b
        write(10,*)!valor logico da proposicao composta
        write(10,*) ' S = ~((a ^ b) ^ ~ (a v b)) = ',S
    close(10) !fechamento do arquivo de saída

    end program logp1ex1 !a instrução program logica1 não é necessária
