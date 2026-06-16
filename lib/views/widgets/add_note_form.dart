import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import 'custem_butoom.dart';
import 'custem_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ?title ,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Gap(24),
          CustemTextFiled(
            onSaved: (value){
              title=value;
            },
            hint: 'title',

          ),
          Gap(16),
          CustemTextFiled(
            onSaved: (value){
              subTitle=value;
            },
            hint: 'content',
            maxLines: 5,

          ),
          Gap(15),
          CustemButtom(
            onTap: (){
              if(formKey.currentState !.validate()){
                formKey.currentState!.save();

              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
        ],

      ),
    );
  }
}
