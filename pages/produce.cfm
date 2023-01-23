<cfset pageName = "Produce">

<cfquery name="animalinfo" datasource="workCubeDSN">
SELECT * FROM [WorkCube].[dbo].[animal]
</cfquery>

<cfinclude  template="../layout/header.cfm">
<main class="mt-5 py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!--Table-->
                    <table class="table table-striped table-hover caption-top align-middle">
                        <caption class="fs-3">Milk Production</caption>
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
                    <!--Table-->
                </div>
            </div>
        </div>
</main>
<cfinclude  template="../layout/footer.cfm">
