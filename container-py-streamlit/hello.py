import streamlit as st
st.title("Hello from docker container!")
with st.form(key='my form'):
    submitted = st.form_submit_button('Click me')
    if submitted:
        st.balloons()