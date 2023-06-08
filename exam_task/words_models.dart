// void main(){
//   final words = Words("hello");
// }
//
// class Words {
//   String _word;
//
//
//   Words(this._word);
//
//   void reverseVowels(String text){
//   }
//
//   factory Words.word(){
//     return Words("hello");
//   }
//
//   @override
//   noSuchMethod(Invocation invocation) {
//     return super.noSuchMethod(invocation);
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       other is Words &&
//           _word == other._word;
//
//   @override
//   int get hashCode =>_word.hashCode;
//
//   @override
//   String toString() {
//     return 'Words{_word: $_word}';
//   }
//
// }