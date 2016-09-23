package com.android.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XmlUtils
{
  public static String getAttribute(Object paramObject, String paramString)
  {
    String str = "";
    if ((paramObject != null) && ((paramObject instanceof Node)))
    {
      if (((Node)paramObject).getNodeType() != 1)
        break label40;
      str = ((Element)paramObject).getAttribute(paramString);
    }
    label40: NamedNodeMap localNamedNodeMap;
    do
    {
      return str;
      localNamedNodeMap = ((Node)paramObject).getAttributes();
    }
    while ((localNamedNodeMap.getLength() <= 0) || (localNamedNodeMap == null));
    return localNamedNodeMap.getNamedItem(paramString).getNodeValue();
  }

  public static void getLeafNodeList(Node paramNode, List<Node> paramList)
  {
    if (paramNode.getChildNodes().getLength() > 0)
      for (int i = 0; i < paramNode.getChildNodes().getLength(); i++)
        getLeafNodeList(paramNode.getChildNodes().item(i), paramList);
    paramList.add(paramNode);
  }

  public static Node getMatchNode(Node paramNode, String paramString)
  {
    try
    {
      Node localNode = parseForNode(parseForDoc(nodeToString(paramNode), "utf-8"), paramString);
      return localNode;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static List<Node> getMatchNodeList(Node paramNode, String paramString)
  {
    try
    {
      List localList = parseForNodeList(parseForDoc(nodeToString(paramNode), "utf-8"), paramString);
      return localList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static String nodeToString(Node paramNode)
    throws TransformerException, UnsupportedEncodingException
  {
    return nodeToString(paramNode, "utf-8");
  }

  public static String nodeToString(Node paramNode, String paramString)
    throws TransformerException, UnsupportedEncodingException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    writeXml(localByteArrayOutputStream, paramNode, paramString);
    return localByteArrayOutputStream.toString(paramString);
  }

  private static Object parseByXpath(Object paramObject, String paramString, QName paramQName)
    throws NullPointerException, RuntimeException, XPathExpressionException
  {
    return XPathFactory.newInstance().newXPath().evaluate(paramString, paramObject, paramQName);
  }

  public static Boolean parseForBoolean(Object paramObject, String paramString)
    throws NullPointerException, RuntimeException, XPathExpressionException
  {
    return (Boolean)parseByXpath(paramObject, paramString, XPathConstants.BOOLEAN);
  }

  public static Document parseForDoc(InputStream paramInputStream)
    throws SAXException, IOException, ParserConfigurationException, IllegalArgumentException
  {
    try
    {
      Document localDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(paramInputStream);
      return localDocument;
    }
    finally
    {
      paramInputStream.close();
    }
  }

  public static Document parseForDoc(String paramString)
    throws SAXException, IOException, SecurityException, NullPointerException, ParserConfigurationException
  {
    return parseForDoc(new FileInputStream(paramString));
  }

  public static Document parseForDoc(String paramString1, String paramString2)
    throws SAXException, IOException, ParserConfigurationException
  {
    if (paramString1 == null)
      paramString1 = "";
    return parseForDoc(new ByteArrayInputStream(paramString1.getBytes(paramString2)));
  }

  public static Node parseForNode(Object paramObject, String paramString)
    throws NullPointerException, RuntimeException, XPathExpressionException
  {
    return (Node)parseByXpath(paramObject, paramString, XPathConstants.NODE);
  }

  public static List<Node> parseForNodeList(Object paramObject, String paramString)
    throws NullPointerException, RuntimeException, XPathExpressionException
  {
    ArrayList localArrayList = new ArrayList();
    NodeList localNodeList = (NodeList)parseByXpath(paramObject, paramString, XPathConstants.NODESET);
    if (localNodeList != null)
      for (int i = 0; i < localNodeList.getLength(); i++)
        localArrayList.add(localNodeList.item(i));
    return localArrayList;
  }

  public static String parseForString(Object paramObject, String paramString)
    throws NullPointerException, RuntimeException, XPathExpressionException
  {
    return (String)parseByXpath(paramObject, paramString, XPathConstants.STRING);
  }

  public static void replaceNode(Node paramNode1, Node paramNode2)
  {
    if ((paramNode1 != null) && (paramNode2 != null))
      paramNode1.getParentNode().replaceChild(paramNode2, paramNode1);
  }

  public static void saveXml(String paramString1, Node paramNode, String paramString2)
    throws FileNotFoundException, TransformerException
  {
    writeXml(new FileOutputStream(paramString1), paramNode, paramString2);
  }

  private static void writeXml(OutputStream paramOutputStream, Node paramNode, String paramString)
    throws TransformerException
  {
    Transformer localTransformer = TransformerFactory.newInstance().newTransformer();
    localTransformer.setOutputProperty("indent", "yes");
    localTransformer.setOutputProperty("encoding", paramString);
    DOMSource localDOMSource = new DOMSource();
    localDOMSource.setNode(paramNode);
    StreamResult localStreamResult = new StreamResult();
    localStreamResult.setOutputStream(paramOutputStream);
    localTransformer.transform(localDOMSource, localStreamResult);
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.XmlUtils
 * JD-Core Version:    0.6.2
 */