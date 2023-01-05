import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart total.dart <inputFile.csv>');
  }

  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();

  final totalDurationTag = <String, double>{};

  lines.removeAt(0);

  var allTime = 0.0;
  for (var line in lines) {
    final value = line.split(',');

    final durationStr = value[3].replaceAll('"', '');
    final duration = double.parse(durationStr);

    final tag = value[5].replaceAll('"', '');

    final previousDuration = totalDurationTag[tag];
    if (previousDuration == null) {
      totalDurationTag[tag] = duration;
    } else {
      totalDurationTag[tag] = previousDuration + duration;
    }
    allTime += duration;
  }
  for (var line in totalDurationTag.entries) {
    final Time = line.value.toStringAsFixed(2);
    final Tag = line.key == '' ? 'Unlocated' : line.key;
    print('${Tag}: ${Time} ');
  }
  print('Total duration for content: ${allTime.toStringAsFixed(2)}');
}



// void main(List<String> args) {
//   if (args.isEmpty) {
//     print('Usage: dart total.dart <inputFile.csv>');
//     exit(1);
//   }

//   final inputFile = args.first;
//   final lines = File(inputFile).readAsLinesSync();
//   final totalDurationByTag = <String, double>{};
//   lines.removeAt(0);
//   var overallDuration = 0.0;
//   for (var line in lines) {
//     final values = line.split(',');
//     final durationStr = values[3].replaceAll('"', '');
//     final duration = double.parse(durationStr);
//     final tag = values[5].replaceAll('""', '');
//     final previousDuration = totalDurationByTag[tag];
//     if (previousDuration == null) {
//       totalDurationByTag[tag] = duration;
//     } else {
//       totalDurationByTag[tag] = previousDuration + duration;
//     }
//     overallDuration += duration;
//   }
//   for (var entry in totalDurationByTag.entries) {
//     final resultOfDuration = entry.value.toStringAsFixed(2);
//     final resultOfTag = entry.key == '' ? 'Unlocated' : entry.key;
//     print("${resultOfTag}: ${resultOfDuration}h");
//   }
//   print('Overall Duration: ${overallDuration.toStringAsFixed(2)}');
// }
