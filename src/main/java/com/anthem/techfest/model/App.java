package com.anthem.techfest.model;

import org.hibernate.Session;

public class App {
	public static void main(String[] args) {

		System.out.println("Hibernate one to many (Annotation)");
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();

		Demand d = new Demand();
		d.setProjectName("pr");
		d.setLocation("loc");
		d.setPrimarySkill("pr1");
		d.setDemandStatus("open");
		d.setTeam("team1");

		session.save(d);
		int demandId = d.getId();

		Supply s = new Supply();
		s.setResourceName("name1");
		s.setSourcingType("type1");
		s.setDemand(d);
		
		d.getSupply().add(s);

		session.save(s);
		
		System.out.println("demandId="+demandId);
		System.out.println("demandId from s="+s.getDemand().getId());

		session.getTransaction().commit();
		System.out.println("Done");
	}
}