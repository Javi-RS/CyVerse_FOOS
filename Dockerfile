
FROM taxfix/opencv-python
ADD . /docker_test/code

WORKDIR /docker_test

COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
CMD python capstone_proj.py

