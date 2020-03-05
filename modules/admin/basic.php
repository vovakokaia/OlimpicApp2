<script src="https://maxcdn.bootsdivapcdn.com/bootsdivap/3.4.0/js/bootsdivap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootsdivapcdn.com/bootsdivap/3.4.0/css/bootsdivap.min.css">

<script type="text/javascript" src="/scripts/swal.js" defer></script>

<link rel="stylesheet" href="/Acrochamp/styles/basic.css">
<link rel="stylesheet" href="/Acrochamp/modules/admin/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/modules/admin/scripts.js"></script>

<style>
#pause {
	display: none!important;
}
</style>
<div class="admin_pause_block">
	<div>
		<h3 class="col_double_padding">
			The programm is running,
			To change anything press <strong style="color: green">PAUSE</strong> button
		</h3>
	</div>
</div>


<div class="bg">
	<div id="nav">
		<div class="sidebar">
			<div class="add_options">
				<input class="add_input"  type="text" id='add_name' placeholder="Name(s)">
				<input class="add_input" type="text" id='add_nf' placeholder="National Federation">
				<input class="add_input" type="text" id='add_cn' placeholder="Country">
				<input class="add_input" type="text" id='add_ct' placeholder="Category">
				<div class="add_submit nav_btn" id='add_submit'>Add</div>	
			</div>
			<div class="filter_options">
				<div class="checkgroup">
					<div class="nav_btn f_drop">	
						<h3>Country</h3>
						<div class="countries">
							<label>
								<input type="radio" name="country" value="GEO">
								<span>GEO</span>
							</label>
							<label>
								<input type="radio" name="country" value="USA">
								<span>USA</span>
							</label>
							<label>
								<input type="radio" name="country" value="RUS">
								<span>RUS</span>
							</label>
							<label>
								<input type="radio" name="country" value="UKR">
								<span>UKR</span>
							</label>
							<label>
								<input type="radio" name="country" value="GER">
								<span>GER</span>
							</label>	
						</div>
					</div>
					<div class="nav_btn f_drop">
						<h3>Categories</h3>
						<div class="categories">
							<label>
								<input type="radio" name="category" value="boys">
								<span>boys</span>
							</label>
							<label>
								<input type="radio" name="category" value="girls">
								<span>girls</span>
							</label>
							<label>
								<input type="radio" name="category" value="bpair">
								<span>bpair</span>
							</label>
							<label>
								<input type="radio" name="category" value="gpair">
								<span>gpair</span>
							</label>
							<label>
								<input type="radio" name="category" value="combine">
								<span>combine</span>
							</label>	
						</div>
					</div>
				</div>
				<div class="filter_submit nav_btn" id='filter_submit'>Filter</div>	
				<div class="unset_filter nav_btn" id='unset_filter'>Unset Filter</div>	
			</div>	
			<div class="start_functions">
				<input type="text"  class="add_input" id="start_id" placeholder="Input start ID">
				<div class="nav_btn add_submit" id="start_from_id">Go</div>
			</div>
		</div>
		<div class="tables col_padding">
			<div class="tab_table">
				<div class="folder_icon col_padding">
					<img src="/images/list.png" alt="list icon">
				</div>
				<h4 class="col_padding">Table</h4>
			</div>
			<div class="tab_table">
				<div class="folder_icon col_padding">
					<img src="/images/list.png" alt="list icon">
				</div>
				<h4 class="col_padding">Table</h4>
			</div>
			<div class="tab_table">
				<div class="folder_icon col_padding">
					<img src="/images/list.png" alt="list icon">
				</div>
				<h4 class="col_padding">Table</h4>
			</div>
		</div>
		<div class="button_group col_padding">
			<div class="add_remove nav_btn">
				<div class="col_padding toClick">
					Add/Remove
				</div>
				<div class="db_functions">
					<div class="col_padding nav_btn" id="mark_all">Mark all</div>
					<div class="col_padding nav_btn" id="delete">Delete Marked</div>
					<div class="col_padding nav_btn" id="add">Add row</div>
					<div class="col_padding nav_btn" id="save">Save Changes</div>	
				</div>
			</div>
					
			<div class="nav_btn manipulation">
				<div class="col_padding toClick">
					Manipulation
				</div>
				<div class="db_functions">
					<div class="col_padding nav_btn" id="admin_pause">Pause</div>
					<div class="col_padding nav_btn" id="start">Resume</div>
					<div class="col_padding nav_btn" id="startFrom" title="Mark one row, to start from it.">Start from:</div>
				</div>
			</div>
					
					
			<div class="nav_btn filters">
				<div class="col_padding toClick">
					Filters
				</div>
				<div class="db_functions">
					<div class="col_padding nav_btn filter_btn" id="sort">Sort by Rank</div>
					<div class="col_padding nav_btn filter_btn" id="sortID">Sort by ID</div>
					<div class="col_padding nav_btn filter_btn" id="filter">Filter by:</div>
				</div>
			</div>	
			
			<div class="col_padding nav_btn" id="print">Print</div>
		</div> 
	</div>
	
	<div class="table_block" id="DivToPrint">
		<div class="header">
			<img src="/images/logo1.jfif" alt="">
			<p>The First International Tournament in Acrobatic Gymnastics “GURGENIDZE ACRO CUP” 10-14 August 2019 Tbilisi.   Georgia</p>
			<img src="/images/logo2.jfif" alt="">
		</div>
		<hr>
		<h1>TABLE 1</h1>
		<h3 id="filter_title">Category Man pair Qualifying round results</h3>
		<div class="database">
		  <div class="thead">
			<div class="trh">
			  <div></div>
			  <div class="col_double_padding"></div>
			  <div class="td line_max_3" data-value="id">#</div>
			  <div class="td line_max_3" data-value="Participant">Participant(s)</div>
			  <div class="td line_max_3" data-value="Natioanl_federation">National Federation</div>
			  <div class="td line_max_3" data-value="Event">Event</div>
			  <div class="td line_max_3" data-value="Diff">Diff</div>
			  <div class="td line_max_3" data-value="A">A</div>
			  <div class="td line_max_3" data-value="E">E</div>
			  <div class="td line_max_3" data-value="P">P</div>
			  <div class="td line_max_3" data-value="Score">Score</div>
			  <div class="td line_max_3" data-value="Total">Total</div>
			</div>
		  </div>
		  <div class="tbody" id="admin_data"></div>
		</div>
	</div>
</div>