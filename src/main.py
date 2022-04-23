import webview

def test():
  print(webview.screens)

url = "https://web.whatsapp.com/"
window = webview.create_window('Whatsapp', url)