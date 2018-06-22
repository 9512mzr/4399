package com.judge_question.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;
import com.entity.Choicequestion;
import com.entity.Judge_question;
import com.entity.Judge_question_show;
import com.entity.Student;
import com.entity.WrongQuestion_show;

@Repository
public class judge_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public ArrayList<String> getDates() {
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='0' and teacher_id=1 and choicejudge='0'");
		qu0 = query.list();
		ArrayList<String> date0 = new ArrayList<String>();
		for (int i = 0; i < qu0.size(); i++) {
			date0.add(qu0.get(i).getDate());
		}
		HashSet s = new HashSet(date0);
		date0.clear();
		date0.addAll(s);

		return this.maopaopai(date0);
	}
	// /*
	// * 未判题目分页查询
	// *
	// */
	// public List<Judge_question> queryForPage(int offset, int length) {
	// // 查询所有的记录数
	// Query query = (Query) sessionFactory.getCurrentSession().createQuery("from
	// Judge_question");
	// query.setFirstResult(offset);
	// query.setMaxResults(length);
	// return query.list();
	// }
	//
	// // 查询记录总数
	// public int getAllRowCount() {
	// int count = ((Long) sessionFactory.getCurrentSession().createQuery("select
	// count(*) from Judge_question").iterate()
	// .next()).intValue();
	// return count;
	// }

	public ArrayList<Judge_question_show> getJudges(String date) {
		List<Judge_question> qu0 = (List<Judge_question>) sessionFactory.getCurrentSession().createQuery(
				"from Judge_question where state='0' and teacher_id=1 and choicejudge='0' and date='" + date + "'")
				.list();
		ArrayList<Judge_question_show> m = new ArrayList<Judge_question_show>();
		for (int i = 0; i < qu0.size(); i++) {

			Judge_question_show n = new Judge_question_show();
			n.setId(qu0.get(i).getId());
			n.setAnswer(this.getAnswer(qu0.get(i).getQuestion_id()));
			n.setFullmark(qu0.get(i).getFullmark().toString());
			n.setScore(qu0.get(i).getScore());
			n.setState(qu0.get(i).getState());
			n.setStudent_name(this.getStudentName(qu0.get(i).getStudent_id()));
			n.setImg(qu0.get(i).getRequest());
			n.setDate(qu0.get(i).getDate());
			n.setClasses(this.getStudentclass(qu0.get(i).getStudent_id()));
			m.add(n);

		}
		return m;
	}

	public String getStudentclass(int id) {
		List<Student> name = (List<Student>) sessionFactory.getCurrentSession()
				.createQuery("from Student where id=" + id + "").list();
		return name.get(0).getClasses();
	}

	public String getStudentName(int id) {
		List<Student> name = (List<Student>) sessionFactory.getCurrentSession()
				.createQuery("from Student where id=" + id + "").list();
		return name.get(0).getName();
	}

	public String getAnswer(int id) {
		List<Bigquestion> qu0 = (List<Bigquestion>) sessionFactory.getCurrentSession()
				.createQuery("from Bigquestion where bigQuestionId=" + id + "").list();
		if (qu0.size() == 0) {
			return null;
		} else {
			return qu0.get(0).getAnswer();
		}
	}

	public void submit(String id, int score) {
		List<Judge_question> qu0 = (List<Judge_question>) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where id=" + id + "").list();
		Judge_question qu = qu0.get(0);
		qu.setState("1");
		qu.setScore(score);
		this.sessionFactory.getCurrentSession().update(qu);
	}

	public ArrayList<String> maopaopai(ArrayList<String> date1) {
		int[] date2 = new int[date1.size()];
		for (int i = 0; i < date1.size(); i++) {
			String date = date1.get(i);
			if (date.length() == 9) {
				date = date.substring(0, 8) + "0" + date.substring(8, date.length());
				date1.set(i, date);
			}
			date1.set(i, date1.get(i).replace("-", ""));
			date2[i] = Integer.parseInt(date1.get(i));
		}

		for (int i = 0; i < date2.length - 1; i++) {
			for (int j = 0; j < date2.length - i - 1; j++) {// -1为了防止溢出
				if (date2[j] > date2[j + 1]) {
					int temp = date2[j];

					date2[j] = date2[j + 1];

					date2[j + 1] = temp;
				}
			}
		}
		date1.clear();
		for (int i = 0; i < date2.length; i++) {
			String date = "" + date2[i];
			String pan = date.charAt(6) + "";
			if (pan.equals("0")) {
				date = date.substring(0, 6) + date.charAt(7);
			}
			date = date.substring(0, 4) + "-" + date.substring(4, 6) + "-" + date.substring(6, date.length());
			date1.add(date);
		}
		return date1;
	}

	public ArrayList<Student> getStudnetFromTeacherId(String TeacherId) {
		Query q = this.sessionFactory.getCurrentSession()
				.createSQLQuery("select student_id from judge_question where teacher_id=" + TeacherId + "");
		List<Integer> list = q.list();
		LinkedHashSet<Integer> set = new LinkedHashSet<Integer>(list.size());
		set.addAll(list);
		list.clear();
		list.addAll(set);

		int t = 0;
		for (int i = 0; i < list.size() - 1; i++)
			for (int j = 0; j < list.size() - 1 - i; j++)
				if (list.get(j) > list.get(j + 1)) {
					t = list.get(j);
					list.set(j, list.get(j + 1));
					list.set(j + 1, t);
				}

		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}

		ArrayList<Student> s = new ArrayList<Student>();
		for (int i = 0; i < list.size(); i++) {
			Student s0 = this.getStudnet(list.get(i));
			if (s0 == null) {
				continue;
			} else {
				s.add(s0);
			}
		}

		return s;
	}

	public Student getStudnet(int id) {
		List<Student> qu0 = (List<Student>) sessionFactory.getCurrentSession()
				.createQuery("from Student where id=" + id + "").list();
		if (qu0.size() > 0) {
			return qu0.get(0);
		} else {
			return null;
		}

	}

	public ArrayList<String> getStudentWrongDate(String StudentId, String TeacherId) {
		List<Judge_question> qu00 = (List<Judge_question>) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where student_id=" + StudentId + " and teacher_id=" + TeacherId + "")
				.list();
		ArrayList<String> dates = new ArrayList<String>();
		ArrayList<Judge_question> qu0 = new ArrayList<Judge_question>();
		for (int i = 0; i < qu00.size(); i++) {
			if (qu00.get(i).getState().equals("1")) {
				qu0.add(qu00.get(i));
			}
		}
		for (int i = 0; i < qu0.size(); i++) {
			dates.add(qu0.get(i).getDate());
		}

		HashSet s = new HashSet(dates);
		dates.clear();
		dates.addAll(s);

		return this.maopaopai(dates);
	}

	public ArrayList<WrongQuestion_show> getStudnetWrongDateQuestion(String StudnetId, String TeacherId, String date) {
		List<Judge_question> qu00 = (List<Judge_question>) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where student_id=" + StudnetId + " and teacher_id=" + TeacherId
						+ " and date='" + date + "'")
				.list();
		ArrayList<WrongQuestion_show> showC = new ArrayList<WrongQuestion_show>();
		for (int i = 0; i < qu00.size(); i++) {
			WrongQuestion_show ws = new WrongQuestion_show();
			Judge_question j0 = qu00.get(i);

			int JudgeId;
			int QuestionId;
			int problemModelId;
			String content;
			String answer;
			String difficulty;
			String request;
			Integer score;
			Integer fullmark;
			String choicejudge;
			
			ws.setStudentId(Integer.parseInt(StudnetId));
			ws.setTeacherId(Integer.parseInt(TeacherId));
			ws.setDate(date);
			
			JudgeId = j0.getId();
			request = j0.getRequest();
			score = j0.getScore();
			fullmark = j0.getFullmark();
			choicejudge = j0.getChoicejudge();
			QuestionId = j0.getQuestion_id();

			if (j0.getChoicejudge().equals("1")) {
				Choicequestion c = this.getChoicequestion(j0.getQuestion_id());
				if (c == null) {
					continue;
				}
				content = c.getContent();
				answer = c.getAnswer();
				difficulty = c.getDifficulty();
				problemModelId = c.getProblemModelId();
			} else {
				Bigquestion b = this.getBigquestion(j0.getQuestion_id());
				content = b.getContent();
				answer = b.getAnswer();
				difficulty = b.getDifficulty();
				problemModelId = b.getProblemModelId();
			}
			
			ws.setJudgeId(JudgeId);
			ws.setQuestionId(QuestionId);
			ws.setProblemModelId(problemModelId);
			ws.setContent(content);
			ws.setAnswer(answer);
			ws.setDifficulty(difficulty);
			ws.setRequest(request);
			ws.setScore(score);
			ws.setFullmark(fullmark);
			ws.setChoicejudge(choicejudge);
			showC.add(ws);
		}
		
		return showC;
	}

	public Choicequestion getChoicequestion(int id) {
		List<Choicequestion> qu0 = (List<Choicequestion>) sessionFactory.getCurrentSession()
				.createQuery("from Choicequestion where choiceQuestionId=" + id + "").list();
		if (qu0.size() > 0) {
			return qu0.get(0);
		} else {
			return null;
		}
	}

	public Bigquestion getBigquestion(int id) {
		List<Bigquestion> qu0 = (List<Bigquestion>) sessionFactory.getCurrentSession()
				.createQuery("from Bigquestion where bigQuestionId=" + id + "").list();
		if (qu0.size() > 0) {
			return qu0.get(0);
		} else {
			return null;
		}
	}
}
