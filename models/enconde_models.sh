#!/bin/bash

# Create the header file with the C array declaration
echo "const unsigned char model[] = {" > ./baseline_model.h

# Append the hex dump of the model.tflite file as a C array
cat ./baseline_model.tflite | xxd -i >> ./baseline_model.h

# Append the closing brace for the C array
echo "};" >> ./baseline_model.h

# Optional: print a success message
echo "Header file created at ./baseline_model.h"

# Create the header file with the C array declaration
echo "const unsigned char model[] = {" > ./optimized_model.h

# Append the hex dump of the model.tflite file as a C array
cat ./optimized_model.tflite | xxd -i >> ./optimized_model.h

# Append the closing brace for the C array
echo "};" >> ./optimized_model.h

# Optional: print a success message
echo "Header file created at ./optimized_model.h"
