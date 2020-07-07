FROM pytorch/pytorch:latest
FROM python:3.7
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
ENV PORT 8501
CMD streamlit run app.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN mkdir -p /root/.streamlit
RUN bash -c 'echo -e "\
[general]\n\
email = \"\"\n\
" > /root/.streamlit/credentials.toml'
RUN bash -c 'echo -e "\
[server]\n\
enableCORS = false\n\
" > /root/.streamlit/config.toml'