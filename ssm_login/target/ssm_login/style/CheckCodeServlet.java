package svlt;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import sun.awt.image.codec.JPEGImageEncoderImpl;

/**
 * Servlet implementation class CheckCodeServlet
 */
public class CheckCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("image/jpeg");
	
		BufferedImage image = new BufferedImage(60,20,BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.setColor(Color.lightGray);
		g.fillRect(0, 0, 60, 20);
		Random random = new Random();
		for(int i = 0; i < 10; i++)
		{
			g.setColor(getRandomColor());
			g.drawLine(random.nextInt(60),random.nextInt(20),random.nextInt(60),random.nextInt(20));
		}
		
		
		
		String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		
		String checkcode = "";
		g.setFont(new Font("",Font.BOLD,14));
		
		for(int i = 0; i < 5; i++)
		{
			checkcode+=str.charAt(random.nextInt(36));
			//char code = str.charAt(random.nextInt(36));
			//g.setColor(getRandomColor());
			//g.drawString(code+"", i*10+5, 15);
		}
		
		request.getSession().setAttribute("checkcode", checkcode);
		g.setColor(Color.white);
		
		
		g.drawString(checkcode,5,15);
		
		OutputStream os = response.getOutputStream();
		
		JPEGImageEncoder encoder= JPEGCodec.createJPEGEncoder(os);
		
		encoder.encode(image);
	}
	
	public Color getRandomColor()
	{
		Random random = new Random();
		int r = random.nextInt(255);
		int g = random.nextInt(255);
		int b = random.nextInt(255);
		return new Color(r,g,b);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
