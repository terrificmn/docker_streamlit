FROM python:3.7

# 없으면 컨테이너안에 만든다
WORKDIR /app

# 최소 필요한 라이브러리 
RUN pip install requests yfinance fbprophet \
    streamlit mysql-connector-python \
    tensorflow  \
    numpy scipy matplotlib \
    ipython scikit-learn==0.23.2 \
    pandas pillow jupyter seaborn joblib

# COPY requirements.txt ./requirements.txt
# RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8501
CMD streamlit run app.py