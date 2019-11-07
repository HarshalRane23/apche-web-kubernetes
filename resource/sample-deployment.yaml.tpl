apiVersion: apps/v1
kind: Deployment
metadata:
  name: apache-deployment
  namespace: default
spec:
  selector:
    matchLabels:
      app: apache
  replicas: 1
  template:
    metadata:
      labels:
        app: apache
    spec:
      containers:
      - name: apache
        image: gcr.io/searce-playground/apache-sample:latest   # tells the image to be used
        resources:
          limits:
            memory: "200Mi"
            cpu: "1"
          requests:
            memory: "100Mi"
            cpu: 500m
        ports:
        - containerPort: 80
          protocol: TCP
