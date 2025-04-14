<?php

$page = "select";

if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case "select":
            $page = "select";
            break;
        case "010124":
            $page = "010124";
            break;
        case "032124":
            $page = "032124";
            break;
        case "041125":
            $page = "041125";
            break;
        default:
            header("Location: ?page=select");
            break;
    }
} else {
    header("Location: ?page=select");
}

?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>⋆｡˚⋆ฺ digicam diaries ⋆｡˚⋆ฺ </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link rel="icon" href="images/dd-icon.png" type="image/png">

    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            font-family: Inter;
        }

        .container-fluid {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .main-content {
            flex: 1;
            display: flex;
            overflow: hidden;
        }

        .sidebar {
            background-color: rgb(99, 99, 99);
            overflow-y: auto;
        }

        .content {
            background-color: white;
            overflow-y: auto;
            height: 80vh;
        }

        @media (max-width: 767px) {
            .dd-headings {
                font-size: 20px;
                letter-spacing: 0px;
            }

            .dd-navbar {
                max-height: 80px;
            }
        }

        .card {
            margin-bottom: 20px;
            margin-top: 5px;
            border-radius: 0px;
            background-color: #1d1d1d;
            color: #f8f7f3;
            transition: transform 0.3s;
        }

        .card img {
            max-width: 100%;
            border-radius: 0px;
            margin-top: 10px;
            border: 1px solid #f8f7f3;
        }

        .card-title {
            font-family: Inter Bold;
        }

        .card:hover {
            transform: scale(1.05);
        }
    </style>

</head>

<body>
    <div class="container-fluid">
        <!-- Header -->
        <div class="row">
            <div class="col pt-4 pb-2 text-center dd-navbar"
                style="background-color: #1d1d1d; font-family: Inter Bold; color: #f8f7f3; font-size: 50px; letter-spacing: -2px; height: 20vh ">
                <button class="navbar-dark btn d-md-none position-absolute top-0 start-0 m-3" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#sidebarOffcanvas" aria-controls="sidebarOffcanvas">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <p class="dd-headings"> ⋆｡˚⋆ฺ digicam diaries ⋆｡˚⋆ฺ </p>
            </div>
        </div>

        <!-- Main content -->
        <div class="row main-content flex-grow-1">
            <!-- Sidebar: Offcanvas -->
            <div class="offcanvas offcanvas-start d-md-none" tabindex="-1" id="sidebarOffcanvas"
                aria-labelledby="sidebarOffcanvasLabel" style="background-color: rgb(99, 99, 99);">
                <div class="offcanvas-header">

                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="row d-flex justify-content-center p-3">
                        <a class="p-0 d-flex justify-content-center" href="?page=041125" style="text-decoration:none;">
                            <div class="card p-4" style="width: 18rem;">
                                <img src="images/04-11-25-01.jpg" class="card-img-top" alt="...">
                                <div class="card-body p-0 py-3">
                                    <h5 class="card-title">sponty manila trip</h5>
                                    <p class="card-text">APR 11 2025 • 10 Photos</p>
                                </div>
                            </div>
                        </a>

                        <a class="p-0 d-flex justify-content-center" href="?page=010124" style="text-decoration:none;">
                            <div class="card p-4" style="width: 18rem;">
                                <img src="images/01-01-24-01.jpg" class="card-img-top" alt="...">
                                <div class="card-body p-0 py-3">
                                    <h5 class="card-title">new year manila trip</h5>
                                    <p class="card-text">JAN 01 2024 • 10 Photos</p>
                                </div>
                            </div>
                        </a>

                        <a class="p-0 d-flex justify-content-center" href="?page=032124" style="text-decoration:none;">
                            <div class="card p-4" style="width: 18rem;">
                                <img src="images/03-21-24-01.jpg" class="card-img-top" alt="...">
                                <div class="card-body p-0 py-3">
                                    <h5 class="card-title">sintafest '24</h5>
                                    <p class="card-text">MAR 21 2024 • 13 Photos</p>
                                </div>
                            </div>
                        </a>

                    </div>

                </div>
            </div>

            <!-- Sidebar: Main -->
            <div class="col-md-3 d-none d-md-block sidebar d-flex justify-content-center" style=" height:80vh;">
                <div class="row d-flex justify-content-center p-3">
                    <a class="p-0 d-flex justify-content-center" href="?page=041125" style="text-decoration:none;">
                        <div class="card p-4" style="width: 18rem;">
                            <img src="images/04-11-25-01.jpg" class="card-img-top" alt="...">
                            <div class="card-body p-0 py-3">
                                <h5 class="card-title">sponty manila trip</h5>
                                <p class="card-text">APR 11 2025 • 10 Photos</p>
                            </div>
                        </div>
                    </a>

                    <a class="p-0 d-flex justify-content-center" href="?page=010124" style="text-decoration:none;">
                        <div class="card p-4" style="width: 18rem;">
                            <img src="images/01-01-24-01.jpg" class="card-img-top" alt="...">
                            <div class="card-body p-0 py-3">
                                <h5 class="card-title">new year manila trip</h5>
                                <p class="card-text">JAN 01 2024 • 10 Photos</p>
                            </div>
                        </div>
                    </a>

                    <a class="p-0 d-flex justify-content-center" href="?page=032124" style="text-decoration:none;">
                        <div class="card p-4" style="width: 18rem;">
                            <img src="images/03-21-24-01.jpg" class="card-img-top" alt="...">
                            <div class="card-body p-0 py-3">
                                <h5 class="card-title">sintafest '24</h5>
                                <p class="card-text">MAR 21 2024 • 13 Photos</p>
                            </div>
                        </div>
                    </a>

                </div>

            </div>

            <!-- Main content -->
            <div class="col-12 col-md-9 content">
                <?php include("shared/" . $page . ".php"); ?>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>
</body>

</html>