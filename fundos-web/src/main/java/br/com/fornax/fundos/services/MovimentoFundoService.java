package br.com.fornax.fundos.services;

import java.util.List;

import br.com.fornax.fundos.model.MovimentoFundo;

public interface MovimentoFundoService {

	Boolean inserir(MovimentoFundo movimentoFundo);

	Boolean editar(MovimentoFundo movimentoFundo);

	Boolean excluir(MovimentoFundo movimentoFundo);

	List<Object> listarTodos();

	List<MovimentoFundo> listarMovimentosPorFundo(int idFundo);
	
	MovimentoFundo buscarMovimentoPorIdFundoEIdMov(int idFundo, int idMovimento);
	
	Object listarPorId(Object object, int idMovimento);
}
