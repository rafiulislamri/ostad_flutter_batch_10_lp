void main() {
  final students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  final averages = <String, double>{};

  for (var i = 0; i < students.length; i++) {
    final student = students[i];
    final name = student["name"] as String;
    final scores = student["scores"] as List<int>;

    final average = scores.reduce((a, b) => a + b) / scores.length;

    averages[name] = double.parse(average.toStringAsFixed(2));
  }

  final sortedAverages = Map.fromEntries(
    averages.entries.toList()..sort((a, b) => b.value.compareTo(a.value)),
  );

  print(sortedAverages);
}
