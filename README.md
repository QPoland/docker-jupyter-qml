# docker-jupyter-qiskit

## setup 

```{bash}
git clone https://github.com/QPoland/docker-jupyter-qml.git

cd docker-jupyter-qml 

docker build -t quantum .
```
## run 

```{bash}
docker run -d -p 8888:8888  quantum
```
Go to Web browser 

http://localhost:8888

## stop 

```{bash}
docker ps 

<get id from quantum run and copy it>

docker stop id 

# remove
docker -rm -f quantum
```

