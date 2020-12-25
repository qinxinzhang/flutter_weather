import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/bloc/my_form_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form Validation'),
      ),
      body: BlocProvider(
        create: (_) => MyFormBloc(),
        child: MyForm(),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyFormBloc, MyFormState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Scaffold.of(context).hideCurrentSnackBar();
          showDialog<void>(
            context: context,
            builder: (_) => SuccessDialog(),
          );
        }
        if (state.status.isSubmissionInProgress) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Submitting...')),
            );
        }
      },
      child: Column(
        children: [EmailInput(), PassWordInput(), SubmitButton()],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyFormBloc, MyFormState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          initialValue: state.email.value,
          decoration: InputDecoration(
            icon: const Icon(Icons.email),
            labelText: 'Email',
            errorText: state.email.invalid ? 'Invalid Email' : null,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            context.read<MyFormBloc>().add(EmailChanged(email: value));
          },
        );
      },
    );
  }
}

class PassWordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyFormBloc, MyFormState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return TextFormField(
            initialValue: state.password.value,
            decoration: InputDecoration(
              icon: const Icon(Icons.info),
              labelText: 'PassWord',
              errorText: state.email.invalid ?  'Invalid Password': null,
            ),
            obscureText: true,
            onChanged: (value) {
              context.read<MyFormBloc>().add(PasswordChanged(password: value));
            },
          );
        });
  }
}

class SuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.info),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Form Submitted Successfully!'),
                )
              ],
            ),
            RaisedButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ));
  }
}
