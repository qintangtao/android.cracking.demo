package com.hsg.sdk.common.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

public class XmlParser
{
  private static DocumentBuilder sDocBuilder = null;
  private static XPath sxPath = null;

  static
  {
    try
    {
      sDocBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
      sxPath = XPathFactory.newInstance().newXPath();
      return;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      localParserConfigurationException.printStackTrace();
    }
  }

  public static Document getDocument(File paramFile)
  {
    try
    {
      Document localDocument = sDocBuilder.parse(paramFile);
      return localDocument;
    }
    catch (SAXException localSAXException)
    {
      localSAXException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static Document getDocument(InputStream paramInputStream)
  {
    try
    {
      Document localDocument = sDocBuilder.parse(paramInputStream);
      return localDocument;
    }
    catch (SAXException localSAXException)
    {
      localSAXException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static Document getDocument(String paramString)
  {
    try
    {
      Document localDocument = sDocBuilder.parse(new ByteArrayInputStream(paramString.getBytes()));
      return localDocument;
    }
    catch (SAXException localSAXException)
    {
      localSAXException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static Object xPathParser(String paramString, Object paramObject, QName paramQName)
  {
    try
    {
      Object localObject = sxPath.evaluate(paramString, paramObject, paramQName);
      return localObject;
    }
    catch (XPathExpressionException localXPathExpressionException)
    {
      localXPathExpressionException.printStackTrace();
    }
    return null;
  }

  public static String xPathParser(String paramString, Object paramObject)
  {
    try
    {
      String str = sxPath.evaluate(paramString, paramObject);
      return str;
    }
    catch (XPathExpressionException localXPathExpressionException)
    {
      localXPathExpressionException.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.XmlParser
 * JD-Core Version:    0.6.2
 */