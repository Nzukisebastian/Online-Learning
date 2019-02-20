/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionActive;
import javax.servlet.http.HttpSessionEvent;
import java.util.Set;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class SessionActiveUsers implements HttpSessionBindingListener{
@Override
    public void valueBound(HttpSessionBindingEvent event) {
        Set<SessionActiveUsers> logins = (Set<SessionActiveUsers>) event.getSession().getServletContext().getAttribute("logins");
        logins.add(this);
    }
@Override
    public void valueUnbound(HttpSessionBindingEvent event) {
        Set<SessionActiveUsers> logins = (Set<SessionActiveUsers>) event.getSession().getServletContext().getAttribute("logins");
        logins.remove(this);
    }
// @Override equals() and hashCode() as well!
  public void sessionDestroyed(HttpSessionEvent event) {
    SessionActiveUsers user = (SessionActiveUsers) event.getSession().getAttribute("user");
    if (user != null) {
        Set<SessionActiveUsers> logins = (Set<SessionActiveUsers>) event.getSession().getServletContext().getAttribute("logins");
        logins.remove(user);
    }
}  
public void login(SessionActiveUsers user){
    // Do your business thing and then
    //logins.add(user);
}
public void logout(SessionActiveUsers user) {
    // Do your business thing and then
    //logins.remove(user);
}
 
}