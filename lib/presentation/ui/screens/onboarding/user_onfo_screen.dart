import 'package:clot_store/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String selectedGender = 'Men';
  String selectedAgeRange = 'Age Range';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text(
              'Tell us About yourself',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text('Who do you shop for?',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: _buildSelectButton(
                      context, 'Men', selectedGender == 'Men'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildSelectButton(
                      context, 'Women', selectedGender == 'Women'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Text('How Old are you?',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            _buildDropdownButton(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Finish'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectButton(
      BuildContext context, String text, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = text; // Update selected gender
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.themeColor // Purple color for selected
              : const Color(0xFFF4F4F4), // Gray color for unselected
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedAgeRange,
          items: const [
            DropdownMenuItem(
              value: 'Age Range',
              child: Text('Age Range'),
            ),
            DropdownMenuItem(
              value: '18-25',
              child: Text('18-25'),
            ),
            DropdownMenuItem(
              value: '26-35',
              child: Text('26-35'),
            ),
            DropdownMenuItem(
              value: '36-45',
              child: Text('36-45'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              selectedAgeRange = value!; // Update selected age range
            });
          },
          icon: const Icon(Icons.keyboard_arrow_down),
        ),
      ),
    );
  }
}
