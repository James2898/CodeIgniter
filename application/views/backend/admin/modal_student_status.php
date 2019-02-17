<?php 
$edit_data      =   $this->db->get_where('student' , array('student_id' => $param2) )->result_array();
foreach ( $edit_data as $row):
?>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title" >
                    <i class="entypo-plus-circled"></i>
                    <?php echo get_phrase('edit_status');?>
                </div>
            </div>
            <div class="panel-body">
                
                <?php echo form_open(base_url() . 'index.php?admin/student_status/edit/'.$row['student_id'] , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
    
                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('name');?></label>
                        
                        <div class="col-sm-5">
                            <input type="text" class="form-control"  value="<?php echo $row['fname']." ".$row['mname']." ".$row['lname'] ?>" disabled>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('_status');?></label>
                        
                        <div class="col-sm-5">
                            <select name="status" class="form-control selectboxit">
                                <option value="active" <?php if($row['status'] == 'active')echo 'selected';?>><?php echo get_phrase('active');?></option>
                                <option value="waiting" <?php if($row['status'] == 'waiting')echo 'selected';?>><?php echo get_phrase('waiting');?></option>
                                <option value="dropped" <?php if($row['status'] == 'dropped')echo 'selected';?>><?php echo get_phrase('dropped');?></option>
                                <option value="transferred" <?php if($row['status'] == 'transferred')echo 'selected';?>><?php echo get_phrase('transferred');?></option>
                            </select>
                        </div>
                    </div>
    
                    
                    
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <button type="submit" class="btn btn-info"><?php echo get_phrase('edit_status');?></button>
                        </div>
                    </div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>
</div>
<?php
endforeach;
?>