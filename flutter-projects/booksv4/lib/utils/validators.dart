// ignore_for_file: curly_braces_in_flow_control_structures
typedef ValidatorFunction = String? Function(String? value);

mixin Validators {
   isRequired({String errorMessage = 'Required'}) {
    String? f(String value) {
      if (value.isEmpty)
        return errorMessage;
      else
        return null;
    }
    return f;
  }

  isEmail({String errorMessage = 'Invalid Email'}) {
    String? f (String value) {
      final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

      if (!emailRegExp.hasMatch(value))
        return errorMessage;
      else
        return null;
    }
    return f;
  }

  isInt({String errorMessage='Invalid Number'}){
    String? f (String value){
      if(int.tryParse(value)==null)
        return errorMessage;
      else
        return null;
    }
    return f;
  }

   isNumber({String errorMessage='Invalid Number'}){
    String? f (String value){
      if(double.tryParse(value)==null)
        return errorMessage;
      else
        return null;
    }
    return f;
  }

  isInInclusiveRange(double min, double max,{String? errorMessage}){
    String? f (String value){
      var x=double.tryParse(value);
      if(x==null)
        return errorMessage??'Invalid Number';
      else if(x<min || x>max)
        return errorMessage?? 'Value must be in range ($min-$max)';
      else
        return null;
    }
    return f;
  }

  stringLength(int min,int max, {String? errorMessage}){
    String? f (value){
      if(value.length < min || value.length>max)
        return errorMessage?? 'Length must be $min - $max chars';
      else
        return null;
    }
    return f;
  }

  ValidatorFunction validate(List<Function> validators){
      String? f(String? value){
        for(var validator in validators){
          var result=validator(value);
          if(result!=null)
            return result;
        }
        return null;
    }
    return f;
  }
}
