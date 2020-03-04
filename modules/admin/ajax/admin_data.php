<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/classes/mysql/mysql.php';

$sportsmens = mysql :: select('sportsmens');
$i = 0;
foreach($sportsmens as $sportsmens) {
	$sportsmen_day_2 = mysql :: select_one('sportsmens',
					 						"name = '".$sportsmens['name']."' AND id != ".$sportsmens['id']." AND action != '".$sportsmens['action']."'");
	if($sportsmen_day_2) {
		$A_score_1 = $sportsmens['cas_score_1'] + $sportsmens['cas_score_2'] + $sportsmens['cas_score_3'] + $sportsmens['cas_score_4'];
		$E_score_1 = $sportsmens['cas_score_5'] + $sportsmens['cas_score_6'] + $sportsmens['cas_score_7'] + $sportsmens['cas_score_8'];
		$A_score_2 = $sportsmen_day_2['cas_score_1'] + $sportsmen_day_2['cas_score_2'] + $sportsmen_day_2['cas_score_3'] + $sportsmen_day_2['cas_score_4'];
		$E_score_2 = $sportsmen_day_2['cas_score_5'] + $sportsmen_day_2['cas_score_6'] + $sportsmen_day_2['cas_score_7'] + $sportsmen_day_2['cas_score_8'];
	}
?> 
	<div style="order: <?= $i ?>" class="tr" id="row_<?= $sportsmens['id'] ?>">
		<input id="c<?= $sportsmens['id'] ?>" class="col_padding check" type="checkbox"/>
		<label for="c<?= $sportsmens['id'] ?>">
			<div class="before"></div>
		</label>
		<div class="td line_max_3" data-value="id"><?= $sportsmens['id'] ?></div>
		<div contenteditable="true" class="td line_max_3" data-value="Participant"><?= $sportsmens['name'] ?></div>
		<div  data-country="<?= $sportsmens['country']?>" data-category="<?= $sportsmens['sportsmen_category'] ?>" contenteditable="true" class="td line_max_3 for_filter" data-value="National_federation"><?= $sportsmens['country']." ".$sportsmens['sportsmen_category'] ?></div>
		<div contenteditable="true" class="td line_max_3" data-value="Event" >
			<div data-event="<?= $sportsmens['action']?>" class="col_padding"><?= $sportsmens['action'] ?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $sportsmen_day_2['action']?></div>
		</div>
		<div contenteditable="true" class="td line_max_3" data-value="Diff">
			<div data-event="<?= $sportsmens['action'] ?>" class="col_padding"><?= $sportsmens['difficulty']?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $sportsmen_day_2['difficulty']?></div>
		</div>
		
		<div contenteditable="true" class="td line_max_3" data-value="A">
			<div data-event="<?= $sportsmens['action'] ?>" class="col_padding"><?= $A_score_1 ?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $A_score_2 ?></div>
		</div>
		
		<div contenteditable="true" class="td line_max_3" data-value="E">
			<div data-event="<?= $sportsmens['action'] ?>" class="col_padding"><?= $E_score_1 ?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $E_score_2 ?></div>
		</div>
		
		<div contenteditable="true" class="td line_max_3" data-value="P">
			<div data-event="<?= $sportsmens['action'] ?>" class="col_padding"><?= $sportsmens['penalty'] ?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $sportsmen_day_2['penalty']?></div>
		</div>
		
		<div contenteditable="true" class="td line_max_3" data-value="Score">
			<div data-event="<?= $sportsmens['action'] ?>" class="col_padding"><?= $sportsmens['super_score'] ?></div>
			<div data-event="<?= $sportsmen_day_2['action']?>"><?= $sportsmen_day_2['super_score'] ?></div>
		</div>
		
		<div contenteditable="true" class="td line_max_3" data-value="Total"><?= $sportsmens['super_score'] + $sportsmen_day_2['super_score']?></div>
<!--		 ------------------------------------------------------------------------------------------------>
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_1">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_1'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_1'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_2">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_2'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_2'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_3">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_3'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_3'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_4">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_4'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_4'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_5">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_5'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_5'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_6">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_6'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_6'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_7">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_7'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_7'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="cas_score_8">
			<input data-event="<?= $sportsmens['action'] ?>" type="hidden" value="<?= $sportsmens['cas_score_8'] ?>">
			<input data-event="<?= $sportsmen_day_2['action']?>" type="hidden" value="<?= $sportsmen_day_2['cas_score_8'] ?>">
		</div>
<!--	-------------------------------------------------------------------------------	-->
		<div contenteditable="true" class="none td line_max_3" data-value="return_score">
			<input type="hidden" value="<?= $sportsmens['return_score'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_1">
			<input type="hidden" value="<?= $sportsmens['return_judge_1'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_2">
			<input type="hidden" value="<?= $sportsmens['return_judge_2'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_3">
			<input type="hidden" value="<?= $sportsmens['return_judge_3'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_4">
			<input type="hidden" value="<?= $sportsmens['return_judge_4'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_5">
			<input type="hidden" value="<?= $sportsmens['return_judge_5'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_6">
			<input type="hidden" value="<?= $sportsmens['return_judge_6'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_7">
			<input type="hidden" value="<?= $sportsmens['return_judge_7'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="return_judge_8">
			<input type="hidden" value="<?= $sportsmens['return_judge_8'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="allow_to_show">
			<input type="hidden" value="<?= $sportsmens['allow_to_show'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="final">
			<input type="hidden" value="<?= $sportsmens['final'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="rang">
			<input type="hidden" value="<?= $sportsmens['rang'] ?>">
		</div>
		
		<div contenteditable="true" class="none td line_max_3" data-value="pause">
			<input type="hidden" value="<?= $sportsmens['pause'] ?>">
		</div>
		
		<div class="admin_overlay"></div>

</div>
<?php
	$i++;
}