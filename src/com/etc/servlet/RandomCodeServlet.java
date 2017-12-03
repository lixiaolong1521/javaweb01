package com.etc.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/randomCode")
public class RandomCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//生成随机�?
		String randomCode = UUID.randomUUID().toString().substring(0, 5);

		//把随机数放进Session�?
		req.getSession().setAttribute("RANDOMCODE_IN_SESSION", randomCode);

		//创建图片对象
		int width = 80;
		int height = 40;
		int imageType = BufferedImage.TYPE_INT_RGB;
		BufferedImage image = new BufferedImage(width, height, imageType);

		//画板
		Graphics g = image.getGraphics();
		g.setColor(Color.YELLOW);
		//绘制�?��实心的矩�?
		g.fillRect(1, 1, width - 2, height - 2);

		//把随机数画进图片�?
		g.setColor(Color.BLACK);//设置随机数的颜色
		Font font = new Font("����", Font.BOLD + Font.ITALIC, 20);
		g.setFont(font);//设置随机数的字体和大�?
		g.drawString(randomCode, 10, 28);
		//干扰�?
		g.setColor(Color.GRAY);
		Random r = new Random();
		for (int i = 0; i < 100; i++) {
			g.fillRect(r.nextInt(width), r.nextInt(height), 2, 2);
		}

		//关闭
		g.dispose();
		//把图片对象以流的方式保存出去
		ImageIO.write(image, "jpg", resp.getOutputStream());
	}
}
