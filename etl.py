import streamlit as st
import pandas as pd
	
data = {
	"Task": ["Extract", "Transform", "Load"],
	"Status": ["Completed", "Processing", "Pending"]
	}
	
df = pd.DataFrame (data)
st.title("Streamlit App")
st.write(df)