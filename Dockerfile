FROM python:3.8-slim

# Updating Ubuntu
RUN apt-get update && yes | apt-get upgrade

# Adding gcc
RUN apt-get install -y git gcc

COPY Test.ipynb /notebooks/Test.ipynb

RUN pip3 install qiskit jupyter matplotlib pylatexenc


# Configuring access to Jupyter
WORKDIR /notebooks/

# RUN git clone .... 

RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

# Jupyter listens port: 8888
EXPOSE 8888

# Run Jupyter notebook as Docker main process - root
#CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/notebooks", "--ip='*'", "--port=8888", "--no-browser"]

# Run Jupyter notebook  without password - not recomended !!!
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--NotebookApp.token=''"]
