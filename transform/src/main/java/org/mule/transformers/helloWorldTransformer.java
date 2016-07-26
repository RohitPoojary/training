package org.mule.transformers;
import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.api.transport.PropertyScope;
import org.mule.transformer.AbstractMessageTransformer;
import java.util.*;
import java.io.*;


public class helloWorldTransformer extends AbstractMessageTransformer{
    /**
     * @param args
     */
   public Object transformMessage(MuleMessage message, String outputEncoding) throws TransformerException {
    	{
    		
			//Scanner data = new Scanner(System.in);
    		String data1 = (String)message.getProperty("setVariable", PropertyScope.INVOCATION);
    				/*data.next();*/
    		
    		
    		//String data1="hello suraj";
    	    int i, len = data1.length();
    	    StringBuilder dest = new StringBuilder(len);

    	    for (i = (len - 1); i >= 0; i--){
    	        dest.append(data1.charAt(i));
    	    }

    	    return dest.toString();
    	}
    	 	
   }
}