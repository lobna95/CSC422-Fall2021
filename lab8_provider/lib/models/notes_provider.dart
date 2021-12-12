import 'package:flutter/cupertino.dart';
import 'note.dart';

class NotesProvider extends ChangeNotifier {
  //Notes List
  List<Note> _notes = <Note>[];

  List<Note> get getNotes {
    return _notes;
  }

// function to add data to list of notes
  void addNotes(String title, String descriptions) {
    Note note = new Note(title, descriptions);

    _notes.add(note);

    notifyListeners();
  }

  // function to remove or delete notes by using list index position
  void removeNotes(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }
}
