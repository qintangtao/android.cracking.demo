.class public Lcom/market2345/util/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field private static final BAIDUSHORTURLPAGE:Ljava/lang/String; = "http://dwz.cn/create.php"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeURLToShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "longURL"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v11, "http://dwz.cn/create.php"

    invoke-direct {v2, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "getUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 36
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v11, "POST"

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .local v5, "out":Ljava/io/PrintWriter;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 41
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 42
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 45
    .local v8, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "lines":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "getUrl":Ljava/net/URL;
    .end local v3    # "lines":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v10, 0x0

    :goto_1
    return-object v10

    .line 49
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "getUrl":Ljava/net/URL;
    .restart local v3    # "lines":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 50
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 52
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 53
    .local v4, "obj":Lcom/google/gson/JsonObject;
    const-string v11, "status"

    invoke-virtual {v4, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    .line 54
    .local v9, "status":I
    if-nez v9, :cond_0

    .line 56
    const-string v11, "tinyurl"

    invoke-virtual {v4, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "tinyurl":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206\u4eab\u5e94\u7528:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v1, "\u5206\u4eab\u5230"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
