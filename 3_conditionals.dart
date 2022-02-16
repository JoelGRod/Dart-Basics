void main() {
  bool is_active = true;

  if(!is_active) {
    print('is active');
  } else {
    print('is not active');
  }

  bool? can_be_null = null;
  
  if(can_be_null == null) {
    print('is null');
  } else {
    print('is not null');
  }

}