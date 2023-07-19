from flask import Flask,jsonify,request
import time

app=Flask(__name__)

@app.route('/',methods=['GET'])
def resAfter2Sec():
    if request.args.get('request')=='Hello':
        time.sleep(2)
        return jsonify({'request':'ok'})
    else:
        return jsonify({'request':'notok'})