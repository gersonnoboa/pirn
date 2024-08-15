import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pirn/models/word_result.dart';
import 'package:pirn/screens/word_screen.dart';

class SearchScreen extends StatefulWidget {
  final String title;

  const SearchScreen({super.key, required this.title});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _titleController = TextEditingController();
  var _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
  }

  Future<http.Response> fetchWordResult(String word) {
    return http.get(Uri.parse('https://api.sonapi.ee/v2/$word'));
  }

  void _onSearchPressed(BuildContext context) async {
    String word = _titleController.text;

    if (word.isEmpty) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    var response = await fetchWordResult(word);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final wordResult = WordResult.fromJson(json);

    if (!context.mounted) return;

    final dialog = AlertDialog(
      title: const Text('Error'),
      content: const Text("The word you are searching for does not exist."),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    // Word doesn't have a definition
    if (wordResult.searchResult.isEmpty) {
      showDialog(context: context, builder: (context) => dialog);
    } else {
      _openWordScreen(context, wordResult);
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _openWordScreen(BuildContext context, WordResult wordResult) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WordScreen(wordResult: wordResult),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  label: Text('Your word'),
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                controller: _titleController,
              ),
              const SizedBox(height: 16.0),
              OutlinedButton(
                onPressed: () {
                  _onSearchPressed(context);
                },
                child: _isLoading
                    ? Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Search"),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                valueColor:
                                    const AlwaysStoppedAnimation(Colors.white),
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                strokeWidth: 3,
                              ),
                            )
                          ],
                        ),
                      )
                    : const Text("Search"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
