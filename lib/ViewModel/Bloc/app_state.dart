part of 'Auth/login_cubit.dart';

@immutable
abstract class AppState {}

class LoginInitial extends AppState {}
class LoginSuccess extends AppState {}
class LoginFail extends AppState {}

class SignUpInitial extends AppState {}
class SignUpSuccess extends AppState {}
class SignUpFail extends AppState {}

class GenderChoose extends AppState {}
class UniversityChoose extends AppState {}
class GradeChoose extends AppState {}

class SectionsInitial extends AppState {}
class SectionDone extends AppState {}

class LecturesInitial extends AppState {}
class LectureDone extends AppState {}

class ExamsInitial extends AppState {}
class ExamDone extends AppState {}

class SettingsInitial extends AppState {}

class OurPartnersInitial extends AppState {}

class SupportInitial extends AppState {}

class NewsInitial extends AppState {}

class HomeInitial extends AppState {}
class ChangeSelectInitial extends AppState {}

class NotesInitial extends AppState {}

class EventsInitial extends AppState {}

class TermsConditionsInitial extends AppState {}
class TermsConditionDone extends AppState {}

