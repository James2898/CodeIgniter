				<br><br>
               <table class="table table-bordered datatable" id="table_export">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th><div><?php echo get_phrase('student_id');?></div></th>
                            <th><div><?php echo get_phrase('name');?></div></th>
                            <th><div><?php echo get_phrase('class_id');?></div></th>
                            <th><div><?php echo get_phrase('options');?></div></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $count = 1; 
                            $parents   =   $edit_data = $this->db->get_where('student' , array('parent_id' => $param2))->result_array();
                            foreach($parents as $row):?>
                        <tr>
                            <td><?php echo $count++;?></td>
                            <td><?php echo $row['student_id'];?></td>
                            <td><?php echo $row['name'];?></td>
                            <td><?php echo $row['class_id'];?></td>
                            <td>
                                
                                <div class="btn-group">
                                    <button class="btn btn-default" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_student_profile_parent/<?php echo $row['student_id'];?>');">
                                                <i class="entypo-user"></i>
                                                    <?php echo get_phrase('View profile');?>
                                    </button>
                                </div>
                                
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>