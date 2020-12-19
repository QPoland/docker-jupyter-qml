# docker-jupyter-qiskit

## setup 

```{bash}
git clone https://github.com/QPoland/docker-jupyter-qiskit.git

cd docker-jupyter-qiskit 

docker build -t quantum .
```
## run 

```{bash}
docker run -d -p 8888:8888 -v <full_path_to_your_folder>:/notebooks quantum
```
Go to Web browser 

http://localhost:8888

## stop 

```{bash}
docker ps 

<get id from quantum and copy it>

docker stop id 

# remove
docker -rm -f quantum
```

