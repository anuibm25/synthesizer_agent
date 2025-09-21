# Use AWS Lambda Python 3.11 base image
FROM public.ecr.aws/lambda/python:3.11

# Copy requirements file
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY synthesizer.py ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler
CMD ["synthesizer.synthesize_911_call"]