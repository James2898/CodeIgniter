<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>
					<?php echo get_phrase('Add Borrower');?>
            	</div>
            </div>
			<div class="panel-body">
				
                <?php echo form_open(base_url() . 'index.php?admin/borrowers/create/' , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
                    <div class="form-group">
                    	<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('Student');?></label>
					 	<div class="col-sm-5">
							<select name="student_id" class="form-control select2" data-validate="required" data-message-required="<?php echo get_phrase('value_required');?>">
                              <option value=""><?php echo get_phrase('select');?></option>
                              <?php 
									$student = $this->db->get('student')->result_array();
									foreach($student as $row3):
										?>
                                		<option value="<?php echo $row3['student_id'];?>"
                                        	<?php if($row['student_id'] == $row3['student_id'])echo 'selected';?>>
													<?php echo $row3['name'];?>
                                         </option>
	                                <?php
									endforeach;
								  ?>
                          </select>
						</div> 
                    </div>
                    <div class="form-group">
                    	<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('Book');?></label>
					 	<div class="col-sm-5">
							<select name="book_id" class="form-control select2" data-validate="required" data-message-required="<?php echo get_phrase('value_required');?>">
                              <option value=""><?php echo get_phrase('select');?></option>
                              <?php 
									$book = $this->db->get('book')->result_array();
									foreach($book as $row3):
										if($row3['qty'] > 0){
										?>
                                		<option value="<?php echo $row3['book_id'];?>"
                                        	<?php if($row['book_id'] == $row3['book_id'])echo 'selected';?>>
													<?php echo $row3['name'];?>
                                         </option>
	                        	<?php
	                        		}
									endforeach;
								  	?>

                          </select>
						</div> 
                    </div>
                    <div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('Date');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control datepicker" name="date" value="" data-start-view="2">
						</div> 
					</div>
                    <div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
							<input type="hidden" name="status" value="borrowed">
							<button type="submit" class="btn btn-default"><?php echo get_phrase('Submit');?></button>
						</div>
					</div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>
</div>