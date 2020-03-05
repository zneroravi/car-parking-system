<?php
session_start();
include('config.php');
include('sessioncheck.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Fees</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
    <meta property="og:title" content="">
    <meta property="og:image" content="">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="">
    <meta property="og:description" content="">

    <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="">
    <meta name="twitter:title" content="">
    <meta name="twitter:description" content="">
    <meta name="twitter:image" content="">

    <!-- Place your favicon.ico and apple-touch-icon.png in the template root directory -->
    <link href="img/favicon.png" rel="shortcut icon" type="image/png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate-css/animate.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/util.css">

</head>

<body>
<div id="preloader"></div>

<?php include('header.php'); ?>
<!-- #header -->

<div class="limiter">
    <div class="container-login100" style="background-image: url('img/carbgdash.jpg');">
        <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
            <?php
            $uid = $_SESSION['log']['useruid'];
            $qry = mysqli_query($con,"SELECT * FROM logtable WHERE useruid='$uid' ORDER BY id DESC");
            $qry1 = mysqli_num_rows($qry);
            if($qry1)
            {
                $row = mysqli_fetch_array($qry);
                if($row['status']=='Left' and $row['payment']=='')
                {
                    ?>
                    <form class="login100-form validate-form flex-sb flex-w" method="post" action="payment.php">
          <span class="login100-form-title p-b-53">
            Fee Generated
          </span>

                        <?php

                        $from = $row['fromtime'];
                        $to = $row['totime'];
                        $id = $row['id'];
                        $t1 = StrToTime ( $from );
                        $t2 = StrToTime ( $to );
                        $diff = $t2 - $t1;
                        $hours = $diff / ( 60 * 60 );
                        $fee = 60*$hours;
                        $fee = round($fee, 0, PHP_ROUND_HALF_UP);
                        ?>

                        <div class="wrap-input100 validate-input" >
                            <input class="input100" type="text" name="fee" value="<?php echo $fee; ?>" readonly/>
                            <span class="focus-input100"></span>
                        </div>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">

                        <div class="container-login100-form-btn m-t-17">
                            <button class="login100-form-btn">
                                Pay
                            </button>
                        </div>

                    </form>
                    <?php
                }
                else
                {
                    ?>
                    <form class="login100-form validate-form flex-sb flex-w" method="post" action="payment.php">
          <span class="login100-form-title p-b-53">
            Car Still Parked!<br>(Enter OTP2)
          </span>

                    </form>
                    <?php
                }
            }
            else
            {
                ?>
                <form class="login100-form validate-form flex-sb flex-w" method="post" action="payment.php">
          <span class="login100-form-title p-b-53">
            Car Still Parked! (Enter OTP2)
          </span>

                </form>
                <?php
            }
            ?>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>
<!-- #footer -->


<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- Required JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/superfish/hoverIntent.js"></script>
<script src="lib/superfish/superfish.min.js"></script>
<script src="lib/morphext/morphext.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/stickyjs/sticky.js"></script>
<script src="lib/easing/easing.js"></script>

<!-- Template Specisifc Custom Javascript File -->
<script src="js/custom.js"></script>

<script src="contactform/contactform.js"></script>


</body>

</html>
