<?php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (empty($_GET["hrs"])) {
        $hrs = 1;
    }
    else {
        $hrs = $_GET["hrs"];
    }
    if (empty($_GET["mins"])) {
        $mins = 1;
    }
    else {
        $mins = $_GET["mins"];
    }
    if (empty($_GET["secs"])) {
        $secs = 1;
    }
    else {
        $secs = $_GET["secs"];
    }
    }
?>
<html>
    <head>
        <title>倒数网 倒数插件</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		<style>
			.clock{
            left:5%;
            margin:5px;
            max-width:300px;
			}
		</style>
	</head>
	<body>
		<script type="text/javascript">
			function countDown(hrs,mins,secs) {
				
				var secelem = document.getElementById("sec");
    			secelem.innerHTML = (secs<10 ? "0":"") +  secs + " secs";
				var minelem = document.getElementById("min");
				minelem.innerHTML = (mins<10 ? "0":"") +  mins + " mins";
				var hrelem = document.getElementById("hr");
				hrelem.innerHTML = (hrs<10 ? "0":"") + hrs + " hrs";
				if(secs < 1) {
					if(mins < 1 && hrs <1) {
						clearTimeout(timer);
					}
					else if (mins <1)
					{
						hrs --;
                        mins = 60;
					}
                    secs = 60;
                    mins--;
					
				}
				secs--;
				var timer = setTimeout(function(){countDown(hrs,mins,secs);},1000);
			}
		</script>
		<div  class="btn-group btn-group-justified clock" role="group" aria-label="Justified button group">
		  <div id="hr" class="btn btn-default" role="button"><? echo $hrs; ?> 时</div>
		  <div id="min" class="btn btn-default" role="button"><? echo $mins; ?> 分mins</div>
		  <div id="sec" class="btn btn-success" role="button"><? echo $secs; ?> 秒</div>
		</div>
		<script type="text/javascript">countDown(<? echo $hrs; ?>,<? echo $mins; ?>,<? echo $secs; ?>);</script>
        <form class="form-inline" role="form" method="get" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-group">
                <label for="hrs">时</label>
                <input value = "<? echo $hrs; ?>" name="hrs" type="number" class="form-control" id="hrs" placeholder="Hours">
            </div>
            <div class="form-group">
                <label for="mins">分</label>
                <input value = "<? echo $mins; ?>" name="mins"  type="number" class="form-control" id="mins" placeholder="Minutes">
            </div>
            <div class="form-group">
                <label for="secs">秒</label>
                <input value = "<? echo $secs; ?>" name="secs" type="number" class="form-control" id="secs" placeholder="Seconds">
            </div>
            <button type="submit" class="btn btn-info">开始倒计时！</button>
        </form>
	</body>
</html>
