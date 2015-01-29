package ejb;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.*;

import model.Categorie;
import model.Image;

/**
 * EJB session pour la classe Image
 */
@Stateless
public class FacadeImage extends FacadeAbstraite {
	@PersistenceContext(unitName = "JEE")
	private EntityManager em;

	protected EntityManager getEntityManager() {
		return em;
	}

	public FacadeImage() {
		super(Image.class);
	}
	
	public List<Image> getImgLike(String lib)
	{
        TypedQuery<Image> query = em.createQuery("SELECT i FROM Image i WHERE i.nom LIKE '" + lib + "' ORDER BY i.nom", Image.class);
        return query.getResultList();
    }
	
	public List<Image> getImgByCat(String lib)
	{
		
        TypedQuery<Image> query = em.createQuery("SELECT i FROM Image i, Categorie c WHERE c.nom LIKE '" + lib + "' AND c.id = i.categorie.id ORDER BY i.nom", Image.class);
        return query.getResultList();
    }
}