<?php
    session_start();
    if ($_SESSION['status'] != true) {
        header('Location: login.html');
    }

    ?>

    <html>
    <head>
        <title>Home</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <td colspan="2">
                    <h1>Welcome To This System</h1>
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <?php echo $_SESSION['name']; ?>
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                <?php echo $_SESSION['email']; ?>
                </td>
            </tr>
            <tr>
                <td>
                    <form method="POST" action="home.php">
                        <button type="submit" name="logout" value=""><a href="logout.php">logout</a></button>
                    </form>
                </td>
            </tr>
        </table>
    </body>
    </html>