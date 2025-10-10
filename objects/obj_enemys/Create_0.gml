//-----TRECHO DO CÓDIGO QUE SERÁ HERDADO DE TODOS OS INIMIGOS-----

poise = poise_max;
dead = false;
range = 7

lidando_dano = function(_dano = 2, _poise = 1){
	poise = max(poise - _poise, 0);
	
	if (poise < 5 or estado_atual != estado_attack){
		troca_estado(estado_hurt);
		vida = vida - _dano;
	}
	
}

//todos os estados q cada inimigo terá:
estado_idle = new estado();
estado_walk = new estado();
estado_attack = new estado();
estado_hurt = new estado();
estado_death = new estado();
estado_hunt = new estado();

inicia_estado(estado_idle); //todos os inimigos iniciarão no estado de "andando"






