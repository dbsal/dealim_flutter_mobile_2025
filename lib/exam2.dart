void main() {
  try {
    var index = 0;
    index = int.parse('1');
    print('Try');
  }catch(e){
    print('Catch');
  }finally{
    print('finally');
  }
}