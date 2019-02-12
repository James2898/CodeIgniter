<?php 
	$edit_data = $this->db->get_where('book' , array('book_id' => $param2))->result_array();
	foreach ($edit_data as $row):
?>

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>
					<?php echo get_phrase('add_book');?>
            	</div>
            </div>
			<div class="panel-body">
				
                <?php echo form_open(base_url() . 'index.php?admin/book/edit/' . $row['book_id'] , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
                    
					<div class="form-group">
						<label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('name');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name" data-validate="required" data-message-required="<?php echo get_phrase('value_required');?>"
                            	value="<?php echo $row['name'];?>">
						</div>
					</div>
                    
					<div class="form-group">
						<label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('description');?></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="description" value="<?php echo $row['description'];?>">
						</div>
					</div>

					<div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('author');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="author" value="<?php echo $row['author'];?>">
						</div>
					</div>

					<div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('class_id');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="class_id" value="<?php echo $row['class_id'];?>">
						</div>
					</div>
					
					<div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('status');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="status" value="<?php echo $row['status'];?>">
						</div>
					</div>
					
					<div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('price');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="price" value="<?php echo $row['price'];?>">
							<input type="hidden" name="qty" value="<?php echo ($row['price'])?>">
						</div>
					</div>
					<div class="form-group">
						<label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('quantity');?></label>
                        
						<div class="col-sm-5">
							<input type="text" class="form-control" name="qty" value="<?php echo $row['qty'];?>">
						</div>
					</div>
                    
                    <div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
							<button type="submit" class="btn btn-default"><?php echo get_phrase('update');?></button>
						</div>
					</div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>
</div>
<?php endforeach;?>