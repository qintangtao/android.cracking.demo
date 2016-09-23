.class public Lcom/market2345/http/ApiResponseFactory;
.super Ljava/lang/Object;
.source "ApiResponseFactory.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "ApiResponseFactory"

    sput-object v0, Lcom/market2345/http/ApiResponseFactory;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downPartial(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 516
    iget-object v0, p1, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLMUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 426
    :cond_0
    const/16 v28, 0x0

    .line 511
    :cond_1
    :goto_0
    return-object v28

    .line 429
    :cond_2
    const/4 v4, 0x0

    .line 430
    .local v4, "buffer":Ljava/io/BufferedReader;
    const/16 v19, 0x0

    .line 431
    .local v19, "out":Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .line 434
    .local v8, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v27, Ljava/net/URL;

    const-string v28, "http://shouji.2345.com/api/apiForZhushouUpdate.php"

    invoke-direct/range {v27 .. v28}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 435
    .local v27, "url":Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 436
    const-string v28, "POST"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 437
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 438
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 439
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 440
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 441
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 442
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 446
    new-instance v26, Lcom/google/gson/JsonArray;

    invoke-direct/range {v26 .. v26}, Lcom/google/gson/JsonArray;-><init>()V

    .line 447
    .local v26, "sysArray":Lcom/google/gson/JsonArray;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/model/App;

    .line 448
    .local v3, "app":Lcom/market2345/model/App;
    invoke-static/range {p0 .. p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v28

    iget-object v0, v3, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v15

    .line 449
    .local v15, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v15, :cond_3

    .line 450
    new-instance v18, Lcom/google/gson/JsonObject;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/JsonObject;-><init>()V

    .line 451
    .local v18, "object":Lcom/google/gson/JsonObject;
    const-string v28, "pn"

    iget-object v0, v15, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v28, "vc"

    iget v0, v15, Lcom/market2345/model/InstalledApp;->versionCode:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 453
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 495
    .end local v3    # "app":Lcom/market2345/model/App;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v18    # "object":Lcom/google/gson/JsonObject;
    .end local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v27    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 496
    .local v9, "e":Ljava/io/IOException;
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v19, :cond_4

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 502
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 507
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 508
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 511
    .end local v9    # "e":Ljava/io/IOException;
    :cond_6
    :goto_4
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 458
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v27    # "url":Ljava/net/URL;
    :cond_7
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v21

    .line 459
    .local v21, "packages":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 460
    .local v25, "sign":Ljava/lang/String;
    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 462
    new-instance v20, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .local v20, "out":Ljava/io/DataOutputStream;
    :try_start_4
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "uid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 464
    const-string v28, "&"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 465
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "packages="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 466
    const-string v28, "&"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 467
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sign="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 468
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->flush()V

    .line 471
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 472
    .local v13, "in":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 473
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .local v5, "buffer":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 474
    .local v14, "inputLine":Ljava/lang/String;
    :try_start_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v24, "sb":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 476
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 495
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 480
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v22, Lcom/google/gson/JsonParser;

    invoke-direct/range {v22 .. v22}, Lcom/google/gson/JsonParser;-><init>()V

    .line 481
    .local v22, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 482
    .local v17, "jObj":Lcom/google/gson/JsonObject;
    const-string v28, "response"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v23

    .line 483
    .local v23, "response1":Lcom/google/gson/JsonObject;
    const-string v28, "code"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    .line 484
    .local v6, "code":I
    const/16 v28, 0xc8

    move/from16 v0, v28

    if-eq v6, v0, :cond_b

    .line 485
    new-instance v28, Ljava/lang/Exception;

    invoke-direct/range {v28 .. v28}, Ljava/lang/Exception;-><init>()V

    throw v28
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 497
    .end local v6    # "code":I
    .end local v17    # "jObj":Lcom/google/gson/JsonObject;
    .end local v22    # "parser":Lcom/google/gson/JsonParser;
    .end local v23    # "response1":Lcom/google/gson/JsonObject;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .line 498
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v21    # "packages":Ljava/lang/String;
    .end local v25    # "sign":Ljava/lang/String;
    .end local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v27    # "url":Ljava/net/URL;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 501
    if-eqz v19, :cond_9

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 502
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 507
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v8, :cond_6

    .line 508
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    .line 487
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "code":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v17    # "jObj":Lcom/google/gson/JsonObject;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v21    # "packages":Ljava/lang/String;
    .restart local v22    # "parser":Lcom/google/gson/JsonParser;
    .restart local v23    # "response1":Lcom/google/gson/JsonObject;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    .restart local v25    # "sign":Ljava/lang/String;
    .restart local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v27    # "url":Ljava/net/URL;
    :cond_b
    :try_start_8
    const-string v28, "list"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 488
    .local v10, "element":Lcom/google/gson/JsonElement;
    if-eqz v10, :cond_f

    .line 489
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v28

    if-eqz v28, :cond_e

    const/16 v16, 0x0

    .line 490
    .local v16, "itemArray":Lcom/google/gson/JsonArray;
    :goto_8
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 491
    .local v11, "gson":Lcom/google/gson/Gson;
    new-instance v28, Lcom/market2345/http/ApiResponseFactory$2;

    invoke-direct/range {v28 .. v28}, Lcom/market2345/http/ApiResponseFactory$2;-><init>()V

    invoke-virtual/range {v28 .. v28}, Lcom/market2345/http/ApiResponseFactory$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 493
    .local v7, "collectionType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 501
    if-eqz v20, :cond_c

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 502
    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 507
    :cond_d
    :goto_9
    if-eqz v8, :cond_1

    .line 508
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 489
    .end local v7    # "collectionType":Ljava/lang/reflect/Type;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "itemArray":Lcom/google/gson/JsonArray;
    :cond_e
    :try_start_a
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v16

    goto :goto_8

    .line 503
    .restart local v7    # "collectionType":Ljava/lang/reflect/Type;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v16    # "itemArray":Lcom/google/gson/JsonArray;
    :catch_3
    move-exception v9

    .line 504
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 501
    .end local v7    # "collectionType":Ljava/lang/reflect/Type;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "itemArray":Lcom/google/gson/JsonArray;
    :cond_f
    if-eqz v20, :cond_10

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 502
    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 507
    :cond_11
    :goto_a
    if-eqz v8, :cond_15

    .line 508
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 503
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v9

    .line 504
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 503
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "code":I
    .end local v10    # "element":Lcom/google/gson/JsonElement;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v17    # "jObj":Lcom/google/gson/JsonObject;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .end local v21    # "packages":Ljava/lang/String;
    .end local v22    # "parser":Lcom/google/gson/JsonParser;
    .end local v23    # "response1":Lcom/google/gson/JsonObject;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "sign":Ljava/lang/String;
    .end local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v27    # "url":Ljava/net/URL;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v9

    .line 504
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 503
    .local v9, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 504
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 500
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    .line 501
    :goto_b
    if-eqz v19, :cond_12

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 502
    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 507
    :cond_13
    :goto_c
    if-eqz v8, :cond_14

    .line 508
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    throw v28

    .line 503
    :catch_7
    move-exception v9

    .line 504
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 500
    .end local v9    # "e":Ljava/io/IOException;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v21    # "packages":Ljava/lang/String;
    .restart local v25    # "sign":Ljava/lang/String;
    .restart local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v27    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v28

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    goto :goto_b

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v28

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto :goto_b

    .line 497
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v21    # "packages":Ljava/lang/String;
    .end local v25    # "sign":Ljava/lang/String;
    .end local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v27    # "url":Ljava/net/URL;
    :catch_8
    move-exception v9

    goto/16 :goto_6

    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v21    # "packages":Ljava/lang/String;
    .restart local v25    # "sign":Ljava/lang/String;
    .restart local v26    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v27    # "url":Ljava/net/URL;
    :catch_9
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 495
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "code":I
    .restart local v10    # "element":Lcom/google/gson/JsonElement;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v17    # "jObj":Lcom/google/gson/JsonObject;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "parser":Lcom/google/gson/JsonParser;
    .restart local v23    # "response1":Lcom/google/gson/JsonObject;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static getResponse(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Ljava/lang/Object;
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 166
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_2
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_cate.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseCategorys(Ljava/lang/String;)Lcom/market2345/model/PageCategory;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageCategory;
    goto :goto_0

    .line 103
    .local v0, "result":Ljava/lang/Object;
    :cond_3
    const-string v1, "http://zhushou.2345.com/index.php?c=search&d=result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_list.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_recom_soft.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    :cond_4
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppCategorys(Ljava/lang/String;)Lcom/market2345/model/PageApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageApp;
    goto :goto_0

    .line 105
    .local v0, "result":Ljava/lang/Object;
    :cond_5
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_adv.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseBanners(Ljava/lang/String;)Lcom/market2345/model/PageBanner;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_6
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getUpdateNew"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 108
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/market2345/http/ApiResponseFactory;->parseUpgrade(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 109
    .local v0, "result":Ljava/lang/Object;
    :cond_7
    const-string v1, "http://zhushou.2345.com/index.php?c=comment&d=addArd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 110
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 111
    .local v0, "result":Ljava/lang/Object;
    :cond_8
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getListByTag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 112
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppCategorys(Ljava/lang/String;)Lcom/market2345/model/PageApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageApp;
    goto :goto_0

    .line 113
    .local v0, "result":Ljava/lang/Object;
    :cond_9
    const-string v1, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 114
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseComment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :cond_a
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getTopIndex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 116
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppRank(Ljava/lang/String;)Lcom/market2345/model/RankApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/RankApp;
    goto/16 :goto_0

    .line 118
    .local v0, "result":Ljava/lang/Object;
    :cond_b
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getTopList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 119
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppCategorys(Ljava/lang/String;)Lcom/market2345/model/PageApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageApp;
    goto/16 :goto_0

    .line 120
    .local v0, "result":Ljava/lang/Object;
    :cond_c
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_hejilist.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 121
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseUnionList(Ljava/lang/String;)Lcom/market2345/model/PageColacition;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageColacition;
    goto/16 :goto_0

    .line 122
    .local v0, "result":Ljava/lang/Object;
    :cond_d
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_heji.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 123
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseUnionApps(Ljava/lang/String;)Lcom/market2345/model/PageUnionDetail;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageUnionDetail;
    goto/16 :goto_0

    .line 124
    .local v0, "result":Ljava/lang/Object;
    :cond_e
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 125
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppInfo(Ljava/lang/String;)Lcom/market2345/model/SingleAppResp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/SingleAppResp;
    goto/16 :goto_0

    .line 126
    .local v0, "result":Ljava/lang/Object;
    :cond_f
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_jingcai.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 127
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseUnionApps(Ljava/lang/String;)Lcom/market2345/model/PageUnionDetail;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageUnionDetail;
    goto/16 :goto_0

    .line 128
    .local v0, "result":Ljava/lang/Object;
    :cond_10
    const-string v1, "http://zhushou.2345.com/index.php?c=search&d=getHot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 129
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseHotSearch(Ljava/lang/String;)Lcom/market2345/model/HotSearch;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/HotSearch;
    goto/16 :goto_0

    .line 130
    .local v0, "result":Ljava/lang/Object;
    :cond_11
    const-string v1, "http://apps.2345.net/server/mapi/1_3/get_pop.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 131
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseRecommend(Ljava/lang/String;)Lcom/market2345/model/Recommend;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/Recommend;
    goto/16 :goto_0

    .line 132
    .local v0, "result":Ljava/lang/Object;
    :cond_12
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 133
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseFirstPage(Ljava/lang/String;)Lcom/market2345/model/PageApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageApp;
    goto/16 :goto_0

    .line 134
    .local v0, "result":Ljava/lang/Object;
    :cond_13
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETLIST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 135
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/lm/util/ParaserUtils;->parser(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "result":Ljava/util/List;
    goto/16 :goto_0

    .line 136
    .local v0, "result":Ljava/lang/Object;
    :cond_14
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETUSERNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 137
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 138
    .local v0, "result":Ljava/lang/Object;
    :cond_15
    const-string v1, "http://zhushou.2345.com/index.php?c=log&d=searchClick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 139
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 140
    .local v0, "result":Ljava/lang/Object;
    :cond_16
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=addFeedBack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 141
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 142
    .local v0, "result":Ljava/lang/Object;
    :cond_17
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=listFeedBack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 143
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseFeedbackInfos(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :cond_18
    const-string v1, "http://zhushou.2345.com/index.php?c=log&d=searchClick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 145
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 146
    .local v0, "result":Ljava/lang/Object;
    :cond_19
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getHotTag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 147
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseToJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .local v0, "result":Lcom/google/gson/JsonObject;
    goto/16 :goto_0

    .line 148
    .local v0, "result":Ljava/lang/Object;
    :cond_1a
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getDataBeforeSearch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 149
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSuggestionList(Ljava/lang/String;)Lcom/market2345/model/SearchSuggestionList;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/SearchSuggestionList;
    goto/16 :goto_0

    .line 150
    .local v0, "result":Ljava/lang/Object;
    :cond_1b
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getListByCate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 151
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseAppCategorys(Ljava/lang/String;)Lcom/market2345/model/PageApp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/model/PageApp;
    goto/16 :goto_0

    .line 152
    .local v0, "result":Ljava/lang/Object;
    :cond_1c
    const-string v1, "http://update.app.2345.com/index.php"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 153
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/market2345/http/ApiResponseFactory;->parseUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/update/UpdateInfo;

    move-result-object v0

    .local v0, "result":Lcom/market2345/update/UpdateInfo;
    goto/16 :goto_0

    .line 154
    .local v0, "result":Ljava/lang/Object;
    :cond_1d
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getAppClearData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 155
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/market2345/http/ApiResponseFactory;->parseClearDataResp(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/clearStrategy/ClearDataResp;

    move-result-object v0

    .local v0, "result":Lcom/market2345/clearStrategy/ClearDataResp;
    goto/16 :goto_0

    .line 156
    .local v0, "result":Ljava/lang/Object;
    :cond_1e
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=topic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 157
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseTopicResponseInfo(Ljava/lang/String;)Lcom/market2345/topic/model/TopicResponseInfo;

    move-result-object v0

    .local v0, "result":Lcom/market2345/topic/model/TopicResponseInfo;
    goto/16 :goto_0

    .line 158
    .local v0, "result":Ljava/lang/Object;
    :cond_1f
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=addReport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 159
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 160
    .local v0, "result":Ljava/lang/Object;
    :cond_20
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomCate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {p2}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/http/ApiResponseFactory;->parseClassifyTags(Ljava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    move-result-object v0

    .local v0, "result":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    goto/16 :goto_0
.end method

.method private static parseAppCategorys(Ljava/lang/String;)Lcom/market2345/model/PageApp;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "c":Lcom/market2345/model/PageApp;
    if-eqz p0, :cond_0

    .line 564
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 565
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageApp;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageApp;
    check-cast v0, Lcom/market2345/model/PageApp;

    .line 567
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_0
    if-eqz v0, :cond_1

    .line 568
    iget-object v3, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 569
    iget-object v3, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 577
    .end local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_2
    move-object v0, v2

    .line 573
    goto :goto_0
.end method

.method private static parseAppInfo(Ljava/lang/String;)Lcom/market2345/model/SingleAppResp;
    .locals 4
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "c":Lcom/market2345/model/SingleAppResp;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 263
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/model/SingleAppResp;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/SingleAppResp;
    check-cast v0, Lcom/market2345/model/SingleAppResp;

    .line 265
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/SingleAppResp;
    :cond_0
    if-eqz v0, :cond_1

    .line 266
    iget-object v2, v0, Lcom/market2345/model/SingleAppResp;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/market2345/model/SingleAppResp;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v2, :cond_1

    .line 270
    .end local v0    # "c":Lcom/market2345/model/SingleAppResp;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/SingleAppResp;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseAppRank(Ljava/lang/String;)Lcom/market2345/model/RankApp;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "c":Lcom/market2345/model/RankApp;
    if-eqz p0, :cond_0

    .line 583
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 584
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/RankApp;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/RankApp;
    check-cast v0, Lcom/market2345/model/RankApp;

    .line 586
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/RankApp;
    :cond_0
    if-eqz v0, :cond_1

    .line 587
    iget-object v3, v0, Lcom/market2345/model/RankApp;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 588
    iget-object v3, v0, Lcom/market2345/model/RankApp;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/market2345/model/RankApp;->list:Lcom/market2345/model/RankListInfo;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 596
    .end local v0    # "c":Lcom/market2345/model/RankApp;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/RankApp;
    :cond_2
    move-object v0, v2

    .line 592
    goto :goto_0
.end method

.method private static parseBanners(Ljava/lang/String;)Lcom/market2345/model/PageBanner;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "c":Lcom/market2345/model/PageBanner;
    if-eqz p0, :cond_0

    .line 522
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 523
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageBanner;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageBanner;
    check-cast v0, Lcom/market2345/model/PageBanner;

    .line 525
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageBanner;
    :cond_0
    if-eqz v0, :cond_1

    .line 526
    iget-object v3, v0, Lcom/market2345/model/PageBanner;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, v0, Lcom/market2345/model/PageBanner;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 534
    .end local v0    # "c":Lcom/market2345/model/PageBanner;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageBanner;
    :cond_2
    move-object v0, v2

    .line 531
    goto :goto_0
.end method

.method public static parseCategorys(Ljava/lang/String;)Lcom/market2345/model/PageCategory;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "c":Lcom/market2345/model/PageCategory;
    if-eqz p0, :cond_0

    .line 540
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 541
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageCategory;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageCategory;
    check-cast v0, Lcom/market2345/model/PageCategory;

    .line 543
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageCategory;
    :cond_0
    if-eqz v0, :cond_1

    .line 544
    iget-object v3, v0, Lcom/market2345/model/PageCategory;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 545
    iget-object v3, v0, Lcom/market2345/model/PageCategory;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 552
    .end local v0    # "c":Lcom/market2345/model/PageCategory;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageCategory;
    :cond_2
    move-object v0, v2

    .line 549
    goto :goto_0
.end method

.method private static parseClassifyTags(Ljava/lang/String;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "c":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 173
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 175
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    :cond_0
    if-eqz v0, :cond_1

    .line 176
    iget-object v3, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 184
    .end local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    :cond_2
    move-object v0, v2

    .line 181
    goto :goto_0
.end method

.method public static parseClearDataResp(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/clearStrategy/ClearDataResp;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "record"    # Z

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "c":Lcom/market2345/clearStrategy/ClearDataResp;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 647
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/clearStrategy/ClearDataResp;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/clearStrategy/ClearDataResp;
    check-cast v0, Lcom/market2345/clearStrategy/ClearDataResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/clearStrategy/ClearDataResp;
    :cond_0
    :goto_0
    return-object v0

    .line 648
    .end local v0    # "c":Lcom/market2345/clearStrategy/ClearDataResp;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "c":Lcom/market2345/clearStrategy/ClearDataResp;
    goto :goto_0
.end method

.method private static parseComment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "c":Lcom/market2345/model/CommentInfo;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 333
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/model/CommentInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/CommentInfo;
    check-cast v0, Lcom/market2345/model/CommentInfo;

    .line 335
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/CommentInfo;
    :cond_0
    if-eqz v0, :cond_3

    .line 336
    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    if-eqz v2, :cond_1

    .line 344
    .end local v0    # "c":Lcom/market2345/model/CommentInfo;
    :goto_0
    return-object v0

    .line 338
    .restart local v0    # "c":Lcom/market2345/model/CommentInfo;
    :cond_1
    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, v0, Lcom/market2345/model/CommentInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {p0}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseFeedbackInfos(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "c":Lcom/market2345/model/FeedbackInfo;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 603
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/model/FeedbackInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/FeedbackInfo;
    check-cast v0, Lcom/market2345/model/FeedbackInfo;

    .line 605
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/FeedbackInfo;
    :cond_0
    if-eqz v0, :cond_3

    .line 606
    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    if-eqz v2, :cond_1

    .line 614
    .end local v0    # "c":Lcom/market2345/model/FeedbackInfo;
    :goto_0
    return-object v0

    .line 608
    .restart local v0    # "c":Lcom/market2345/model/FeedbackInfo;
    :cond_1
    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :cond_3
    invoke-static {p0}, Lcom/market2345/http/ApiResponseFactory;->parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseFirstPage(Ljava/lang/String;)Lcom/market2345/model/PageApp;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "c":Lcom/market2345/model/PageApp;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 191
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageApp;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageApp;
    check-cast v0, Lcom/market2345/model/PageApp;

    .line 193
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_0
    if-eqz v0, :cond_1

    .line 194
    iget-object v3, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 202
    .end local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageApp;
    :cond_2
    move-object v0, v2

    .line 199
    goto :goto_0
.end method

.method private static parseHotSearch(Ljava/lang/String;)Lcom/market2345/model/HotSearch;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "c":Lcom/market2345/model/HotSearch;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 227
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/HotSearch;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/HotSearch;
    check-cast v0, Lcom/market2345/model/HotSearch;

    .line 229
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/HotSearch;
    :cond_0
    if-eqz v0, :cond_1

    .line 230
    iget-object v3, v0, Lcom/market2345/model/HotSearch;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, v0, Lcom/market2345/model/HotSearch;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 238
    .end local v0    # "c":Lcom/market2345/model/HotSearch;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/HotSearch;
    :cond_2
    move-object v0, v2

    .line 235
    goto :goto_0
.end method

.method private static parseRecommend(Ljava/lang/String;)Lcom/market2345/model/Recommend;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "c":Lcom/market2345/model/Recommend;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 209
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/Recommend;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/Recommend;
    check-cast v0, Lcom/market2345/model/Recommend;

    .line 211
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/Recommend;
    :cond_0
    if-eqz v0, :cond_1

    .line 212
    iget-object v3, v0, Lcom/market2345/model/Recommend;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, v0, Lcom/market2345/model/Recommend;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 220
    .end local v0    # "c":Lcom/market2345/model/Recommend;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/Recommend;
    :cond_2
    move-object v0, v2

    .line 217
    goto :goto_0
.end method

.method private static parseSubmitComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 350
    .local v0, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseSuggestionList(Ljava/lang/String;)Lcom/market2345/model/SearchSuggestionList;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "c":Lcom/market2345/model/SearchSuggestionList;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 245
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/SearchSuggestionList;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/SearchSuggestionList;
    check-cast v0, Lcom/market2345/model/SearchSuggestionList;

    .line 247
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/SearchSuggestionList;
    :cond_0
    if-eqz v0, :cond_1

    .line 248
    iget-object v3, v0, Lcom/market2345/model/SearchSuggestionList;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, v0, Lcom/market2345/model/SearchSuggestionList;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 256
    .end local v0    # "c":Lcom/market2345/model/SearchSuggestionList;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/SearchSuggestionList;
    :cond_2
    move-object v0, v2

    .line 253
    goto :goto_0
.end method

.method private static parseToJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 3
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 325
    .local v0, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 326
    .local v1, "response":Lcom/google/gson/JsonObject;
    return-object v1
.end method

.method public static parseTopicResponseInfo(Ljava/lang/String;)Lcom/market2345/topic/model/TopicResponseInfo;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, "info":Lcom/market2345/topic/model/TopicResponseInfo;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 661
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/topic/model/TopicResponseInfo;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/market2345/topic/model/TopicResponseInfo;
    check-cast v1, Lcom/market2345/topic/model/TopicResponseInfo;

    .line 664
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .restart local v1    # "info":Lcom/market2345/topic/model/TopicResponseInfo;
    :cond_0
    if-eqz v1, :cond_2

    .line 665
    iget-object v2, v1, Lcom/market2345/topic/model/TopicResponseInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, v1, Lcom/market2345/topic/model/TopicResponseInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v2, v2, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/market2345/topic/model/TopicResponseInfo;->list:Lcom/market2345/topic/model/TopicInfo;

    if-nez v2, :cond_2

    .line 667
    :cond_1
    const/4 v1, 0x0

    .line 672
    :cond_2
    return-object v1
.end method

.method private static parseUnionApps(Ljava/lang/String;)Lcom/market2345/model/PageUnionDetail;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "c":Lcom/market2345/model/PageUnionDetail;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 278
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageUnionDetail;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageUnionDetail;
    check-cast v0, Lcom/market2345/model/PageUnionDetail;

    .line 280
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageUnionDetail;
    :cond_0
    if-eqz v0, :cond_1

    .line 281
    iget-object v3, v0, Lcom/market2345/model/PageUnionDetail;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, v0, Lcom/market2345/model/PageUnionDetail;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 289
    .end local v0    # "c":Lcom/market2345/model/PageUnionDetail;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageUnionDetail;
    :cond_2
    move-object v0, v2

    .line 286
    goto :goto_0
.end method

.method private static parseUnionList(Ljava/lang/String;)Lcom/market2345/model/PageColacition;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "c":Lcom/market2345/model/PageColacition;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 309
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/model/PageColacition;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/model/PageColacition;
    check-cast v0, Lcom/market2345/model/PageColacition;

    .line 311
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/model/PageColacition;
    :cond_0
    if-eqz v0, :cond_1

    .line 312
    iget-object v3, v0, Lcom/market2345/model/PageColacition;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, v0, Lcom/market2345/model/PageColacition;->response:Lcom/market2345/model/ResponseInfo;

    iget v3, v3, Lcom/market2345/model/ResponseInfo;->code:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 320
    .end local v0    # "c":Lcom/market2345/model/PageColacition;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/market2345/model/PageColacition;
    :cond_2
    move-object v0, v2

    .line 317
    goto :goto_0
.end method

.method public static parseUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/update/UpdateInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "record"    # Z

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "c":Lcom/market2345/update/UpdateInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 623
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/update/UpdateInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/market2345/update/UpdateInfo;
    check-cast v0, Lcom/market2345/update/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v0    # "c":Lcom/market2345/update/UpdateInfo;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 630
    iget-object v3, v0, Lcom/market2345/update/UpdateInfo;->downurl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/market2345/update/UpdateInfo;->filesize:I

    if-lez v3, :cond_2

    .line 631
    if-eqz p2, :cond_1

    .line 632
    invoke-static {p0, p1}, Lcom/market2345/util/SPUtil;->setLatestUpdateInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 639
    :cond_1
    :goto_1
    return-object v0

    .line 624
    .end local v0    # "c":Lcom/market2345/update/UpdateInfo;
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "c":Lcom/market2345/update/UpdateInfo;
    goto :goto_0

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseUpgrade(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v14, Lcom/google/gson/JsonParser;

    invoke-direct {v14}, Lcom/google/gson/JsonParser;-><init>()V

    .line 363
    .local v14, "parser":Lcom/google/gson/JsonParser;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 364
    .local v17, "result":Lcom/google/gson/JsonObject;
    const-string v20, "response"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v16

    .line 365
    .local v16, "response1":Lcom/google/gson/JsonObject;
    const-string v20, "code"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 366
    .local v4, "code":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v4, v0, :cond_0

    .line 367
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "message"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20

    .line 369
    :cond_0
    const-string v20, "list"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 370
    .local v7, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v11, 0x0

    .line 371
    .local v11, "itemArray":Lcom/google/gson/JsonArray;
    :goto_0
    if-nez v11, :cond_2

    .line 372
    invoke-static/range {p0 .. p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/market2345/datacenter/DataCenterObserver;->setUpdateList(Ljava/util/HashMap;)V

    .line 373
    const-string v6, ""

    .line 419
    :goto_1
    return-object v6

    .line 370
    .end local v11    # "itemArray":Lcom/google/gson/JsonArray;
    :cond_1
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v11

    goto :goto_0

    .line 375
    .restart local v11    # "itemArray":Lcom/google/gson/JsonArray;
    :cond_2
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    if-gtz v20, :cond_3

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/market2345/datacenter/DataCenterObserver;->setUpdateList(Ljava/util/HashMap;)V

    .line 377
    const-string v6, ""

    goto :goto_1

    .line 379
    :cond_3
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 380
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v20, Lcom/market2345/http/ApiResponseFactory$1;

    invoke-direct/range {v20 .. v20}, Lcom/market2345/http/ApiResponseFactory$1;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/market2345/http/ApiResponseFactory$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 382
    .local v5, "collectionType":Ljava/lang/reflect/Type;
    invoke-virtual {v8, v11, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 385
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    invoke-static/range {p0 .. p0}, Lcom/market2345/lm/util/ChannelUtil;->getChannelUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 386
    .local v18, "uid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 387
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v13, "lmApps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 389
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 390
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/App;

    .line 391
    .local v2, "app":Lcom/market2345/model/App;
    iget-object v0, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 392
    .local v10, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v10}, Lcom/market2345/common/util/Utils;->isLmApk(Landroid/content/pm/PackageInfo;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 393
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 394
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 398
    .end local v2    # "app":Lcom/market2345/model/App;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/market2345/http/ApiResponseFactory;->getLMUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 399
    if-eqz v13, :cond_6

    .line 400
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/App;

    .line 401
    .restart local v2    # "app":Lcom/market2345/model/App;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v2, Lcom/market2345/model/App;->isLM:Z

    .line 402
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 410
    .end local v2    # "app":Lcom/market2345/model/App;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    .end local v13    # "lmApps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v19, "update":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/App;

    .line 412
    .restart local v2    # "app":Lcom/market2345/model/App;
    iget-object v0, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 416
    .end local v2    # "app":Lcom/market2345/model/App;
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->setUpdateList(Ljava/util/HashMap;)V

    .line 417
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/market2345/common/util/DBUtils;->addUpdateProduct(Landroid/content/Context;Ljava/util/List;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "countStr":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_1
.end method
