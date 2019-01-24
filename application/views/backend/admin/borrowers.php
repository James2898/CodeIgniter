
            <a href="javascript:;" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_borrower_add/');" 
                class="btn btn-primary pull-right">
                  <i class="entypo-plus-circled"></i>
                  <?php echo get_phrase('Add New Borrower');?>
                </a> 
            <!-- SELECT * FROM student, teacher, librarian, books -->
                <br><br>
               <table class="table table-bordered datatable" id="table_export">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th><div><?php echo get_phrase('name');?></div></th>
                            <th><div><?php echo get_phrase('Book borrowed');?></div></th>
                            <th><div><?php echo get_phrase('Date');?></div></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $count = 1; 
                            $this->db->select('student.name as student_name, borrowers.date, book.name as book_name, borrower_id');
                            $this->db->from('borrowers');
                            $this->db->join('student','student.student_id = borrowers.student_id','left');
                            $this->db->join('book','book.book_id = borrowers.book_id','left');
                            
                            $query = $this->db->get()->result_array();
                            foreach($query as $row):?>
                        <tr>
                            <td><?php echo $count++;?></td>
                            <td><?php echo $row['student_name'];?></td>
                            <td><?php echo $row['book_name'];?></td>
                            <td><?php echo $row['date'];?></td>
                            <td>
                                
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                        Action <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
                                        
                                        <!-- teacher EDITING LINK -->
                                        <li>
                                            <a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_borrower_edit/<?php echo $row['borrower_id'];?>');">
                                                <i class="entypo-pencil"></i>
                                                    <?php echo get_phrase('edit');?>
                                                </a>
                                                        </li>
                                        <li class="divider"></li>
                                        
                                        <!-- teacher DELETION LINK -->
                                        <li>
                                            <a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php?admin/borrowers/delete/<?php echo $row['borrower_id'];?>');">
                                                <i class="entypo-trash"></i>
                                                    <?php echo get_phrase('delete');?>
                                                </a>
                                                        </li>
                                    </ul>
                                </div>
                                
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>



