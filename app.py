import xml.etree.ElementTree as ET

from flask import Flask, render_template
import jinja2

app = Flask(__name__)

@app.route('/')
def display_content(content=None):
    xml_tree = ET.parse('cars.xml').getroot()
    return render_template('template.html', content=xml_tree)