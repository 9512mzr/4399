package com.art.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.EuclideanDistanceSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.art.service.ArtServiceImpl;
import com.entity.Choicequestion;

@Controller
public class ArtControllerImppl {
	@Resource
	private ArtServiceImpl artServiceImpl;
	
	@RequestMapping("showwlist")
	public String artselect(HttpServletRequest request,Model model) {
		String address2=request.getSession().getServletContext().getRealPath("/");
		List<Choicequestion> choice2=new ArrayList<Choicequestion>();
		Set choice;
		try {
			choice = artificiall(address2);
			for(Iterator  iterator = choice.iterator(); iterator.hasNext();) {
				String x0=iterator.next()+"";
				int x = Integer.parseInt(x0);
				Choicequestion c = this.artServiceImpl.artselect(x);
				choice2.add(c);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TasteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("choice", choice2);
		return "art";
	}
	
	/*选择题推荐*/
	final static int NEIGHBORHOOD_NUM = 2;
    final static int RECOMMENDER_NUM = 3;
	public Set artificiall(String address) throws IOException, TasteException{
	    String file = address+"/ChoiceQuestion.csv";
        DataModel model = new FileDataModel(new File(file));
        UserSimilarity user = new EuclideanDistanceSimilarity(model);
        NearestNUserNeighborhood neighbor = new NearestNUserNeighborhood(NEIGHBORHOOD_NUM, user, model);
        Recommender r = new GenericUserBasedRecommender(model, neighbor, user);
        LongPrimitiveIterator iter = model.getUserIDs();
        
        Set at =new HashSet();//有序，从小到大，无重复
        while (iter.hasNext()) {
            long uid = iter.nextLong();
            List<RecommendedItem> list = r.recommend(uid, RECOMMENDER_NUM);
//            System.out.println(list);
            System.out.printf("uid:%s", uid);
            for (RecommendedItem ritem : list) {
//              System.out.printf("(%s,%f)", ritem.getItemID(), ritem.getValue());
                System.out.printf("(%s)", ritem.getItemID());
                at.add(ritem.getItemID());
            }
            System.out.println();
        }
        System.out.println(at);
        return at;
	}
}
