import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Text Buttons', style: Theme.of(context).textTheme.headlineMedium),
            Wrap(
              spacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
                FilledButton(onPressed: () {}, child: const Text('Filled Button')),
                FilledButton.tonal(onPressed: () {}, child: const Text('Tonal Button')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Button')),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
              ],
            ),
            const SizedBox(height: 20),
            Text('Icon + Text Buttons', style: Theme.of(context).textTheme.headlineMedium),
            Wrap(
              spacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Elevated Button'),
                    icon: const Icon(Icons.radio_button_checked)),
                FilledButton.icon(
                    onPressed: () {},
                    label: const Text('Filled Button'),
                    icon: const Icon(Icons.radio_button_checked)),
                FilledButton.tonalIcon(
                    onPressed: () {},
                    label: const Text('Filled Button'),
                    icon: const Icon(Icons.radio_button_checked)),
                OutlinedButton.icon(
                    onPressed: () {},
                    label: const Text('Outlined Button'),
                    icon: const Icon(Icons.radio_button_checked)),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text('Text Button'),
                    icon: const Icon(Icons.radio_button_checked)),
              ],
            ),
            const SizedBox(height: 20),
            Text('Disabled Buttons', style: Theme.of(context).textTheme.headlineMedium),
            const Wrap(
              spacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(onPressed: null, child: Text('Elevated Button')),
                FilledButton(onPressed: null, child: Text('Filled Button')),
                FilledButton.tonal(onPressed: null, child: Text('Tonal Button')),
                OutlinedButton(onPressed: null, child: Text('Outlined Button')),
                TextButton(onPressed: null, child: Text('Text Button')),
              ],
            ),
            const Divider(height: 1),
            const SizedBox(height: 20),
            Text('Floating Action Buttons', style: Theme.of(context).textTheme.headlineMedium),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              FloatingActionButton.small(onPressed: () {}, child: const Icon(Icons.add)),
              FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
              FloatingActionButton.large(onPressed: () {}, child: const Icon(Icons.add)),
              FloatingActionButton.extended(
                  onPressed: () {},
                  label: const Text('Extended'),
                  icon: const Icon(Icons.add)),
            ]),
            const SizedBox(height: 20),
            const Divider(height: 1),
            const SizedBox(height: 20),
            Text('Icon Buttons', style: Theme.of(context).textTheme.headlineMedium),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton.filled(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.settings)),
            ]),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.settings)),
                  IconButton.filled(onPressed: null, icon: Icon(Icons.settings)),
                  IconButton.filledTonal(onPressed: null, icon: Icon(Icons.settings)),
                  IconButton.outlined(onPressed: null, icon: Icon(Icons.settings)),
                ]),
            const Divider(height: 1),
            const SizedBox(height: 20),

            Text('Segmented Buttons', style: Theme.of(context).textTheme.headlineMedium),
            const SingleChoice(),
            const SizedBox(height: 12),
            const MultipleChoice(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Single choice segmented buttons
enum Calendar { week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});
  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.week;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month)),
        ButtonSegment<Calendar>(
            value: Calendar.year,
            label: Text('Year'),
            icon: Icon(Icons.calendar_today)),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
    );
  }
}

// Multi choice segmented buttons
enum Sizes { small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});
  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(value: Sizes.large, label: Text('L')),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
