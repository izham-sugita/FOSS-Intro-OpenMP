program hello_openmp
!openmp module in fortran
  use omp_lib

  integer :: nthreads, tid

  !$omp parallel private(tid)
  
  tid = omp_get_thread_num()
  
  print*, 'Hello World from thread ', tid

  !Master thread, thread id = 0
  if( tid == 0) then
     nthreads = omp_get_num_threads()
     print*, 'Number of threads ', nthreads
  end if
  
  !$omp end parallel
  
  
end program hello_openmp
