!OBJETIVO: construção de tabela verdade para duas variáveis

!DATA: 31/08/2023

!INTEGRANTES:
!Claudio Ferreira 

!nome do programa fonte

    program logp2e4

!desabilita configuração de variáveis inteiras começando com i,j,k,l,m,n

    implicit none

!bloco de declaração de variáveis

    logical :: a, b, c, s

    integer :: i

!bloco de saída do cabeçalho da tabela verdade na tela DOS

    write (*,*)'---------------------------------'
    
    write (*,*)'|         𝑆=~(𝑎∧𝑏)∨𝑐        |'

    write (*,*)'---------------------------------'

    write (*,*)'|  a    |  b    |   c   |  S    |'

    write (*,*)'---------------------------------'

!abertura de arquivo

    open (10,file='e4.dat',status='replace')

!bloco de saída do cabeçalho da tabela verdade para o arquivo

    write (10,*)'---------------------------------'

    write (10,*)'|         𝑆=~(𝑎∧𝑏)∨𝑐        |'

    write (10,*)'---------------------------------'

    write (10,*)'|  a    |  b    |   c   |  S    |'

    write (10,*)'---------------------------------'

!início do laço de repetição para tabela verdade com 3 variáveis lógica e 8 linhas de cálculos

    do i=1,8

!bloco de decisão para inicialização das variáveis para a primeira linha

        if (i==1) then

        a=.true.

        b=.true.
    
        c=.true.
    
        endif

!bloco de decisão para inicialização das variáveis para a segunda linha

        if (i==2) then

        a=.true.

        b=.true.
  
        c=.false.

        endif

!bloco de decisão para inicialização das variáveis para a terceira linha

        if (i==3) then

        a=.true.

        b=.false.
   
        c=.true.

        endif

!bloco de decisão para inicialização das variáveis para a quarta linha

        if (i==4) then

        a=.true.

        b=.false.
    
        c=.false.
        
        endif
        
!bloco de decisão para inicialização das variáveis para a quinta linha

        if (i==5) then

        a=.false.

        b=.true.
    
        c=.true.
        
        endif

!bloco de decisão para inicialização das variáveis para a sexta linha

        if (i==6) then

        a=.false.

        b=.true.
    
        c=.false.
        
        endif
        
!bloco de decisão para inicialização das variáveis para a setima linha

        if (i==7) then

        a=.false.

        b=.false.
    
        c=.true.
        
        endif
        
!bloco de decisão para inicialização das variáveis para a oitava linha

        if (i==8) then

        a=.false.

        b=.false.
    
        c=.false.
        
        endif

!cálculo proposicional

!𝑆=~(𝑎∧𝑏)∨𝑐      

    S=.not.(a.and.b).or.c

!bloco de saída de dados para tela DOS

    write (*,*)'| ',a,'   | ',b,'   |  ',c,'  | ',s,'   |'

    write (*,*)'---------------------------------'

!bloco de saída de dados para arquivo

    write (10,*)'| ',a,'   | ',b,'   |  ',c,'  | ',s,'   |'

    write (10,*)'---------------------------------'

    enddo !fim do bloco de repetição

!fechamento de arquivo

    close(10)

!finalização do programa

    end program logp2e4