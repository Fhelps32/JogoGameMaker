//----------BASE NA CONSTRUÇÃO DA STATE MACHINE----------
//Utilizamos um scrit onde sera a base da construção da state machine de qualquer outro objeto no jogo


function estado() constructor{   //criamos 3 etapas de estado para os objeto
	static inicia = function() {}; 
	static roda = function() {};
	static finaliza = function() {};
}


//função aonde irá inicializar o estado selecionado (tera o intuiuito de prepara o objeto para quando rodar o estado)
function inicia_estado(_estado){ 
	estado_atual = _estado;
	estado_atual.inicia();
}

function roda_estado(){ //função na qual rodará o estado 
	estado_atual.roda();	
}

function troca_estado(_estado){ //função na qual finalizará quaisquer ações do ojeto para trocar para o proximo estado
	estado_atual.finaliza();
	estado_atual = _estado;
	estado_atual.inicia();
}