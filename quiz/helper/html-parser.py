from html.parser import HTMLParser


# def HTMLParsing(stem):
#    class MyHTMLParser(HTMLParser):
#        lsData = list()
#        def handle_data(self, data):
#            self.lsData.append(data)
#    parser = MyHTMLParser()
#    datahtml = stem
#    parser.feed(datahtml)
#    mainStr = " ".join(parser.lsData)
#    otherStr = mainStr.replace('\(','')
#    otherStr = otherStr.replace('\)','')
#    return otherStr

def joinParsed():
    datahtml = 'apaajaterserah'
    akhirnya = '<span id=mathjax>' + datahtml + '</span>'
    print(akhirnya)

joinParsed()
