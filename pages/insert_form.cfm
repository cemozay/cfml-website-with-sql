<cfset pageName = "Data Saved">

<cfinclude  template="../layout/header.cfm">

<main class="mt-5 py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!--Table-->
                    <table class="table table-striped table-hover caption-top align-middle"> 
                        <caption class="fs-3">Add Data</caption>
                        <form action="insert_action.cfm" method="post"> 
                            <tr> 
                                <td>ID:</td> 
                                <td><input type="text" name="animal_id" size="20" maxlength="4"></td> 
                            </tr> 
                            <tr> 
                                <td>Name:</td> 
                                <td><input type="text" name="name" size="20" maxlength="50"></td> 
                            </tr> 
                            <tr> 
                                <td>Quantity:</td> 
                                <td><input type="text" name="number" size="20" maxlength="50"></td> 
                            </tr>
                            <tr> 
                                <td>Inspection:</td> 
                                <td><input type="text" name="inspect_date" size="20" maxlength="50"></td> 
                            </tr>
                            <tr> 
                                <td>Production:</td> 
                                <td><input type="text" name="production" size="20" maxlength="50"></td> 
                            </tr>
                            <tr> 
                                <td>Consumption:</td> 
                                <td><input type="text" name="consumption" size="20" maxlength="50"></td> 
                            </tr>
                            <tr> 
                                <td>&nbsp;</td> 
                                <td><input type="submit" value="Save">&nbsp;
                                <input type="reset" value="Clear Form"></td> 
                            </tr> 
                        </form>
                    </table> 
                    <!--Table-->
                </div>
            </div>
        </div>
</main>
<cfinclude  template="../layout/footer.cfm">

