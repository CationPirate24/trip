<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ page language="java" import="java.awt.image.*"%>  
<%@ page language="java" import="java.awt.*"%>  
<%@ page language="java" import="javax.imageio.*"%>  
  
<%  
    //创建一个图像缓冲区对象  相当于一张纸   参数分别为 宽、高、图像类型  
    BufferedImage bi = new BufferedImage(60, 20,BufferedImage.TYPE_USHORT_555_RGB);  
    //得到制图对象   相当于你得到了一支笔      Graphics g = bi.getGraphics();  
    Graphics g = bi.getGraphics();    //设置 上下文颜色  相当于背景颜色  
    g.setColor(Color.GREEN);  
    //进行填充  x、y、width、height  
   g.fillRect(0, 0, 60, 20);  
      
    Random rd = new Random();  
    //干扰纹  
    g.setColor(Color.GRAY);  
    //15条干扰纹  
    for (int i = 0; i < 15; i++) {  
        g.drawLine(rd.nextInt(61), rd.nextInt(21), rd.nextInt(61), rd.nextInt(21));  
   }  
  
    //设置验证码  
  
    String code = "";  
    String str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789";  
    for (int i = 0; i < 4; i++) {  
        code += str.charAt(rd.nextInt(str.length()));  
    }  
      
    request.getSession().setAttribute("code",code);  
    //设置字的颜色  
    g.setColor(Color.BLUE);  
    //设置字体   
    g.setFont(new Font("黑体", Font.BOLD, 18));  
   //在图像上下文开始画由String的文本  
    g.drawString(code, 10, 15);  
  
    //使用图片输出流  输出(纸,格式,输出方式)  
    ImageIO.write(bi, "jpeg", response.getOutputStream());  
    out.clear();  
    out = pageContext.pushBody();  
%>  