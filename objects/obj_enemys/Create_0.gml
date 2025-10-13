//-----TRECHO DO CÓDIGO QUE SERÁ HERDADO DE TODOS OS INIMIGOS-----
dead = false;
range = 7

lidando_dano = function(_dano, _item){
		if(_item == quebra_com){
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



