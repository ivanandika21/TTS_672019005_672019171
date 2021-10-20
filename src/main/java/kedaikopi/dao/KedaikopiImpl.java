package kedaikopi.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import kedaikopi.model.Kedaikopi;
import kedaikopi.util.HibernateUtil;

public class KedaikopiImpl implements KedaikopiDao{
	
	public KedaikopiImpl() {
		
	}
	
	@Override
	public void insertData(Kedaikopi nota) throws SQLException {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			session.save(nota);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	@Override
	public void updateData(Kedaikopi nota) throws SQLException {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			session.saveOrUpdate(nota);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	@Override
	public boolean deleteData(long id) throws SQLException {
		Transaction transaction = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			transaction = session.beginTransaction();
			Kedaikopi nota = session.get(Kedaikopi.class, id);
			if (nota != null) {
				session.remove(nota);
				session.flush();
				System.out.println("Data transaksi berhasil dihapus");
				return true;
			}
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) transaction.rollback();
			e.printStackTrace(); 
		} finally {
			session.close();
		}
		return false;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Kedaikopi> selectAllTodos() {
		Transaction transaction = null;
		List<Kedaikopi> keranjang = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			keranjang = session.createQuery("from Kedaikopi").getResultList();
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return keranjang;
	}
	
	@Override
	public Kedaikopi selectData(long dataId) {
		Transaction transaction = null;
		Kedaikopi nota = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			nota = session.get(Kedaikopi.class, dataId);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return nota;
	}
}
