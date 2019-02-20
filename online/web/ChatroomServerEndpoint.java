/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.json.JsonWriter;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;
import javax.websocket.Session;


@ServerEndpoint("/ChatroomServerEndpoint")
public class ChatroomServerEndpoint {
static Set<Session>chatroomUsers=Collections.synchronizedSet(new HashSet<Session>());    
 @OnOpen
 public void handleOpen(Session userSession){
 chatroomUsers.add(userSession);
     }
 @OnMessage
public void handleMessage(String message,Session userSession) throws IOException{
String username=(String)userSession.getUserProperties().get("username");
if(username==null){
userSession.getBasicRemote().sendText(buildJsonData("System","you are now connected as "+message));
}else{
    Iterator<Session>iterator=chatroomUsers.iterator();
while(iterator.hasNext())iterator.next().getBasicRemote().sendText(buildJsonData(username,message));
}
    }         
  @OnClose
  public void handleClose(Session userSession){
  chatroomUsers.remove(userSession);
  }

    private String buildJsonData(String username, String message) {
JsonObject jsonObject=Json.createObjectBuilder().add("message", username+""+message).build();
StringWriter stringWriter=new StringWriter();
try(JsonWriter JsonWriter=Json.createWriter(stringWriter)){JsonWriter.write(jsonObject);}
        
   return stringWriter.toString(); //To change body of generated methods, choose Tools | Templates.
    }
  }
