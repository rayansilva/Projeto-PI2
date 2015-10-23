package br.com.sistemapi.hibernate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

	private static final SessionFactory sessionFactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {

		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder();
		serviceRegistryBuilder.applySettings(configuration.getProperties());
		ServiceRegistry serviceRegistry = serviceRegistryBuilder.build();
		return configuration.buildSessionFactory(serviceRegistry);
	}

	public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}

	public static void salvar(Object object) {

		Session session = getSessionfactory().openSession();
		session.beginTransaction();
		session.save(object);
		session.getTransaction().commit();
		session.close();
	}

	public static List buscar(Object object) {

		Session session = getSessionfactory().openSession();

		List lista = session.createCriteria(object.getClass()).add(Example.create(object)).list();

		session.close();

		return lista;
	}

	public static List buscarUnico(Object object) {

		Session session = getSessionfactory().openSession();
		Criteria crit = session.createCriteria(Object.class);
		crit.add(Restrictions.eq("id", object));
		List listRestricao = crit.list();
		session.close();

		return listRestricao;
	}

	public static void deletar(Object object) {

		Session session = getSessionfactory().openSession();
		session.beginTransaction();
		session.delete(object);
		session.getTransaction().commit();
		session.close();
	}

	public static void alterar(Object object) {

		Session session = getSessionfactory().openSession();
		session.beginTransaction();
		session.update(object);
		session.getTransaction().commit();
		session.close();
	}
}