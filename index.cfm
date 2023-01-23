<cfset pageName = "Home">
<cfinclude  template="layout/header.cfm">

<cfquery name="animalinfo" datasource="workCubeDSN">
SELECT * FROM [WorkCube].[dbo].[animal]
</cfquery>

<main class="mt-5 py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 fw-bold fs-3">
                    Dashboard
                </div>
            </div>
            <div class="row">
                <!--Kayıtlar-->
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">Records</div>
                        <div class="card-body">
                            <table class="table table-striped table-hover align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Animals</th>
                                        <th scope="col">Count</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <cfoutput query="animalinfo">
                                        <tr>
                                            <td>#animalinfo.animal_id#</td>
                                            <td>#animalinfo.name#</td>
                                            <td>#animalinfo.number#</td>
                                        </tr>
                                    </cfoutput>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!--Muayene-->
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">Inspection Tracing</div>
                        <div class="card-body">
                            <table class="table table-striped table-hover align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Animals</th>
                                        <th scope="col">Last Inspection Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <cfoutput query="animalinfo">
                                        <tr>
                                            <td>#animalinfo.animal_id#</td>
                                            <td>#animalinfo.name#</td>
                                            <td>#animalinfo.inspect_date#</td>
                                        </tr>
                                    </cfoutput>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!--Üretim-->
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">Milk Production</div>
                        <div class="card-body">
                            <table class="table table-striped table-hover align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Animals</th>
                                        <th scope="col">Annual Milk Production (For 1 Animal (Liter))</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <cfoutput query="animalinfo">
                                        <tr>
                                            <cfif Len(Trim(animalinfo.production)) GT 0>
                                                <td>#animalinfo.animal_id#</td>
                                                <td>#animalinfo.name#</td>
                                                <td>#animalinfo.production#</td>
                                            </cfif>
                                        </tr>
                                    </cfoutput>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!--Harcama-->
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">Feed Consumption</div>
                        <div class="card-body">
                            <table class="table table-striped table-hover align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Animals</th>
                                        <th scope="col">Monthly Feed Consumption (For 1 Animal (Kg))</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <cfoutput query="animalinfo">
                                        <tr>
                                            <td>#animalinfo.animal_id#</td>
                                            <td>#animalinfo.name#</td>
                                            <td>#animalinfo.consumption#</td>
                                        </tr>
                                    </cfoutput> 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</main>
<cfinclude  template="layout/footer.cfm">