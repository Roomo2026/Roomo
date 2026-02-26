import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "selectedMode" field.
  String? _selectedMode;
  String get selectedMode => _selectedMode ?? '';
  bool hasSelectedMode() => _selectedMode != null;

  // "step" field.
  int? _step;
  int get step => _step ?? 0;
  bool hasStep() => _step != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "inputImageUrl" field.
  String? _inputImageUrl;
  String get inputImageUrl => _inputImageUrl ?? '';
  bool hasInputImageUrl() => _inputImageUrl != null;

  // "roomType" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _selectedMode = snapshotData['selectedMode'] as String?;
    _step = castToType<int>(snapshotData['step']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _inputImageUrl = snapshotData['inputImageUrl'] as String?;
    _roomType = snapshotData['roomType'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('projects')
          : FirebaseFirestore.instance.collectionGroup('projects');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('projects').doc(id);

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? selectedMode,
  int? step,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? status,
  String? inputImageUrl,
  String? roomType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'selectedMode': selectedMode,
      'step': step,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'status': status,
      'inputImageUrl': inputImageUrl,
      'roomType': roomType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    return e1?.selectedMode == e2?.selectedMode &&
        e1?.step == e2?.step &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.status == e2?.status &&
        e1?.inputImageUrl == e2?.inputImageUrl &&
        e1?.roomType == e2?.roomType;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.selectedMode,
        e?.step,
        e?.createdAt,
        e?.updatedAt,
        e?.status,
        e?.inputImageUrl,
        e?.roomType
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
