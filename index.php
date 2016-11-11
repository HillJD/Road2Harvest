<?
$page_title='Union Pentecostal Church';
include ('includes/upc_header.php');
?>
<link href="main.css" rel="stylesheet" type="text/css">

	<div id="main" class="background_divs_color">
		<div id="left_col">
            <div id="streaming">
				<a href="/../live/index.php">
				<img src="images/streaming-live-2.png" height="198" width="260"><a/>
                <p>So many ways to hear The One True Gospel Message!</p>
    		</div><!--end streaming -->
			<div id="services">
				<img src="images/servicetime265x50.gif" width="265" height="50" border="2" alt="">
				Sunday School 10:00am<br />Worship Service<br> 11:00am &amp;&nbsp;6:00pm<br>
				Wednesday Family Worship Service 7:30pm
			</div><!--end of services  -->
			
			<div id="calendar">
			<a href="/../calendar.php">
				<img src="images/calendar_icon250x177.gif" width="264" height="77" border="2" alt="UPC Calendar!"></a>
			</div><!-- end of calendar -->
			
			<div id="sermons">
				<a href="/../sermons.php"> 
				<img src="images/sermonsimage265x69.gif" width="265" height="50" border="2" alt=""></a>
				<p>If you are searching for teaching and preaching that goes beyond surface 
				level, then click <a href="/../sermons.php">here</a> to listen to 
				sermons by Pastor Hurst and other brethren.</p>
				<?
				include ('includes/upc_mysqli_connect.php');
				$query="SELECT * FROM `messages` WHERE `day_of_week`='sun' and `service_time`='am' order by `date` desc limit 1";
				$result=mysql_query($query)
				or die ("Query failed: ".mysql_error());
				$row=mysql_fetch_array($result);
				echo "<a href=\"/sermons/".$row['file_name'].".".$row['file_type']."\">Click here to listen to Sunday morning's message</a>"."<br />";
				echo " "."<a href=\"/sermons/".$row['file_name'].".".$row['file_type']."\"><span class=\"italics\">".$row['title']."</span></a>"." <br />by ";
				echo $row['author'];
				?>
			</div><!--end of sermons  -->
			
	        <div id="mailto">
				<img src="images/contactus265x50.gif" alt="" border="2" height="50" width="264">
				<a href="mailto:pastor@unionpentecostalchurch.com?subject=Comment">Pastor Hurst</a><br><br>
				<a href="mailto:youth@unionpentecostalchurch.com?subject=Comment">Bro. Bryan McKelvey-Youth Leader</a><br><br>
				<a href="mailto:webmaster@unionpentecostalchurch.com?subject=Comment">Webmaster</a>
			</div><!-- end mailto -->
			
			<div id="address">
				<sub>
				<img src="images/findus265x50.gif" width="264" height="69" border="2" alt=""></sub>
				<p>1101 North Union Road<br />
				Dayton, Ohio 45417<br />
				937.854.1351</p>
				<form action="http://maps.google.com/maps" method="get">
				<b>Need directions to our church?</b><br><br>Enter your starting address:
				<input type="text" size=30 name="saddr" style="width: 222px"><br><br>
				<input type="hidden" name="daddr" value="1101 N. Union Rd 45417">
				<input type="submit" value="Get Directions">
				</form>
			</div><!-- end address -->
        	</div><!-- end of left_col -->
			
	<div id="right_col">
	   <!--<div class="coming_up">	
          <img src="images/no service 2016.jpg" width="555	" height="auto"></div>
          
        <!--<video  preload="auto" autoplay loop controls width="100%" height="auto">
          <source src="images/christmas drama announcement 2015.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>  -->
                    
           <div class="pastorsdesk">
	          <div class="picture right" style="width:212px;">
    	      	<img src="images/hurst pastor and wife.jpg" alt= "alt=&quot;Pastor &amp; Sis Hurst&quot; and Sis Hurst" class="pic_format" height="204px" width="202px">
        	  </div>
              
             <strong>WHAT KICKING MY DOG TAUGHT ME</strong>
				<p>The article I read about lowering graduation requirements made me think of a beagle I once owned and the night I lost my religion and became a hypocritical preacher. In my beginning years of preaching, when on the subject of sanctification (being made like Christ), I would name different things a person just won't do if he really has the goods, is sanctified. Starting each declaration with "If you are sanctified, you won't..., I would get on a rhetoric roll and state, "If you are sanctified, you won't kick your dog." All my life up to the night I'm writing about I had beagles for hunting. I had recently gotten a new one that had absolutely no smarts. He loved to bark at night, all night. Over and over I'd have to get up in the night to quieten him. First, I would try opening the back door and yell-whispering, "Hush!" That only incited him to more barking. That left me to resort to the next step in dog discipline--the rolled up newspaper. Before you judge me too harshly, that was almost 30 years ago when that was an accepted manner of disciplining a dog. Also, a loosely rolled paper, when applied, only startled and didn't hurt the animal. (You know it was a long time ago since there was a newspaper on hand.) Any ways, back to that night: Around 2 a.m. I rolled my newspaper, traipsed down the back stairs and across the backyard to where the dog was leashed to its house. I gave it a few swats with the rolled newspaper with the command, "Hush,"  and, since the dog went silent, turned to go back into the house. I hadn't taken but a step or two when the dog started yapping again. I whirled about and repeated the dose of discipline. The dog stopped. I turned and took a step. The dog started yapping again. This was repeated over and over. Many nights the dog finally would stop, but not this night. After numerous, futile repeats of the procedure, something snapped in my sleep-deprived mind. I wheeled around back to the yapping dog and instead of engaging the newspaper, with my foot I caught the dog under its belly, lifted it, and launched it through the air. When it landed, it yelped and ran into its house. As I turned to walk away, relief that the dog finally went silent was only beginning to settle down on me when I heard the words of my preaching, "If you are sanctified, you won't kick your dog." The conviction was heavy. I could have argued that I hadn't actually kicked my dog-- only catapulted him--but, I knew neither the dog nor my conscience would actually get the difference. So what did I do? Fall down and cry out for forgiveness pledging never to kick my dog again? No. I simply determined to leave out that line, "...you won't kick your dog" the next time I preached on sanctification. Not really. Feeling hypocritical, I never did preach that again, but I did use this story to illustrate a truth God taught me that night: When one's experience falls short of his belief, he will find it easier to lower his belief to accommodate the insufficiency of his experience than to get his experience back up to the level of his belief. It would have been easier to quit believing, if one is sanctified, he won't kick his dog than to stop kicking the dog. How does the article on graduation requirements remind me of all this? Because the article reported the school officials' intentions to lower the graduation requirements in order that more students might graduate. To lower the standard was easier than to get the students to meet the requirements. So many Christians today have found their experience and walk fallen way below what they have professed to believe. Rather than endeavoring to get their experience back in line with what they believe, they simply alter their belief to coincide with and accommodate their present experience. They lower the standard and deceive themselves into believing they are still graduating. So many examples of this could be given, but there is no space. There is only enough room left to tell you that, no, I never kicked my dog again.</p>
   	    </div><!--end of pastors desk-->
	    &nbsp;&nbsp;Read more of Pastor Hurst's <a href="pastorsdesk.php"><span class="italics">Pastors Desk Articles!</span></a><br>
		</div><!--end of right_col-->
    </div><!-- end of main -->
    </div>
    
    <? include('includes/upc_footer.html') ?>
    