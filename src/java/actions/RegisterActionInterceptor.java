package actions;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;


public class RegisterActionInterceptor extends AbstractInterceptor {



	
	@Override
	public String intercept(ActionInvocation i) throws Exception {
	
		
		Object object=i.getAction();
		if(object==null&&(object instanceof RegisterAction)==false){
			return Action.INPUT;
		}
		if(object!=null){
			if(object instanceof RegisterAction){
				RegisterAction action=(RegisterAction)object;
				String name=action.getName();
				System.out.print(name+"=========");
				if(name==null) return Action.INPUT;
				if(name.contains("奥巴马")){
					name=name.replaceAll("奥巴马","***");
						action.setName(name);
					}
				if(name.contains("Obama")){
					name=name.replaceAll("Obama","***");
						action.setName(name);
					}
					return i.invoke();
				}
			else{
					return Action.INPUT;
				}
			}
		return i.invoke();
	}

}
