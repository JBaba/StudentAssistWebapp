
<body style="background-color: #f7f7f7; top: 2%;">


	<!-- ApartmentType -->

	<div ng-controller="postAccommodationController" ng-init="init()">

		<form name="newVacancy">
			<div class="row">
				<div class="small-6 columns">



					<div class="drawer-section saBoxBorder">
						<div class="row ad_details_info">

							<div class="small-2 columns" style="visibility: hidden;">a</div>

							<div class="small-8 columns">

								<h5 align="middle" class="notesSection">Apartment
									Information</h5>

							</div>
							<div class="small-2 columns"></div>
						</div>

						<div class="greyLine"></div>

						<div class="row ad_details_info">

							<div class="row">
								<div class="small-6 columns">
									<label>Apartment Type:</label>
								</div>
								<div class="small-6 columns">
									<span uib-dropdown on-toggle="toggled(open)"> <a href
										id="simple-dropdown" uib-dropdown-toggle>
											{{apartmentTypeHeader}} <i class="fa fa-sort-desc"></i>
									</a>
										<ul uib-dropdown-menu aria-labelledby="simple-dropdown">
											<li ng-repeat="choice in apartmentTypes"><a
												ng-click="apartmentType(choice)" href>{{choice}}</a></li>
										</ul>
									</span>
								</div>
							</div>


							<!-- ApartmentName -->
							<br />

							<div class="row">
								<div class="small-6 columns">

									<label>ApartmentName:</label>

								</div>
								<div class="small-6 columns">
									<span uib-dropdown on-toggle="toggled(open)"> <a href
										id="simple-dropdown" uib-dropdown-toggle>
											{{apartmentNameHeader}} <i class="fa fa-sort-desc"></i>
									</a>
										<ul uib-dropdown-menu aria-labelledby="simple-dropdown">
											<li ng-repeat="choice in apartmentNames"><a
												ng-click="apartmentName(choice.apartmentName)" href>{{choice.apartmentName}}</a>
											</li>
										</ul>
									</span>
								</div>
							</div>

							<!-- NoOfRooms -->

							<br />
							<div class="row">
								<div class="small-6 columns">


									<label>No. of Rooms:</label>
								</div>
								<div class="small-6 columns">

									<span uib-dropdown on-toggle="toggled(open)"> <a href
										id="simple-dropdown" uib-dropdown-toggle>
											{{noOfRoomsHeader}} <i class="fa fa-sort-desc"></i>
									</a>
										<ul uib-dropdown-menu aria-labelledby="simple-dropdown">
											<li ng-repeat="choice in noOfRooms"><a
												ng-click="changeNoOfRoomsHeader(choice)" href>{{choice}}</a></li>
										</ul>
									</span>
								</div>
							</div>
						</div>


					</div>
				</div>
				<div class="small-6 columns">

					<div class="drawer-section saBoxBorder">
						<div class="row ad_details_info">

							<div class="small-2 columns" style="visibility: hidden;">a</div>

							<div class="small-8 columns">

								<h5 align="middle" class="notesSection">Contact Information</h5>

							</div>
							<div class="small-2 columns"></div>
						</div>

						<div class="greyLine"></div>

						<div class="row">
							<div class="small-6 columns">
								<label>phone Number:</label>
							</div>

							<div class="small-6 columns">
								<input class="SAtextFiled" type="text">
							</div>
						</div>
						
						<br/>
						
						<div class="row">

							<div class="small-6 columns">
								<label>email Address:</label>
							</div>

							<div class="small-6 columns">
								<input class="SAtextFiled" type="text">
							</div>

						</div>

					</div>

				</div>
			</div>

			<div class="row">
				<div class="small-6 columns">

					<div class="drawer-section saBoxBorder">
						<div class="row ad_details_info">

							<div class="small-2 columns" style="visibility: hidden;">a</div>

							<div class="small-8 columns">

								<h5 align="middle" class="notesSection">Vacancy Information</h5>

							</div>
							<div class="small-2 columns"></div>
						</div>


						<div class="greyLine"></div>

						<div class="row">
							<div class="small-6 columns">


								<label>gender:</label>
							</div>
							<div class="small-6 columns">


								<span uib-dropdown on-toggle="toggled(open)"> <a href
									id="simple-dropdown" uib-dropdown-toggle> {{genderHeader}}
										<i class="fa fa-sort-desc"></i>
								</a>
									<ul uib-dropdown-menu aria-labelledby="simple-dropdown">
										<li ng-repeat="choice in gender"><a
											ng-click="changeGenderHeader(choice)" href>{{choice}}</a></li>
									</ul>
								</span>
							</div>
						</div>
						
						<br/>

						<!-- Text input-->

						<div class="row">
							<div class="small-6 columns">



								<label>Cost per Month</label>
							</div>
							<div class="small-6 columns">



								<input id="textinput" ng-pattern="/^[0-9]+$/" name="cost" ng-model="cost" type="number"
									 class="SAtextFiled" required>
								<span style="color: red"
									ng-show="newVacancy.cost.$dirty && newVacancy.cost.$invalid || newVacancy.cost.$error.pattern">
									<span ng-hide="newVacancy.cost.$error.required">Invalid data</span> <span
									ng-show="newVacancy.cost.$error.required">cost per month
										is required</span>
								</span>
							</div>
						</div>

											<br/>
					
						<!-- Text input-->

						<div class="row">
							<div class="small-6 columns">
								<label>Notes/Comments</label>

							</div>
							<div class="small-6 columns">

								<textarea ng-pattern="/^[a-zA-Z0-9 .\n-]*$/" id="textinput"
									name="notes" type="text" placeholder="notes/comments"
									class="form-control input-md" ng-model="notes" required>
              					</textarea>

								<span style="color: red"
									ng-show="newVacancy.notes.$dirty && newVacancy.notes.$invalid">
									<span ng-show="newVacancy.notes.$error.required">notes/comments
										are required</span> <span ng-show="newVacancy.notes.$error.pattern">only
										numbers/letters allowed</span>
								</span>

							</div>
						</div>

					</div>
				</div>
				<div class="small-6 columns">
				
				<div class="drawer-section saBoxBorder">
		<div class="row ad_details_info">

			<div class="small-4 columns" style="visibility: hidden;">a</div>

			<div class="small-3 columns">

				<h5 align="middle" class="notesSection">Images</h5>

			</div>
			<div class="small-5 columns"></div>
		</div>

		<div class="greyLine"></div>

		<button class="btn btn-primary" ng-disabled="newVacancy.$invalid"
							ng-click="submitClicked()">Submit</button>

	</div>
				
				
				
				
				</div>

			</div>

		</form>
	</div>



</body>
