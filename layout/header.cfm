<cfset myName = "Ali Baba's Farm">
<cfset pagesArray = [
    ["Home", "index.cfm", "Home"],
    ["Records", "records.cfm", "Records"],
    ["Inspection", "inspection_tracing.cfm", "Inspection Tracing"],
    ["Produce", "produce.cfm", "Milk Production"],
    ["Consumption", "feed_consumption.cfm", "Feed Consumption"]
]>

<!DOCTYPE html>
<html lang="tr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <title><cfoutput>#myName#</cfoutput></title>
        <style>
            .sidebar-nav{
                width: 260px;
            }
            @media (min-width:992px) {
                main{
                    margin-left: 260px;
                }
                .offcanvas-backdrop::before{
                    display: none;
                }
                .sidebar-nav{
                    transform: none;
                    visibility: visible !important;
                    top: 84px;
                    height: calc(100% - 84px);
                }
            }
        </style>
    </head>

    <body class="bg-white">

    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light py-3 fixed-top">
        <div class="container-fluid">
            <!--offcanvas button-->
            <a class="navbar-toggler me-2" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                <span class="navbar-toggler-icon"></span>
            </a>
            <!--offcanvas button-->
            <a href="index.cfm" class="navbar-brand fw-bold fs-3 me-auto"><cfoutput>#myName#</cfoutput></a>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-person-fill"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Change Account</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Sign Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    <!--Offcanvas-->
    <div class="offcanvas offcanvas-start sidebar-nav" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-body p-0">
            <nav class="navbar">
                <ul class="navbar-nav">
                    <cfoutput>
                        <cfloop array="#pagesArray#" index="item">
                            <li class="nav-item px-3">
                                <a href="#item[2]#" class="nav-link text-black">#item[3]#</a>
                            </li>
                        </cfloop>
                    </cfoutput>
                </ul>
            </nav>
        </div>
    </div>

    