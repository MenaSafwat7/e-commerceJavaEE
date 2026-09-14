<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JavaEE Project - Application Running</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #f8fafc;
        }
        .container {
            background: rgba(30, 41, 59, 0.7);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 3rem;
            max-width: 600px;
            text-align: center;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5);
        }
        .status-badge {
            display: inline-block;
            background: #10b981;
            color: #ffffff;
            padding: 0.35rem 1rem;
            border-radius: 9999px;
            font-size: 0.875rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
            letter-spacing: 0.05em;
            text-transform: uppercase;
        }
        h1 {
            font-size: 2.25rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: #ffffff;
        }
        p {
            color: #94a3b8;
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 2rem;
        }
        .links {
            display: flex;
            flex-wrap: wrap;
            gap: 0.75rem;
            justify-content: center;
        }
        .link-btn {
            background: #3b82f6;
            color: #ffffff;
            text-decoration: none;
            padding: 0.6rem 1.2rem;
            border-radius: 8px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: all 0.2s ease;
        }
        .link-btn:hover {
            background: #2563eb;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
                   <form action="order-detail.jsp">
                     <input type="submit">
                   </form>
        <div class="status-badge">App Running Successfully</div>
        <h1>Java EE Application</h1>
        <p>Your Tomcat 10 server is working perfectly! The classic Java EE structure, controllers, services, repositories, and JSP views are ready.</p>
        <div class="links">
            <a class="link-btn" href="${pageContext.request.contextPath}/auth/">Auth Endpoint</a>
            <a class="link-btn" href="${pageContext.request.contextPath}/products/">Products Endpoint</a>
            <a class="link-btn" href="${pageContext.request.contextPath}/cart/">Cart Endpoint</a>
            <a class="link-btn" href="${pageContext.request.contextPath}/orders/">Orders Endpoint</a>
        </div>
    </div>
</body>
</html>
