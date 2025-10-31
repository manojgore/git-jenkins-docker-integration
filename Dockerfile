#pull base image
FROM python:3.14-slim
#install streamlit
RUN pip install streamlit
#set working directory
WORKDIR /var
#copy file
COPY etl.py .
#expose streamlit
EXPOSE 8501
# run streamlit app
CMD ["streamlit", "run", "etl.py"]




# #pull base image
# FROM python:3.14-slim
# RUN apt-get update && apt-get install -y --no-install-recommends gcc \
#     && rm -rf /var/lib/apt/lists/*

# RUN pip install --upgrade pip
# RUN pip install streamlit --only-binary=:all:

# WORKDIR /var
# #copy file
# COPY app.py .
# #expose streamlit
# EXPOSE 8501
# # run streamlit app
# CMD ["streamlit", "run", "app.py"]