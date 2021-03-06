<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.0.5/gsap.min.js"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js"></script>

<style>
@font-face {
  font-family: 'LotteMartHappy';
  font-style: normal;
  font-weight: 400;
  src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyMedium.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyMedium.woff') format('woff');
}


body {
   background-color: #1b1b1d;
   min-height: 100vh;
   display: flex;
   align-items: center;
   padding: 1rem;
}

body:after {
   content: '';
   background-image:
      url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/756881/texture.svg);
   position: fixed;
   width: 100%;
   height: 100%;
   top: 0;
   left: 0;
   bottom: 0;
   right: 0;
   z-index: 999;
   pointer-events: none;
   opacity: 0.2;
   filter: invert(1);
   background-size: cover;
}

#quote { -
   -weight: 10;
   font-family: 'LotteMartHappy', sans-serif;
   font-size: 6.5rem;
   font-weight: 170;
   background-size: contain;
   line-height: 1;
   margin: 0;
   text-align: left;
}

#quote>* {
   color: hsl(347, 7%, 29%);
   font-variation-settings: 'wght' var(- -weight);
}

.grid {
   grid-template-columns: repeat(3, 1fr);
}
</style>
<body>
   <h2 id="quote">
     	업체 등록 대기중입니다.</br>1~7일이 소요됩니다.</br><a href="index.jsp">I.T.G.O.O</a>
   </h2>
</body>
<script type="text/javascript">
   var tl = gsap.timeline(),

   split = new SplitText("#quote", {
      type : "words,chars"
   }),

   words = split.words; //an array of all the divs that wrap each character

   gsap.set("#quote", {
      perspective : 400
   });

   tl.to(words, {
      duration : 1.5,
      "--weight" : "300",
      ease : "none",
      color : "hsl(+=0, +=70%, +=20%)",
      stagger : {
         each : 0.4,
      }
   })
</script>
</html>