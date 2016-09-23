.class public Lcom/phonemanager2345/zhushou/CommandHander;
.super Ljava/lang/Object;
.source "CommandHander.java"


# static fields
.field public static final ID_DATA:[B

.field public static final ID_DONE:[B

.field public static final ID_FAIL:[B

.field public static final ID_NAME:[B

.field public static final ID_OKAY:[B

.field public static final ID_PACK:[B

.field public static final ID_RECV:[B

.field public static final ID_SEND:[B

.field public static final ID_STAT:[B

.field public static final ID_TYPE:[B

.field public static final ID_URLID:[B

.field private static final KEEP_SCREEN_OFF:I = 0x0

.field private static final KEEP_SCREEN_ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CommandHander"

.field private static code:I = 0x0

.field private static final distance:J = 0x6a007c4c8d8L

.field static gson:Lcom/google/gson/Gson;

.field private static install:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static installLock:Ljava/lang/Object;

.field private static mediaScanConn:Landroid/media/MediaScannerConnection;

.field static parse:Lcom/google/gson/JsonParser;

.field public static stopSending:Z

.field private static uninsallLock:Ljava/lang/Object;

.field private static uninstall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final wifiConnectInform:Ljava/lang/Object;

.field private static wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 85
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    .line 87
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    .line 91
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_OKAY:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    .line 95
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_STAT:[B

    .line 97
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_RECV:[B

    .line 99
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    .line 101
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    .line 103
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_SEND:[B

    .line 105
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_PACK:[B

    .line 107
    new-array v0, v1, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    .line 109
    new-array v0, v1, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_TYPE:[B

    .line 111
    new-array v0, v1, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->ID_NAME:[B

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->installLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninsallLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    .line 2277
    sput v2, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    return-void

    .line 91
    :array_0
    .array-data 1
        0x4ft
        0x4bt
        0x41t
        0x59t
    .end array-data

    .line 93
    :array_1
    .array-data 1
        0x46t
        0x41t
        0x49t
        0x4ct
    .end array-data

    .line 95
    :array_2
    .array-data 1
        0x53t
        0x54t
        0x41t
        0x54t
    .end array-data

    .line 97
    :array_3
    .array-data 1
        0x52t
        0x45t
        0x43t
        0x56t
    .end array-data

    .line 99
    :array_4
    .array-data 1
        0x44t
        0x41t
        0x54t
        0x41t
    .end array-data

    .line 101
    :array_5
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x45t
    .end array-data

    .line 103
    :array_6
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x44t
    .end array-data

    .line 105
    :array_7
    .array-data 1
        0x50t
        0x41t
        0x43t
        0x4bt
    .end array-data

    .line 107
    :array_8
    .array-data 1
        0x30t
        0x30t
        0x49t
        0x44t
    .end array-data

    .line 109
    :array_9
    .array-data 1
        0x54t
        0x59t
        0x50t
        0x45t
    .end array-data

    .line 111
    :array_a
    .array-data 1
        0x4et
        0x41t
        0x4dt
        0x45t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InstallApkByWifi(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 30
    .param p0, "currCMD"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2560
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2561
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 2562
    .local v6, "cmd":[B
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v8, v0, [B

    .line 2563
    .local v8, "datalength":[B
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2564
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2565
    const/16 v16, 0x0

    .line 2566
    .local v16, "ouy":Ljava/io/FileOutputStream;
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->ID_STAT:[B

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v24

    if-nez v24, :cond_0

    .line 2567
    new-instance v20, Lcom/google/gson/JsonObject;

    invoke-direct/range {v20 .. v20}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2568
    .local v20, "result":Lcom/google/gson/JsonObject;
    const-string v24, "error_code"

    const-string v25, "20001"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2570
    .local v21, "s":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v11, v0

    .line 2571
    .local v11, "nCount":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v10, v0, [B

    .line 2572
    .local v10, "length":[B
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v11, v10, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2573
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 2574
    .local v22, "t":[B
    const/16 v24, 0x20

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2575
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2576
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2577
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2578
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2674
    .end local v10    # "length":[B
    .end local v11    # "nCount":I
    .end local v20    # "result":Lcom/google/gson/JsonObject;
    .end local v21    # "s":Ljava/lang/String;
    .end local v22    # "t":[B
    :goto_0
    return-void

    .line 2581
    :cond_0
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2582
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2583
    const/4 v15, 0x0

    .line 2584
    .local v15, "orignalPath":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2587
    .local v23, "temp":Ljava/io/File;
    :goto_1
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 2588
    if-eqz v16, :cond_1

    .line 2589
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 2673
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2592
    :cond_2
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->ID_NAME:[B

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 2593
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v13

    .line 2594
    .local v13, "nameLength":I
    const-string v24, "nameLength"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    new-array v12, v13, [B

    .line 2596
    .local v12, "nameData":[B
    move-object/from16 v0, p1

    invoke-static {v13, v0, v12}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2597
    new-instance v15, Ljava/lang/String;

    .end local v15    # "orignalPath":Ljava/lang/String;
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([B)V

    .line 2598
    .restart local v15    # "orignalPath":Ljava/lang/String;
    const-string v24, "orignalPath"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    const/16 v19, 0x1

    .line 2601
    .local v19, "rename":Z
    const/16 v24, 0x31

    move/from16 v0, p0

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 2602
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getWifiReceivedApkVer()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2603
    const/16 v19, 0x0

    .line 2605
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".apk"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->createSaveFile(Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object v23

    .line 2606
    if-nez v23, :cond_4

    .line 2607
    new-instance v24, Ljava/io/IOException;

    const-string v25, "sdcard not exit"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 2609
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_8

    .line 2610
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z

    .line 2618
    :cond_5
    if-eqz v16, :cond_6

    .line 2620
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    :cond_6
    :goto_2
    new-instance v16, Ljava/io/FileOutputStream;

    .end local v16    # "ouy":Ljava/io/FileOutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2626
    .restart local v16    # "ouy":Ljava/io/FileOutputStream;
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 2627
    .local v7, "crc":[B
    const/16 v24, 0x8

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2629
    .end local v7    # "crc":[B
    .end local v12    # "nameData":[B
    .end local v13    # "nameLength":I
    .end local v19    # "rename":Z
    :cond_7
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2630
    if-eqz v16, :cond_b

    .line 2631
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v10

    .line 2632
    .local v10, "length":I
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableExternalMemorySize()J

    move-result-wide v4

    .line 2633
    .local v4, "availabeSize":J
    const v24, 0x19000

    add-int v24, v24, v10

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v4, v24

    if-gez v24, :cond_9

    .line 2634
    new-instance v24, Ljava/io/IOException;

    const-string v25, "sdcard full"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 2611
    .end local v4    # "availabeSize":J
    .end local v10    # "length":I
    .restart local v12    # "nameData":[B
    .restart local v13    # "nameLength":I
    .restart local v19    # "rename":Z
    :cond_8
    const/16 v24, 0x31

    move/from16 v0, p0

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 2612
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/market2345/MarketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 2613
    .local v17, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_5

    const-string v24, "com.market2345"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 2614
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/market2345/common/util/Utils;->installApk(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2621
    .end local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 2622
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2636
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "nameData":[B
    .end local v13    # "nameLength":I
    .end local v19    # "rename":Z
    .restart local v4    # "availabeSize":J
    .restart local v10    # "length":I
    :cond_9
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p0

    move-object/from16 v3, p3

    invoke-static {v0, v1, v10, v2, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->readProperData(Ljava/io/FileOutputStream;Ljava/io/BufferedInputStream;IILandroid/content/Context;)V

    .line 2637
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 2638
    sget-object v25, Lcom/phonemanager2345/zhushou/CommandHander;->installLock:Ljava/lang/Object;

    monitor-enter v25

    .line 2640
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const-string v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/market2345/common/util/Utils;->installApk(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 2641
    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v14

    .line 2642
    .local v14, "notification":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v18

    .line 2643
    .local v18, "r":Landroid/media/Ringtone;
    invoke-virtual/range {v18 .. v18}, Landroid/media/Ringtone;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2644
    const/16 v24, 0x31

    move/from16 v0, p0

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 2645
    :try_start_2
    monitor-exit v25

    goto/16 :goto_0

    .line 2667
    .end local v14    # "notification":Landroid/net/Uri;
    .end local v18    # "r":Landroid/media/Ringtone;
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 2647
    :catch_1
    move-exception v9

    .line 2648
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2651
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_4
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->installLock:Ljava/lang/Object;

    const-wide/32 v26, 0xd6d8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2655
    :goto_3
    :try_start_5
    new-instance v20, Lcom/google/gson/JsonObject;

    invoke-direct/range {v20 .. v20}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2656
    .restart local v20    # "result":Lcom/google/gson/JsonObject;
    const-string v24, "packageName"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2658
    const-string v24, "error_code"

    const-string v26, "00001"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const-string v24, "packageName"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    const-string v26, "operation"

    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Number;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2661
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    :goto_4
    const/16 v24, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2667
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2670
    .end local v4    # "availabeSize":J
    .end local v10    # "length":I
    .end local v20    # "result":Lcom/google/gson/JsonObject;
    :cond_b
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2671
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    goto/16 :goto_1

    .line 2652
    .restart local v4    # "availabeSize":J
    .restart local v10    # "length":I
    :catch_2
    move-exception v9

    .line 2653
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 2663
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .restart local v20    # "result":Lcom/google/gson/JsonObject;
    :cond_c
    const-string v24, "error_code"

    const-string v26, "20001"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    const-string v24, "packageName"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 84
    sput p0, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    return p0
.end method

.method static synthetic access$100()Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    return-void
.end method

.method private static checkResult([B[B)Z
    .locals 6
    .param p0, "result"    # [B
    .param p1, "code"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1763
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v4

    aget-byte v3, p1, v4

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v5

    aget-byte v3, p1, v5

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1767
    :cond_1
    return v0
.end method

.method public static cleanupFromPCcommand(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 10
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2819
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2820
    new-array v0, p0, [B

    .line 2822
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2823
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    const-class v8, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonemanager2345/model/IconCollation;

    .line 2825
    .local v1, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v2, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-direct {v2, p3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    .line 2826
    .local v2, "infoPro":Lcom/market2345/clean/shortcut/TaskInfoProvider;
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2827
    .local v3, "result":Lcom/google/gson/JsonObject;
    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getTotalMemory()J

    move-result-wide v4

    .line 2828
    .local v4, "totalM":J
    const-string v6, "totalMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const-string v6, "wdh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc command value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/phonemanager2345/model/IconCollation;->command:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    iget v6, v1, Lcom/phonemanager2345/model/IconCollation;->command:I

    packed-switch v6, :pswitch_data_0

    .line 2869
    :goto_0
    const-string v6, "command"

    iget v7, v1, Lcom/phonemanager2345/model/IconCollation;->command:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2870
    const/16 v6, 0x25

    invoke-static {v3, v6, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2871
    return-void

    .line 2834
    :pswitch_0
    const-string v6, "currentProcessCount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getCurrentProcessCount(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const-string v6, "currentMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2839
    :pswitch_1
    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killBackgroundProcess()V

    .line 2840
    const-string v6, "appKilled"

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getProcessCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2841
    const-string v6, "mobileReleasedMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getProcessSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    const-string v6, "currentMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2846
    :pswitch_2
    const-string v6, "SDReleasedMemory"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2853
    :pswitch_3
    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killBackgroundProcess()V

    .line 2854
    const-string v6, "appKilled"

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getProcessCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2855
    const-string v6, "mobileReleasedMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getProcessSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v6, "currentMemory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v6, "SDReleasedMemory"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    const-string v6, "releasedGarbage"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static copyFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 6
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3305
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3306
    new-array v0, p0, [B

    .line 3307
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3308
    sget-object v3, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-class v5, Lcom/market2345/fileHandle/model/CopyCommandModel;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/fileHandle/model/CopyCommandModel;

    .line 3309
    .local v1, "command":Lcom/market2345/fileHandle/model/CopyCommandModel;
    new-instance v2, Lcom/market2345/fileHandle/FileCopyManager;

    invoke-direct {v2}, Lcom/market2345/fileHandle/FileCopyManager;-><init>()V

    .line 3310
    .local v2, "manager":Lcom/market2345/fileHandle/FileCopyManager;
    new-instance v3, Lcom/phonemanager2345/zhushou/CommandHander$3;

    invoke-direct {v3, p2}, Lcom/phonemanager2345/zhushou/CommandHander$3;-><init>(Ljava/io/BufferedOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/market2345/fileHandle/FileCopyManager;->setScheduleListener(Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;)V

    .line 3324
    invoke-virtual {v2, v1}, Lcom/market2345/fileHandle/FileCopyManager;->doCopy(Lcom/market2345/fileHandle/model/CopyCommandModel;)V

    .line 3326
    return-void
.end method

.method private static createProperName(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1721
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1722
    .local v0, "posi":I
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1723
    .local v1, "position":I
    if-ne v0, v3, :cond_0

    .line 1724
    new-instance v2, Ljava/io/IOException;

    const-string v3, "name invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1726
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1727
    new-instance v2, Ljava/io/IOException;

    const-string v3, "name invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1729
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/phonemanager2345/zhushou/CommandHander;->createSaveFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method private static createSaveFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 1733
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->createSaveFile(Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createSaveFile(Ljava/lang/String;IZ)Ljava/io/File;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "rename"    # Z

    .prologue
    .line 1738
    packed-switch p1, :pswitch_data_0

    .line 1759
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1740
    :pswitch_0
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->PHOTO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1742
    :pswitch_1
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->WALLPAPER:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1744
    :pswitch_2
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->OTHERIMAGE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1746
    :pswitch_3
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->AUDIO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1748
    :pswitch_4
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RING:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1750
    :pswitch_5
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->VIDEO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1752
    :pswitch_6
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->APK:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1754
    :pswitch_7
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RECEIVE_FILE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static decoration()V
    .locals 1

    .prologue
    .line 2677
    const/4 v0, 0x1

    sput-boolean v0, Lcom/phonemanager2345/zhushou/CommandHander;->stopSending:Z

    .line 2678
    return-void
.end method

.method public static delImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 11
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1518
    new-array v1, p0, [B

    .line 1520
    .local v1, "buffer":[B
    invoke-static {p0, p1, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1521
    sget-object v8, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    const-class v10, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonemanager2345/model/IconCollation;

    .line 1522
    .local v2, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1523
    .local v7, "result":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1524
    .local v0, "array":Lcom/google/gson/JsonArray;
    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1525
    new-instance v3, Lcom/market2345/filebrowser/MediaBulkDeleter;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, p3, v8}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1526
    .local v3, "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/IconInfo;

    .line 1529
    .local v5, "info":Lcom/phonemanager2345/model/IconInfo;
    iget v8, v5, Lcom/phonemanager2345/model/IconInfo;->id:I

    int-to-long v8, v8

    iget-object v10, v5, Lcom/phonemanager2345/model/IconInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v10}, Lcom/market2345/filebrowser/MediaBulkDeleter;->delete(JLjava/lang/String;)V

    .line 1530
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1531
    .local v6, "object":Lcom/google/gson/JsonObject;
    const-string v8, "id"

    iget v9, v5, Lcom/phonemanager2345/model/IconInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1532
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 1534
    .end local v5    # "info":Lcom/phonemanager2345/model/IconInfo;
    .end local v6    # "object":Lcom/google/gson/JsonObject;
    :cond_0
    invoke-virtual {v3}, Lcom/market2345/filebrowser/MediaBulkDeleter;->flush()V

    .line 1535
    const-string v8, "idList"

    invoke-virtual {v7, v8, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1536
    const-string v8, "error_code"

    const-string v9, "00001"

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v8, "total_number"

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1538
    const/16 v8, 0xc

    invoke-static {v7, v8, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1545
    .end local v3    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1546
    return-void

    .line 1540
    :cond_1
    const/16 v8, 0xc

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1541
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1542
    sget-object v8, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    invoke-virtual {p2, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1543
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1
.end method

.method public static delMedia(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 11
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2360
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2361
    new-array v1, p0, [B

    .line 2363
    .local v1, "buffer":[B
    invoke-static {p0, p1, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2364
    sget-object v8, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    const-class v10, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonemanager2345/model/IconCollation;

    .line 2365
    .local v2, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2366
    .local v7, "result":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2369
    .local v0, "array":Lcom/google/gson/JsonArray;
    iget v8, v2, Lcom/phonemanager2345/model/IconCollation;->type:I

    if-nez v8, :cond_0

    .line 2370
    new-instance v3, Lcom/market2345/filebrowser/MediaBulkDeleter;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, p3, v8}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2376
    .local v3, "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    :goto_0
    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2377
    iget-object v8, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/IconInfo;

    .line 2380
    .local v5, "info":Lcom/phonemanager2345/model/IconInfo;
    iget v8, v5, Lcom/phonemanager2345/model/IconInfo;->id:I

    int-to-long v8, v8

    iget-object v10, v5, Lcom/phonemanager2345/model/IconInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v10}, Lcom/market2345/filebrowser/MediaBulkDeleter;->delete(JLjava/lang/String;)V

    .line 2381
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2382
    .local v6, "object":Lcom/google/gson/JsonObject;
    const-string v8, "id"

    iget v9, v5, Lcom/phonemanager2345/model/IconInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2383
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 2371
    .end local v3    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Lcom/phonemanager2345/model/IconInfo;
    .end local v6    # "object":Lcom/google/gson/JsonObject;
    :cond_0
    iget v8, v2, Lcom/phonemanager2345/model/IconCollation;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2372
    new-instance v3, Lcom/market2345/filebrowser/MediaBulkDeleter;

    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, p3, v8}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v3    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    goto :goto_0

    .line 2374
    .end local v3    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    :cond_1
    new-instance v3, Lcom/market2345/filebrowser/MediaBulkDeleter;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, p3, v8}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v3    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    goto :goto_0

    .line 2385
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Lcom/market2345/filebrowser/MediaBulkDeleter;->flush()V

    .line 2386
    const-string v8, "idList"

    invoke-virtual {v7, v8, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2387
    const-string v8, "error_code"

    const-string v9, "00001"

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const-string v8, "total_number"

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2389
    const/16 v8, 0x1c

    invoke-static {v7, v8, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2396
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2397
    return-void

    .line 2391
    :cond_3
    const/16 v8, 0x1c

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2392
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2393
    sget-object v8, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    invoke-virtual {p2, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2394
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_2
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 3252
    const/4 v1, 0x1

    .line 3253
    .local v1, "del":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3254
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3255
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 3256
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 3257
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 3258
    .local v5, "subFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3259
    invoke-static {v5}, Lcom/phonemanager2345/zhushou/CommandHander;->deleteDir(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 3257
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3261
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v1, v6

    goto :goto_1

    .line 3266
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "subFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v1, v6

    .line 3268
    :cond_2
    return v1
.end method

.method public static downloadAppToInstall(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 9
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3372
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3373
    new-array v2, p0, [B

    .line 3374
    .local v2, "buffer":[B
    invoke-static {p0, p1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3388
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 3389
    .local v6, "str":Ljava/lang/String;
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/phonemanager2345/model/InstallInWifiCommandModel;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phonemanager2345/model/InstallInWifiCommandModel;

    .line 3390
    .local v3, "command":Lcom/phonemanager2345/model/InstallInWifiCommandModel;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3392
    .local v1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/phonemanager2345/model/InstallInWifiCommandModel;->installList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 3393
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, v3, Lcom/phonemanager2345/model/InstallInWifiCommandModel;->installList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 3394
    iget-object v7, v3, Lcom/phonemanager2345/model/InstallInWifiCommandModel;->installList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/AppFromPc;

    .line 3395
    .local v5, "pcApp":Lcom/phonemanager2345/model/AppFromPc;
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 3396
    .local v0, "app":Lcom/market2345/model/App;
    iget v7, v5, Lcom/phonemanager2345/model/AppFromPc;->softID:I

    iput v7, v0, Lcom/market2345/model/App;->sid:I

    .line 3397
    iget-object v7, v5, Lcom/phonemanager2345/model/AppFromPc;->downloadUrl:Ljava/lang/String;

    iput-object v7, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 3398
    iget-object v7, v5, Lcom/phonemanager2345/model/AppFromPc;->iconUrl:Ljava/lang/String;

    iput-object v7, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 3399
    iget-object v7, v5, Lcom/phonemanager2345/model/AppFromPc;->softName:Ljava/lang/String;

    iput-object v7, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 3400
    iget-object v7, v5, Lcom/phonemanager2345/model/AppFromPc;->packageName:Ljava/lang/String;

    iput-object v7, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 3401
    iget v7, v5, Lcom/phonemanager2345/model/AppFromPc;->versionCode:I

    iput v7, v0, Lcom/market2345/model/App;->versionCode:I

    .line 3402
    iget-object v7, v5, Lcom/phonemanager2345/model/AppFromPc;->fileSize:Ljava/lang/String;

    iput-object v7, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 3403
    const-string v7, "mapi_wifi"

    iput-object v7, v0, Lcom/market2345/model/App;->mPlatform:Ljava/lang/String;

    .line 3404
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3393
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3408
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v4    # "i":I
    .end local v5    # "pcApp":Lcom/phonemanager2345/model/AppFromPc;
    :cond_0
    invoke-static {p3}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/market2345/model/App;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/market2345/model/App;

    invoke-virtual {v8, v7}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 3410
    const-string v7, ""

    const/16 v8, 0x2e

    invoke-static {v7, v8, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 3411
    return-void
.end method

.method private static flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V
    .locals 7
    .param p0, "result"    # Lcom/google/gson/JsonObject;
    .param p1, "command"    # I
    .param p2, "outt"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2751
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2752
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 2753
    .local v1, "nCount":I
    new-array v0, v6, [B

    .line 2754
    .local v0, "lengths":[B
    invoke-static {v1, v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2755
    new-array v3, v6, [B

    .line 2756
    .local v3, "t":[B
    invoke-static {p1, v3, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2757
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2758
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2759
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2760
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2761
    return-void
.end method

.method private static flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V
    .locals 6
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "command"    # I
    .param p2, "outt"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2764
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    .line 2765
    .local v1, "nCount":I
    new-array v0, v5, [B

    .line 2766
    .local v0, "lengths":[B
    invoke-static {v1, v0, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2767
    new-array v2, v5, [B

    .line 2768
    .local v2, "t":[B
    invoke-static {p1, v2, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2769
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2770
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2771
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2772
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2773
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 3242
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3243
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "bucket_display_name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "posi"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 751
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 752
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 753
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length p3, v1

    .line 754
    invoke-virtual {p0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "fnames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 757
    const-string v1, ""

    aput-object v1, p2, v3

    .line 758
    const/4 v0, 0x0

    .line 831
    :goto_0
    return-void

    .line 760
    :cond_0
    array-length v1, v0

    if-ge v1, p3, :cond_1

    .line 761
    const-string v1, ""

    aput-object v1, p2, v3

    .line 762
    const/4 v0, 0x0

    .line 763
    goto :goto_0

    .line 764
    :cond_1
    array-length v1, v0

    if-ne v1, p3, :cond_2

    .line 765
    aget-object v1, v0, p3

    aput-object v1, p2, v3

    .line 766
    aput-object p0, p2, v5

    .line 767
    const/4 v0, 0x0

    goto :goto_0

    .line 769
    :cond_2
    aget-object v1, v0, p3

    const-string v2, "2345\u624b\u673a\u52a9\u624b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 771
    aput-object p0, p2, v5

    goto :goto_0

    .line 773
    :cond_3
    aget-object v1, v0, p3

    aput-object v1, p2, v3

    .line 774
    aput-object p0, p2, v5

    goto :goto_0

    .line 780
    .end local v0    # "fnames":[Ljava/lang/String;
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 781
    .restart local v0    # "fnames":[Ljava/lang/String;
    if-nez v0, :cond_5

    .line 782
    const-string v1, ""

    aput-object v1, p2, v3

    .line 783
    const/4 v0, 0x0

    .line 784
    goto :goto_0

    .line 785
    :cond_5
    array-length v1, v0

    if-ge v1, v4, :cond_6

    .line 786
    const-string v1, ""

    aput-object v1, p2, v3

    .line 787
    const/4 v0, 0x0

    .line 788
    goto :goto_0

    .line 789
    :cond_6
    array-length v1, v0

    if-ne v1, v4, :cond_7

    .line 790
    aget-object v1, v0, v4

    aput-object v1, p2, v3

    .line 791
    aput-object p0, p2, v5

    .line 792
    const/4 v0, 0x0

    goto :goto_0

    .line 794
    :cond_7
    aget-object v1, v0, v4

    const-string v2, "2345\u624b\u673a\u52a9\u624b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 796
    aput-object p0, p2, v5

    goto/16 :goto_0

    .line 798
    :cond_8
    aget-object v1, v0, v4

    aput-object v1, p2, v3

    .line 799
    aput-object p0, p2, v5

    goto/16 :goto_0

    .line 806
    .end local v0    # "fnames":[Ljava/lang/String;
    :cond_9
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 807
    .restart local v0    # "fnames":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 808
    const-string v1, ""

    aput-object v1, p2, v3

    .line 809
    const/4 v0, 0x0

    .line 810
    goto/16 :goto_0

    .line 811
    :cond_a
    array-length v1, v0

    if-ge v1, v4, :cond_b

    .line 812
    const-string v1, ""

    aput-object v1, p2, v3

    .line 813
    const/4 v0, 0x0

    .line 814
    goto/16 :goto_0

    .line 815
    :cond_b
    array-length v1, v0

    if-ne v1, v4, :cond_c

    .line 816
    aget-object v1, v0, v4

    aput-object v1, p2, v3

    .line 817
    aput-object p0, p2, v5

    .line 818
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 820
    :cond_c
    aget-object v1, v0, v4

    const-string v2, "2345\u624b\u673a\u52a9\u624b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 822
    aput-object p0, p2, v5

    goto/16 :goto_0

    .line 824
    :cond_d
    aget-object v1, v0, v4

    aput-object v1, p2, v3

    .line 825
    aput-object p0, p2, v5

    goto/16 :goto_0
.end method

.method public static getIcon(Landroid/content/Context;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1340
    const-string v8, "com.android.launcher2.settings"

    .line 1341
    .local v8, "AUTHORITY":Ljava/lang/String;
    const-string v10, "favorites"

    .line 1342
    .local v10, "TABLE_FAVORITES":Ljava/lang/String;
    const-string v9, "notify"

    .line 1343
    .local v9, "PARAMETER_NOTIFY":Ljava/lang/String;
    const-string v2, "content://com.android.launcher2.settings/favorites?itemType=0"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1344
    .local v3, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1346
    .local v12, "c":Landroid/database/Cursor;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .local v25, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1349
    .local v19, "idIndex":I
    const-string v2, "intent"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1350
    .local v20, "intentIndex":I
    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 1351
    .local v29, "titleIndex":I
    const-string v2, "iconType"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1352
    .local v18, "iconTypeIndex":I
    const-string v2, "icon"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1358
    .local v17, "iconIndex":I
    const-string v2, "sss"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1361
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    :try_start_1
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1364
    .local v21, "intents":Ljava/lang/String;
    const-string v2, "sss"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1366
    const-string v2, "component="

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 1367
    .local v27, "start":I
    const-string v2, "/."

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1368
    .local v14, "end":I
    add-int/lit8 v2, v27, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1369
    .local v28, "title":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    new-instance v22, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/adwo/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v22, "out":Ljava/io/FileOutputStream;
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1374
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->flush()V

    .line 1375
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1378
    .end local v14    # "end":I
    .end local v21    # "intents":Ljava/lang/String;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v27    # "start":I
    .end local v28    # "title":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1379
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1396
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "iconIndex":I
    .end local v18    # "iconTypeIndex":I
    .end local v19    # "idIndex":I
    .end local v20    # "intentIndex":I
    .end local v29    # "titleIndex":I
    :catch_1
    move-exception v13

    .line 1397
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1400
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1405
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1383
    .restart local v17    # "iconIndex":I
    .restart local v18    # "iconTypeIndex":I
    .restart local v19    # "idIndex":I
    .restart local v20    # "intentIndex":I
    .restart local v29    # "titleIndex":I
    :cond_1
    const/4 v2, -0x1

    :try_start_5
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1386
    .local v14, "end":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 1387
    .local v24, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .line 1388
    .local v26, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 1389
    .local v23, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1390
    .local v11, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 1391
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 1400
    .end local v11    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1401
    :catch_2
    move-exception v13

    .line 1402
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1401
    .end local v14    # "end":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iconIndex":I
    .end local v18    # "iconTypeIndex":I
    .end local v19    # "idIndex":I
    .end local v20    # "intentIndex":I
    .end local v24    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v26    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "titleIndex":I
    :catch_3
    move-exception v13

    .line 1402
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1399
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1400
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1403
    :goto_3
    throw v2

    .line 1401
    :catch_4
    move-exception v13

    .line 1402
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static getLauncherIcon(Landroid/content/Context;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "com.android.launcher2.settings"

    .line 998
    .local v8, "AUTHORITY":Ljava/lang/String;
    const-string v10, "favorites"

    .line 999
    .local v10, "TABLE_FAVORITES":Ljava/lang/String;
    const-string v9, "notify"

    .line 1000
    .local v9, "PARAMETER_NOTIFY":Ljava/lang/String;
    const-string v2, "content://com.android.launcher2.settings/favorites?itemType=0"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1001
    .local v3, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1004
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1005
    .local v16, "idIndex":I
    const-string v2, "intent"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1006
    .local v17, "intentIndex":I
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1007
    .local v23, "titleIndex":I
    const-string v2, "iconType"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1008
    .local v15, "iconTypeIndex":I
    const-string v2, "icon"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1009
    .local v14, "iconIndex":I
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1010
    const/16 v19, -0x1

    .line 1011
    .local v19, "posi":I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 1012
    add-int/lit8 v19, v19, 0x1

    .line 1014
    :try_start_1
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1015
    .local v18, "intents":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1016
    const-string v2, "component="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 1017
    .local v20, "start":I
    const-string v2, "/."

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1018
    .local v13, "end":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v13, v2, :cond_0

    .line 1019
    add-int/lit8 v2, v20, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1020
    .local v22, "title":Ljava/lang/String;
    move/from16 v21, v19

    .line 1021
    .local v21, "temp":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1024
    .end local v13    # "end":I
    .end local v18    # "intents":Ljava/lang/String;
    .end local v20    # "start":I
    .end local v21    # "temp":I
    .end local v22    # "title":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1025
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1029
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "iconIndex":I
    .end local v15    # "iconTypeIndex":I
    .end local v16    # "idIndex":I
    .end local v17    # "intentIndex":I
    .end local v19    # "posi":I
    .end local v23    # "titleIndex":I
    :catch_1
    move-exception v12

    .line 1030
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v11
.end method

.method private static getLocalSoftList(Landroid/content/Context;)Lcom/phonemanager2345/model/LMSoftList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3641
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->getLocalSoftListFromSD()Lcom/phonemanager2345/model/LMSoftList;

    move-result-object v0

    .line 3642
    .local v0, "softList":Lcom/phonemanager2345/model/LMSoftList;
    if-nez v0, :cond_0

    .line 3643
    invoke-static {p0}, Lcom/phonemanager2345/zhushou/CommandHander;->getLocalSoftListFromSP(Landroid/content/Context;)Lcom/phonemanager2345/model/LMSoftList;

    move-result-object v0

    .line 3645
    :cond_0
    return-object v0
.end method

.method private static getLocalSoftListFromSD()Lcom/phonemanager2345/model/LMSoftList;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3660
    const-string v6, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3661
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v8, ".lminstalllist"

    invoke-direct {v1, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3662
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3663
    const/4 v2, 0x0

    .line 3665
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3666
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 3668
    .local v5, "writer":Ljava/io/StringWriter;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 3669
    invoke-virtual {v5, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3675
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 3676
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3679
    if-eqz v2, :cond_0

    .line 3681
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    move-object v6, v7

    .line 3689
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    return-object v6

    .line 3671
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "writer":Ljava/io/StringWriter;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3672
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3673
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/phonemanager2345/model/LMSoftList;

    invoke-virtual {v6, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phonemanager2345/model/LMSoftList;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3679
    if-eqz v3, :cond_1

    .line 3681
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 3682
    :catch_1
    move-exception v0

    .line 3683
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3679
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz v3, :cond_4

    .line 3681
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/StringWriter;
    :cond_4
    :goto_4
    move-object v6, v7

    .line 3689
    goto :goto_3

    .line 3682
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "writer":Ljava/io/StringWriter;
    :catch_2
    move-exception v0

    .line 3683
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3682
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/StringWriter;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 3683
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3679
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_5

    .line 3681
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3684
    :cond_5
    :goto_6
    throw v6

    .line 3682
    :catch_4
    move-exception v0

    .line 3683
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3679
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 3675
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private static getLocalSoftListFromSP(Landroid/content/Context;)Lcom/phonemanager2345/model/LMSoftList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3650
    const-string v3, ".lminstalllist"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3651
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "list_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3652
    .local v0, "localSoftListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3653
    sget-object v2, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/phonemanager2345/model/LMSoftList;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonemanager2345/model/LMSoftList;

    .line 3655
    :cond_0
    return-object v2
.end method

.method public static getPhoneData(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 4
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2404
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2405
    invoke-static {p3}, Lcom/market2345/autocheck/modle/PhoneData;->getInstance(Landroid/content/Context;)Lcom/market2345/autocheck/modle/PhoneData;

    move-result-object v0

    .line 2406
    .local v0, "data":Lcom/market2345/autocheck/modle/PhoneData;
    sget-object v3, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2407
    .local v1, "jsonString":Ljava/lang/String;
    sget-object v3, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2408
    .local v2, "result":Lcom/google/gson/JsonObject;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/CommandHander;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 2409
    const/16 v3, 0x1d

    invoke-static {v2, v3, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2410
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2411
    return-void
.end method

.method public static getStoragePath(Ljava/io/OutputStream;Landroid/content/Context;)V
    .locals 13
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xb

    .line 3159
    const/4 v9, 0x0

    .line 3160
    .local v9, "sdcardCount":I
    const-string v8, ""

    .line 3162
    .local v8, "sdRoot":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3163
    .local v4, "result":Lcom/google/gson/JsonObject;
    const-string v10, "mobileRoot"

    const-string v11, "/"

    invoke-virtual {v4, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    const/4 v5, 0x0

    .line 3166
    .local v5, "sdCard1":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3167
    .local v6, "sdCard2":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3168
    .local v3, "internal":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3169
    .local v2, "external":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 3172
    :cond_0
    invoke-static {p1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getExtraSDCards(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 3173
    .local v7, "sdCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 3174
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sdCard2":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 3177
    .restart local v6    # "sdCard2":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    .line 3178
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3180
    const/4 v3, 0x0

    .line 3181
    move-object v2, v5

    .line 3199
    :cond_2
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3200
    const-string v10, "sdRoot"

    invoke-virtual {v4, v10, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    add-int/lit8 v9, v9, 0x1

    .line 3203
    :cond_3
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 3204
    .local v0, "arr":Lcom/google/gson/JsonArray;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3205
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3206
    .local v1, "exSD":Lcom/google/gson/JsonObject;
    const-string v10, "path"

    invoke-virtual {v1, v10, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 3208
    add-int/lit8 v9, v9, 0x1

    .line 3228
    .end local v1    # "exSD":Lcom/google/gson/JsonObject;
    :cond_4
    const-string v10, "exSDRoot"

    invoke-virtual {v4, v10, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 3229
    const-string v10, "sdCardCount"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 3230
    const/16 v10, 0x2a

    invoke-static {v4, v10, p0}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 3231
    return-void

    .line 3183
    .end local v0    # "arr":Lcom/google/gson/JsonArray;
    :cond_5
    move-object v3, v5

    .line 3184
    const/4 v2, 0x0

    goto :goto_0

    .line 3186
    :cond_6
    if-nez v5, :cond_7

    if-eqz v6, :cond_7

    .line 3187
    move-object v3, v6

    .line 3188
    const/4 v2, 0x0

    goto :goto_0

    .line 3189
    :cond_7
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 3190
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_8

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3192
    move-object v3, v6

    .line 3193
    move-object v2, v5

    goto :goto_0

    .line 3195
    :cond_8
    move-object v3, v5

    .line 3196
    move-object v2, v6

    goto :goto_0
.end method

.method public static manageChannelID(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 8
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3703
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3704
    new-array v0, p0, [B

    .line 3705
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3706
    const-string v5, ".lminstalllist"

    const/4 v6, 0x3

    invoke-virtual {p3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3707
    .local v4, "sp":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    const-class v7, Lcom/phonemanager2345/model/ChannelOperation;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phonemanager2345/model/ChannelOperation;

    .line 3708
    .local v3, "operation":Lcom/phonemanager2345/model/ChannelOperation;
    const-string v1, "00001"

    .line 3709
    .local v1, "errorCode":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3711
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v5, "get"

    iget-object v6, v3, Lcom/phonemanager2345/model/ChannelOperation;->command:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3712
    const-string v5, "cid"

    const-string v6, "cid_key"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    :cond_0
    :goto_0
    const-string v5, "error_code"

    invoke-virtual {v2, v5, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    const/16 v5, 0x34

    invoke-static {v2, v5, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 3720
    return-void

    .line 3713
    :cond_1
    const-string v5, "set"

    iget-object v6, v3, Lcom/phonemanager2345/model/ChannelOperation;->command:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3714
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cid_key"

    iget-object v7, v3, Lcom/phonemanager2345/model/ChannelOperation;->cid:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3715
    const-string v1, "00002"

    goto :goto_0
.end method

.method public static manageFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 17
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3085
    move/from16 v0, p0

    new-array v5, v0, [B

    .line 3086
    .local v5, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3088
    sget-object v14, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    const-class v16, Lcom/phonemanager2345/model/ManageFileInfoListBean;

    invoke-virtual/range {v14 .. v16}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/phonemanager2345/model/ManageFileInfoListBean;

    .line 3089
    .local v7, "fileInfoList":Lcom/phonemanager2345/model/ManageFileInfoListBean;
    invoke-virtual {v7}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->getFileNameList()Ljava/util/ArrayList;

    move-result-object v9

    .line 3091
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/phonemanager2345/model/ManageFileInfoBean;>;"
    new-instance v13, Lcom/google/gson/JsonObject;

    invoke-direct {v13}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3092
    .local v13, "result":Lcom/google/gson/JsonObject;
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 3093
    .local v4, "arr":Lcom/google/gson/JsonArray;
    const-string v14, "fileNameList"

    invoke-virtual {v13, v14, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 3094
    const-string v14, "fileCount"

    invoke-virtual {v7}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->getFileCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 3096
    invoke-virtual {v7}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->getCommand()Ljava/lang/String;

    move-result-object v6

    .line 3097
    .local v6, "command":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/phonemanager2345/model/ManageFileInfoBean;

    .line 3098
    .local v10, "manageFileInfo":Lcom/phonemanager2345/model/ManageFileInfoBean;
    const/4 v2, 0x0

    .line 3099
    .local v2, "action":Z
    invoke-virtual {v10}, Lcom/phonemanager2345/model/ManageFileInfoBean;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 3100
    .local v11, "name":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3101
    .local v3, "actionResult":Lcom/google/gson/JsonObject;
    const-string v14, "fileName"

    invoke-virtual {v3, v14, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 3103
    const-string v14, "rm"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3104
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/phonemanager2345/zhushou/CommandHander;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 3105
    if-nez v2, :cond_0

    .line 3106
    const-string v14, "error_code"

    const-string v15, "10002"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    const-string v14, "error"

    const-string v15, "delete false"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 3137
    const-string v14, "error_code"

    const-string v15, "00001"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    const-string v14, "error"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    :cond_1
    :goto_2
    invoke-virtual {v4, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 3109
    :cond_2
    const-string v14, "mk"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3110
    const-string v14, "dir"

    invoke-virtual {v10}, Lcom/phonemanager2345/model/ManageFileInfoBean;->getFileType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3111
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 3112
    if-nez v2, :cond_0

    .line 3113
    const-string v14, "error_code"

    const-string v15, "10003"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    const-string v14, "error"

    const-string v15, "make dir false"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3117
    :cond_3
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 3118
    if-nez v2, :cond_0

    .line 3119
    const-string v14, "error_code"

    const-string v15, "10004"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    const-string v14, "error"

    const-string v15, "make file false"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3123
    :cond_4
    const-string v14, "rename"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3124
    invoke-virtual {v10}, Lcom/phonemanager2345/model/ManageFileInfoBean;->getParam1()Ljava/lang/String;

    move-result-object v12

    .line 3125
    .local v12, "newName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 3126
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 3127
    if-nez v2, :cond_0

    .line 3128
    const-string v14, "error_code"

    const-string v15, "10001"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    const-string v14, "error"

    const-string v15, "rename false"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3132
    :cond_5
    const-string v14, "error_code"

    const-string v15, "11111"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    const-string v14, "error"

    const-string v15, "the param1  is null"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3141
    .end local v12    # "newName":Ljava/lang/String;
    :cond_6
    const-string v14, "error_code"

    const-string v15, "11111"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    const-string v14, "error"

    const-string v15, "the fileName is null"

    invoke-virtual {v3, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3147
    .end local v2    # "action":Z
    .end local v3    # "actionResult":Lcom/google/gson/JsonObject;
    .end local v10    # "manageFileInfo":Lcom/phonemanager2345/model/ManageFileInfoBean;
    .end local v11    # "name":Ljava/lang/String;
    :cond_7
    const/16 v14, 0x29

    move-object/from16 v0, p2

    invoke-static {v13, v14, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 3149
    return-void
.end method

.method public static manageLMSoftList(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 10
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3587
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3589
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3591
    .local v3, "listMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/phonemanager2345/model/LMSoft;>;"
    new-array v0, p0, [B

    .line 3592
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3593
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    const-class v9, Lcom/phonemanager2345/model/LMSoftList;

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phonemanager2345/model/LMSoftList;

    .line 3595
    .local v6, "softList":Lcom/phonemanager2345/model/LMSoftList;
    invoke-static {p3}, Lcom/phonemanager2345/zhushou/CommandHander;->getLocalSoftList(Landroid/content/Context;)Lcom/phonemanager2345/model/LMSoftList;

    move-result-object v4

    .line 3597
    .local v4, "localSoftList":Lcom/phonemanager2345/model/LMSoftList;
    if-eqz v4, :cond_0

    .line 3598
    iget-object v7, v4, Lcom/phonemanager2345/model/LMSoftList;->appList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/LMSoft;

    .line 3599
    .local v5, "soft":Lcom/phonemanager2345/model/LMSoft;
    iget-object v7, v5, Lcom/phonemanager2345/model/LMSoft;->packageName:Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3603
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "soft":Lcom/phonemanager2345/model/LMSoft;
    :cond_0
    iget-object v7, v6, Lcom/phonemanager2345/model/LMSoftList;->appList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/LMSoft;

    .line 3604
    .restart local v5    # "soft":Lcom/phonemanager2345/model/LMSoft;
    iget-object v7, v5, Lcom/phonemanager2345/model/LMSoft;->packageName:Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3607
    .end local v5    # "soft":Lcom/phonemanager2345/model/LMSoft;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/phonemanager2345/model/LMSoftList;->appList:Ljava/util/ArrayList;

    .line 3608
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v7, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, v7}, Lcom/phonemanager2345/zhushou/CommandHander;->setLocalSoftList(Landroid/content/Context;Ljava/lang/String;)V

    .line 3610
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3611
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v7, "error_code"

    const-string v8, "00001"

    invoke-virtual {v2, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    const/16 v7, 0x32

    invoke-static {v2, v7, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 3613
    return-void
.end method

.method public static notifyPhoneStatus2PC(Ljava/net/Socket;Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;ILandroid/content/Context;)V
    .locals 20
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "connStatus"    # I
    .param p4, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 2886
    const-string v15, "power"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 2887
    .local v11, "pm":Landroid/os/PowerManager;
    const/4 v15, 0x1

    const-string v16, "CPU"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .line 2888
    .local v14, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2891
    const/4 v15, 0x1

    new-array v4, v15, [Lcom/phonemanager2345/zhushou/CheckBindStstus;

    .line 2892
    .local v4, "c":[Lcom/phonemanager2345/zhushou/CheckBindStstus;
    new-instance v8, Landroid/content/Intent;

    const-class v15, Lcom/phonemanager2345/zhushou/ConnectionService;

    move-object/from16 v0, p4

    invoke-direct {v8, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2894
    .local v8, "intent":Landroid/content/Intent;
    new-instance v6, Lcom/phonemanager2345/zhushou/CommandHander$2;

    invoke-direct {v6, v4}, Lcom/phonemanager2345/zhushou/CommandHander$2;-><init>([Lcom/phonemanager2345/zhushou/CheckBindStstus;)V

    .line 2917
    .local v6, "conn":Landroid/content/ServiceConnection;
    const/4 v15, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v6, v15}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2920
    const/16 v15, 0x2710

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2922
    const/4 v10, 0x1

    .line 2923
    .local v10, "loop":Z
    :goto_0
    if-eqz v10, :cond_3

    .line 2925
    const/4 v5, 0x0

    .line 2926
    .local v5, "command":I
    const/4 v15, 0x0

    aget-object v15, v4, v15

    if-eqz v15, :cond_0

    .line 2927
    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-interface {v15}, Lcom/phonemanager2345/zhushou/CheckBindStstus;->getCommand()I

    move-result v5

    .line 2930
    :cond_0
    sparse-switch v5, :sswitch_data_0

    .line 2943
    const-string v15, ""

    const/16 v16, 0x27

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 2944
    const/4 v15, 0x4

    new-array v3, v15, [B

    .line 2946
    .local v3, "buff":[B
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->readFourbytes(Ljava/io/BufferedInputStream;[B)V

    .line 2947
    const/4 v15, 0x0

    invoke-static {v3, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v12

    .line 2949
    .local v12, "result":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->readFourbytes(Ljava/io/BufferedInputStream;[B)V

    .line 2950
    const/4 v15, 0x0

    invoke-static {v3, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v9

    .line 2952
    .local v9, "len":I
    const/16 v15, 0x27

    if-ne v12, v15, :cond_2

    if-nez v9, :cond_2

    .line 2953
    new-instance v2, Landroid/content/Intent;

    const-string v15, "com.phonemanager2345.zhushou.connection.status"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2954
    .local v2, "action":Landroid/content/Intent;
    const-string v15, "conn_status_key"

    move/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2955
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2960
    const/4 v15, 0x0

    aget-object v15, v4, v15

    if-nez v15, :cond_1

    .line 2961
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2962
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 2963
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2965
    :cond_1
    const/4 v15, 0x0

    :try_start_2
    aget-object v16, v4, v15

    monitor-enter v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2966
    const/4 v15, 0x0

    :try_start_3
    aget-object v15, v4, v15

    const-wide/16 v18, 0x2710

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 2967
    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2972
    .end local v2    # "action":Landroid/content/Intent;
    .end local v3    # "buff":[B
    .end local v5    # "command":I
    .end local v9    # "len":I
    .end local v10    # "loop":Z
    .end local v12    # "result":I
    :catch_0
    move-exception v7

    .line 2973
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2975
    const/4 v15, 0x1

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2980
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v15, "com.phonemanager2345.zhushou.connection.status"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2981
    .restart local v2    # "action":Landroid/content/Intent;
    const-string v15, "conn_status_key"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2982
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2984
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2986
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2988
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2932
    .end local v2    # "action":Landroid/content/Intent;
    .restart local v5    # "command":I
    .restart local v10    # "loop":Z
    :sswitch_0
    const/16 v15, 0x3e8

    :try_start_7
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2933
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2935
    const/4 v10, 0x0

    .line 2936
    goto/16 :goto_0

    .line 2939
    :sswitch_1
    const/4 v10, 0x0

    .line 2940
    goto/16 :goto_0

    .line 2958
    .restart local v3    # "buff":[B
    .restart local v9    # "len":I
    .restart local v12    # "result":I
    :cond_2
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "unknown client"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2980
    .end local v3    # "buff":[B
    .end local v5    # "command":I
    .end local v9    # "len":I
    .end local v10    # "loop":Z
    .end local v12    # "result":I
    :catchall_1
    move-exception v15

    new-instance v2, Landroid/content/Intent;

    const-string v16, "com.phonemanager2345.zhushou.connection.status"

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2981
    .restart local v2    # "action":Landroid/content/Intent;
    const-string v16, "conn_status_key"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2982
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2984
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2986
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2987
    throw v15

    .line 2963
    .restart local v3    # "buff":[B
    .restart local v5    # "command":I
    .restart local v9    # "len":I
    .restart local v10    # "loop":Z
    .restart local v12    # "result":I
    :catchall_2
    move-exception v15

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2980
    .end local v2    # "action":Landroid/content/Intent;
    .end local v3    # "buff":[B
    .end local v5    # "command":I
    .end local v9    # "len":I
    .end local v12    # "result":I
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v15, "com.phonemanager2345.zhushou.connection.status"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2981
    .restart local v2    # "action":Landroid/content/Intent;
    const-string v15, "conn_status_key"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2982
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2984
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2986
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 2976
    .end local v2    # "action":Landroid/content/Intent;
    .end local v10    # "loop":Z
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 2977
    .local v13, "se":Ljava/net/SocketException;
    :try_start_a
    invoke-virtual {v13}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 2930
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static operateSMS(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 15
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3470
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3471
    new-array v2, p0, [B

    .line 3472
    .local v2, "buffer":[B
    move-object/from16 v0, p1

    invoke-static {p0, v0, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3473
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    const-class v14, Lcom/phonemanager2345/model/SMSOperationCommandModel;

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;

    .line 3475
    .local v8, "model":Lcom/phonemanager2345/model/SMSOperationCommandModel;
    new-instance v9, Lcom/phonemanager2345/model/SMSResultModel;

    invoke-direct {v9}, Lcom/phonemanager2345/model/SMSResultModel;-><init>()V

    .line 3476
    .local v9, "result":Lcom/phonemanager2345/model/SMSResultModel;
    new-instance v7, Lcom/market2345/messages/MessagesContext;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/market2345/messages/MessagesContext;-><init>(Landroid/content/Context;)V

    .line 3477
    .local v7, "meContext":Lcom/market2345/messages/MessagesContext;
    const-string v12, "getall"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3478
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/market2345/messages/MessagesManager;->getAllMessage()Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    .line 3479
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    .line 3569
    :cond_0
    :goto_0
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v12, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 3570
    .local v10, "resultOut":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 3571
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-static {v10, v12, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 3573
    :cond_1
    return-void

    .line 3480
    .end local v10    # "resultOut":Ljava/lang/String;
    :cond_2
    const-string v12, "rm"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3482
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 3483
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3484
    .local v5, "ids":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v5

    if-ge v4, v12, :cond_3

    .line 3485
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/messages/data/MessageItemTmp;

    iget-wide v12, v12, Lcom/market2345/messages/data/MessageItemTmp;->id:J

    aput-wide v12, v5, v4

    .line 3484
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3487
    :cond_3
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->deleteMessage([J)I

    move-result v11

    .line 3488
    .local v11, "smsResultId":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 3489
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    .line 3494
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v11    # "smsResultId":I
    :cond_4
    :goto_2
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 3495
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3496
    .restart local v5    # "ids":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v12, v5

    if-ge v4, v12, :cond_6

    .line 3497
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;

    iget-object v12, v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;->threadID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v5, v4

    .line 3496
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3491
    .restart local v11    # "smsResultId":I
    :cond_5
    const-string v12, "20002"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto :goto_2

    .line 3499
    .end local v11    # "smsResultId":I
    :cond_6
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->deleteConversation([J)I

    move-result v3

    .line 3500
    .local v3, "converResultId":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_7

    .line 3501
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3503
    :cond_7
    const-string v12, "00001"

    iget-object v13, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3504
    const-string v12, "30002"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3505
    :cond_8
    const-string v12, "20002"

    iget-object v13, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3506
    const-string v12, "40002"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3508
    :cond_9
    const-string v12, "20002"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3512
    .end local v3    # "converResultId":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    :cond_a
    const-string v12, "export"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3513
    const/4 v6, 0x0

    .line 3514
    .local v6, "localSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    .line 3515
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    if-eqz v12, :cond_c

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 3516
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3517
    .restart local v5    # "ids":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_b

    .line 3518
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/messages/data/MessageItemTmp;

    iget-wide v12, v12, Lcom/market2345/messages/data/MessageItemTmp;->id:J

    aput-wide v12, v5, v4

    .line 3517
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3520
    :cond_b
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->searchMessageByIds([J)Ljava/util/ArrayList;

    move-result-object v6

    .line 3521
    if-eqz v6, :cond_c

    .line 3522
    iget-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3525
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    :cond_c
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    if-eqz v12, :cond_e

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_e

    .line 3526
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3527
    .restart local v5    # "ids":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_d

    .line 3528
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;

    iget-object v12, v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;->threadID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v5, v4

    .line 3527
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3530
    :cond_d
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->searchMessagesByThreadIds([J)Ljava/util/ArrayList;

    move-result-object v6

    .line 3531
    if-eqz v6, :cond_e

    .line 3532
    iget-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3534
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    :cond_e
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3535
    .end local v6    # "localSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    :cond_f
    const-string v12, "import"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3536
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/market2345/messages/MessagesManager;->insertMessages(Ljava/util/ArrayList;)V

    .line 3537
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3538
    :cond_10
    const-string v12, "notifyStatus"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 3539
    const/4 v6, 0x0

    .line 3540
    .restart local v6    # "localSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    .line 3541
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    if-eqz v12, :cond_12

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_12

    .line 3542
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3543
    .restart local v5    # "ids":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_11

    .line 3544
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/messages/data/MessageItemTmp;

    iget-wide v12, v12, Lcom/market2345/messages/data/MessageItemTmp;->id:J

    aput-wide v12, v5, v4

    .line 3543
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3546
    :cond_11
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->changeSmsToRead([J)Ljava/util/ArrayList;

    move-result-object v6

    .line 3547
    if-eqz v6, :cond_12

    .line 3548
    iget-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3551
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    :cond_12
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    if-eqz v12, :cond_14

    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_14

    .line 3552
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v5, v12, [J

    .line 3553
    .restart local v5    # "ids":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_13

    .line 3554
    iget-object v12, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;

    iget-object v12, v12, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;->threadID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v5, v4

    .line 3553
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3556
    :cond_13
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/market2345/messages/MessagesManager;->changeConversationToRead([J)Ljava/util/ArrayList;

    move-result-object v6

    .line 3557
    if-eqz v6, :cond_14

    .line 3558
    iget-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->smsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3560
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    :cond_14
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3561
    .end local v6    # "localSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    :cond_15
    const-string v12, "getAllItemCount"

    iget-object v13, v8, Lcom/phonemanager2345/model/SMSOperationCommandModel;->command:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 3562
    invoke-virtual {v7}, Lcom/market2345/messages/MessagesContext;->getMessagesManager()Lcom/market2345/messages/MessagesManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/market2345/messages/MessagesManager;->getMessagesCount()I

    move-result v12

    iput v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->allItemCount:I

    .line 3563
    const-string v12, "00001"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 3565
    :cond_16
    const-string v12, "20002"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error_code:Ljava/lang/String;

    .line 3566
    const-string v12, "no such command"

    iput-object v12, v9, Lcom/phonemanager2345/model/SMSResultModel;->error:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static readFourbytes(Ljava/io/BufferedInputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2991
    const/4 v0, 0x0

    .line 2992
    .local v0, "cc":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2993
    rsub-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 2995
    :cond_0
    return-void
.end method

.method public static readFullLength(ILjava/io/BufferedInputStream;[B)V
    .locals 3
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "cc":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ge v0, p0, :cond_0

    .line 543
    sub-int v2, p0, v0

    invoke-virtual {p1, p2, v0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 544
    .local v1, "t":I
    add-int/2addr v0, v1

    .line 545
    goto :goto_0

    .line 546
    .end local v1    # "t":I
    :cond_0
    return-void
.end method

.method private static readProperData(Ljava/io/FileOutputStream;Ljava/io/BufferedInputStream;I)V
    .locals 7
    .param p0, "ouy"    # Ljava/io/FileOutputStream;
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2800

    const/4 v5, 0x0

    .line 1698
    new-array v1, v6, [B

    .line 1699
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 1700
    .local v3, "temp":I
    const/4 v0, 0x0

    .line 1703
    .local v0, "count":I
    :cond_0
    :goto_0
    sub-int v2, p2, v0

    .line 1704
    .local v2, "reserve":I
    if-nez v2, :cond_1

    .line 1718
    return-void

    .line 1706
    :cond_1
    if-le v2, v6, :cond_2

    .line 1707
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 1711
    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1712
    add-int/2addr v0, v3

    .line 1713
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1714
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 1709
    :cond_2
    invoke-virtual {p1, v1, v5, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    goto :goto_1
.end method

.method private static readProperData(Ljava/io/FileOutputStream;Ljava/io/BufferedInputStream;IILandroid/content/Context;)V
    .locals 10
    .param p0, "ouy"    # Ljava/io/FileOutputStream;
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "length"    # I
    .param p3, "currCMD"    # I
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    const/16 v8, 0x31

    if-ne p3, v8, :cond_0

    .line 1655
    invoke-static {p4}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v7

    .line 1656
    .local v7, "updateUtils":Lcom/market2345/update/UpdateUtils;
    invoke-virtual {v7}, Lcom/market2345/update/UpdateUtils;->notifiDownloading2345()V

    .line 1658
    .end local v7    # "updateUtils":Lcom/market2345/update/UpdateUtils;
    :cond_0
    const/4 v3, 0x0

    .line 1659
    .local v3, "percent":I
    const/16 v8, 0x2800

    new-array v1, v8, [B

    .line 1660
    .local v1, "data":[B
    const/4 v6, 0x0

    .line 1661
    .local v6, "temp":I
    const/4 v0, 0x0

    .line 1664
    .local v0, "count":I
    :cond_1
    :goto_0
    sub-int v5, p2, v0

    .line 1665
    .local v5, "reserve":I
    if-nez v5, :cond_3

    .line 1692
    const/16 v8, 0x31

    if-ne p3, v8, :cond_2

    .line 1693
    invoke-static {p4}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/update/UpdateUtils;->downloadFinished()V

    .line 1695
    :cond_2
    return-void

    .line 1667
    :cond_3
    const/16 v8, 0x2800

    if-le v5, v8, :cond_4

    .line 1668
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 1672
    :goto_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 1673
    add-int/2addr v0, v6

    .line 1675
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1676
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1677
    const/16 v8, 0x31

    if-ne p3, v8, :cond_1

    .line 1678
    mul-int/lit8 v8, v0, 0x64

    div-int v4, v8, p2

    .line 1679
    .local v4, "percentNow":I
    if-le v4, v3, :cond_1

    .line 1680
    move v3, v4

    .line 1681
    invoke-static {p4}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/market2345/update/UpdateUtils;->updateNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1687
    .end local v4    # "percentNow":I
    :catch_0
    move-exception v2

    .line 1688
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1670
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v8, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    goto :goto_1
.end method

.method protected static returnAppsInfos(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 25
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1038
    move/from16 v0, p0

    new-array v13, v0, [B

    .line 1039
    .local v13, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1040
    const/16 v16, 0x0

    .line 1042
    .local v16, "command":Lcom/phonemanager2345/model/CommandModel01;
    :try_start_0
    sget-object v2, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>([B)V

    const-class v5, Lcom/phonemanager2345/model/CommandModel01;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/phonemanager2345/model/CommandModel01;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1046
    :goto_0
    if-nez v16, :cond_0

    .line 1047
    new-instance v16, Lcom/phonemanager2345/model/CommandModel01;

    .end local v16    # "command":Lcom/phonemanager2345/model/CommandModel01;
    invoke-direct/range {v16 .. v16}, Lcom/phonemanager2345/model/CommandModel01;-><init>()V

    .line 1048
    .restart local v16    # "command":Lcom/phonemanager2345/model/CommandModel01;
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/phonemanager2345/model/CommandModel01;->command:Ljava/lang/String;

    .line 1050
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAllAppInfo(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    .line 1051
    .local v8, "Infos":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    .line 1052
    .local v11, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1053
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, 0x0

    .line 1056
    .local v24, "updateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1057
    .local v21, "object":Lcom/google/gson/JsonObject;
    new-instance v12, Lcom/google/gson/JsonArray;

    invoke-direct {v12}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1058
    .local v12, "array":Lcom/google/gson/JsonArray;
    const-string v2, "update"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/phonemanager2345/model/CommandModel01;->command:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1059
    const-string v2, "content://com.market2345.2345dataprovider/needupdatedata"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1060
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1062
    .local v17, "cursor":Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1063
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1065
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 1066
    .local v14, "bundle":Landroid/os/Bundle;
    const-string v2, "apps"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    .end local v24    # "updateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    check-cast v24, Ljava/util/HashMap;

    .line 1067
    .restart local v24    # "updateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    if-eqz v24, :cond_1

    .line 1073
    .end local v14    # "bundle":Landroid/os/Bundle;
    :cond_2
    if-eqz v17, :cond_3

    .line 1074
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1075
    :cond_3
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1076
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/model/InstalledApp;

    .line 1077
    .local v9, "a":Lcom/market2345/model/InstalledApp;
    iget-boolean v2, v9, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    if-nez v2, :cond_5

    .line 1078
    const/4 v15, 0x0

    .line 1080
    .local v15, "canMove":I
    :try_start_1
    iget-object v2, v9, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1081
    .local v22, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "installLocation"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 1082
    .local v19, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1083
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 1088
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    iput v15, v9, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 1089
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    .line 1091
    .end local v15    # "canMove":I
    :cond_5
    iget-object v2, v9, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1092
    iget-object v2, v9, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/model/App;

    .line 1093
    .local v10, "app":Lcom/market2345/model/App;
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/market2345/model/InstalledApp;->isLatestVersion:Z

    .line 1094
    iget v2, v10, Lcom/market2345/model/App;->sid:I

    iput v2, v9, Lcom/market2345/model/InstalledApp;->softId:I

    .line 1095
    iget-object v2, v10, Lcom/market2345/model/App;->url:Ljava/lang/String;

    iput-object v2, v9, Lcom/market2345/model/InstalledApp;->softUrl:Ljava/lang/String;

    .line 1096
    iget-object v2, v10, Lcom/market2345/model/App;->title:Ljava/lang/String;

    iput-object v2, v9, Lcom/market2345/model/InstalledApp;->softName:Ljava/lang/String;

    .line 1097
    iget-object v2, v10, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    iput-object v2, v9, Lcom/market2345/model/InstalledApp;->latestSize:Ljava/lang/String;

    .line 1098
    iget v2, v10, Lcom/market2345/model/App;->versionCode:I

    iput v2, v9, Lcom/market2345/model/InstalledApp;->latestVersionCode:I

    .line 1099
    iget-object v2, v10, Lcom/market2345/model/App;->version:Ljava/lang/String;

    iput-object v2, v9, Lcom/market2345/model/InstalledApp;->latestVersionName:Ljava/lang/String;

    .line 1100
    iget-object v2, v10, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iput-object v2, v9, Lcom/market2345/model/InstalledApp;->iconUrl:Ljava/lang/String;

    .line 1101
    invoke-virtual {v9}, Lcom/market2345/model/InstalledApp;->toJSONObject1()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 1085
    .end local v10    # "app":Lcom/market2345/model/App;
    .restart local v15    # "canMove":I
    :catch_0
    move-exception v18

    .line 1086
    .local v18, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1108
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v9    # "a":Lcom/market2345/model/InstalledApp;
    .end local v15    # "canMove":I
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v18    # "e":Ljava/lang/Throwable;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/model/InstalledApp;

    .line 1109
    .restart local v9    # "a":Lcom/market2345/model/InstalledApp;
    iget-boolean v2, v9, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    if-nez v2, :cond_7

    .line 1110
    const/4 v15, 0x0

    .line 1112
    .restart local v15    # "canMove":I
    :try_start_2
    iget-object v2, v9, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1113
    .restart local v22    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "installLocation"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 1114
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1115
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    .line 1120
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_4
    iput v15, v9, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 1121
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    .line 1123
    .end local v15    # "canMove":I
    :cond_7
    invoke-virtual {v9}, Lcom/market2345/model/InstalledApp;->toJSONObject1()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_3

    .line 1117
    .restart local v15    # "canMove":I
    :catch_1
    move-exception v18

    .line 1118
    .restart local v18    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1128
    .end local v9    # "a":Lcom/market2345/model/InstalledApp;
    .end local v15    # "canMove":I
    .end local v18    # "e":Ljava/lang/Throwable;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v2, "total_number"

    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1129
    const-string v2, "softlist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v12}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1130
    const-string v2, "error_code"

    const-string v4, "00001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1134
    const/4 v12, 0x0

    .line 1135
    const/16 v21, 0x0

    .line 1136
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1137
    return-void

    .line 1043
    .end local v8    # "Infos":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v11    # "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    .end local v12    # "array":Lcom/google/gson/JsonArray;
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "updateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method private static returnAppsNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 4
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 397
    invoke-static {p3}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAllAppNumber(Landroid/content/Context;)I

    move-result v1

    .line 398
    .local v1, "totalNumber":I
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 399
    .local v0, "result":Lcom/google/gson/JsonObject;
    const-string v2, "total_number"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 400
    const-string v2, "error_code"

    const-string v3, "00001"

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/16 v2, 0xd

    invoke-static {v0, v2, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 402
    return-void
.end method

.method private static returnCameraImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;I)V
    .locals 34
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "order"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 586
    const/4 v4, 0x7

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "bucket_id"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "bucket_display_name"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "_size"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "date_modified"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "mime_type"

    aput-object v5, v6, v4

    .line 590
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->sortOrder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 593
    .local v11, "c":Landroid/database/Cursor;
    const/4 v4, -0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 594
    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 595
    .local v16, "idd":I
    const-string v4, "_data"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 596
    .local v12, "data":I
    const-string v4, "bucket_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 597
    .local v15, "id":I
    const-string v4, "bucket_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 598
    .local v23, "name":I
    const-string v4, "_size"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 599
    .local v30, "size":I
    const-string v4, "mime_type"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 600
    .local v33, "type":I
    const-string v4, "date_modified"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 602
    .local v13, "dataModify":I
    new-instance v28, Lcom/google/gson/JsonObject;

    invoke-direct/range {v28 .. v28}, Lcom/google/gson/JsonObject;-><init>()V

    .line 603
    .local v28, "result":Lcom/google/gson/JsonObject;
    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 608
    .local v10, "array":Lcom/google/gson/JsonArray;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 609
    .local v24, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v24, v4

    .line 610
    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v24, v4

    .line 611
    const/16 v27, -0x1

    .line 612
    .local v27, "posi":I
    const-string v26, "----"

    .line 613
    .local v26, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    move/from16 v27, v0

    .line 615
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 617
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 723
    :cond_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    const-string v4, "filelist"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 728
    const-string v4, "error_code"

    const-string v5, "00001"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v4, "total_number"

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 731
    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v29

    .line 732
    .local v29, "s":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    move/from16 v22, v0

    .line 733
    .local v22, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 734
    .local v17, "length":[B
    const/4 v4, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 735
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v31, v0

    .line 736
    .local v31, "t":[B
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-static {v4, v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 737
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 738
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 739
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 742
    const/4 v10, 0x0

    .line 744
    const/16 v28, 0x0

    .line 745
    const/16 v29, 0x0

    .line 746
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 747
    return-void

    .line 619
    .end local v17    # "length":[B
    .end local v22    # "nCount":I
    .end local v29    # "s":Ljava/lang/String;
    .end local v31    # "t":[B
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    new-instance v14, Ljava/io/File;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .local v14, "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v4, v5, v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 626
    const/4 v4, 0x0

    aget-object v4, v24, v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    aget-object v4, v24, v4

    const-string v5, "dcim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongPicture(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 628
    :cond_3
    new-instance v25, Lcom/google/gson/JsonObject;

    invoke-direct/range {v25 .. v25}, Lcom/google/gson/JsonObject;-><init>()V

    .line 629
    .local v25, "object":Lcom/google/gson/JsonObject;
    const-string v4, "mobilePath"

    const/4 v5, 0x1

    aget-object v5, v24, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v4, "fileSize"

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 632
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 633
    .local v18, "modify":J
    const-wide/16 v4, 0x3e8

    mul-long v20, v18, v4

    .line 636
    .local v20, "modify1":J
    const/16 v4, 0x8

    new-array v0, v4, [B

    move-object/from16 v32, v0

    .line 637
    .local v32, "temp":[B
    const-wide v4, 0x6a007c4c8d8L

    cmp-long v4, v20, v4

    if-lez v4, :cond_4

    .line 638
    move-wide/from16 v0, v18

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 642
    :goto_2
    const-string v4, "modifyTimeHigh"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 643
    const-string v4, "modifyTimeLow"

    const/4 v5, 0x4

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 644
    const-string v4, "id"

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 645
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 640
    :cond_4
    move-wide/from16 v0, v20

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    goto :goto_2

    .line 652
    .end local v14    # "f":Ljava/io/File;
    .end local v18    # "modify":J
    .end local v20    # "modify1":J
    .end local v25    # "object":Lcom/google/gson/JsonObject;
    .end local v32    # "temp":[B
    :cond_5
    :goto_3
    :pswitch_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 655
    new-instance v14, Ljava/io/File;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v14    # "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 657
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v4, v5, v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 659
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongWallpaper(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 660
    new-instance v25, Lcom/google/gson/JsonObject;

    invoke-direct/range {v25 .. v25}, Lcom/google/gson/JsonObject;-><init>()V

    .line 661
    .restart local v25    # "object":Lcom/google/gson/JsonObject;
    const-string v4, "mobilePath"

    const/4 v5, 0x1

    aget-object v5, v24, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v4, "fileSize"

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 668
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 669
    .restart local v18    # "modify":J
    const-wide/16 v4, 0x3e8

    mul-long v20, v18, v4

    .line 672
    .restart local v20    # "modify1":J
    const/16 v4, 0x8

    new-array v0, v4, [B

    move-object/from16 v32, v0

    .line 673
    .restart local v32    # "temp":[B
    const-wide v4, 0x6a007c4c8d8L

    cmp-long v4, v20, v4

    if-lez v4, :cond_6

    .line 674
    move-wide/from16 v0, v18

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 678
    :goto_4
    const-string v4, "tempp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v4, "modifyTimeHigh"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 680
    const-string v4, "modifyTimeLow"

    const/4 v5, 0x4

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 681
    const-string v4, "id"

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 682
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_3

    .line 676
    :cond_6
    move-wide/from16 v0, v20

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    goto :goto_4

    .line 689
    .end local v14    # "f":Ljava/io/File;
    .end local v18    # "modify":J
    .end local v20    # "modify1":J
    .end local v25    # "object":Lcom/google/gson/JsonObject;
    .end local v32    # "temp":[B
    :cond_7
    :goto_5
    :pswitch_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    new-instance v14, Ljava/io/File;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v14    # "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 694
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v4, v5, v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 695
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 696
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongOtherImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 697
    new-instance v25, Lcom/google/gson/JsonObject;

    invoke-direct/range {v25 .. v25}, Lcom/google/gson/JsonObject;-><init>()V

    .line 698
    .restart local v25    # "object":Lcom/google/gson/JsonObject;
    const-string v4, "mobilePath"

    const/4 v5, 0x1

    aget-object v5, v24, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v4, "fileSize"

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 701
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 702
    .restart local v18    # "modify":J
    const-wide/16 v4, 0x3e8

    mul-long v20, v18, v4

    .line 705
    .restart local v20    # "modify1":J
    const/16 v4, 0x8

    new-array v0, v4, [B

    move-object/from16 v32, v0

    .line 706
    .restart local v32    # "temp":[B
    const-wide v4, 0x6a007c4c8d8L

    cmp-long v4, v20, v4

    if-lez v4, :cond_8

    .line 707
    move-wide/from16 v0, v18

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 711
    :goto_6
    const-string v4, "modifyTimeHigh"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 712
    const-string v4, "modifyTimeLow"

    const/4 v5, 0x4

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 713
    const-string v4, "id"

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 714
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_5

    .line 709
    :cond_8
    move-wide/from16 v0, v20

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    goto :goto_6

    .line 724
    .end local v14    # "f":Ljava/io/File;
    .end local v18    # "modify":J
    .end local v20    # "modify1":J
    .end local v25    # "object":Lcom/google/gson/JsonObject;
    .end local v32    # "temp":[B
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static returnError(Ljava/io/BufferedOutputStream;[B)V
    .locals 6
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 835
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "error_code"

    const-string v5, "10002"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v4, "error"

    const-string v5, "fail parm"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 839
    .local v1, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 840
    .local v0, "length":[B
    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 841
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 842
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 843
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 844
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 845
    return-void
.end method

.method protected static returnFileByType(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 8
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 550
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 551
    new-array v0, p0, [B

    .line 553
    .local v0, "buffer":[B
    invoke-virtual {p1, v0, v6, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 554
    sget-object v4, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 555
    .local v1, "c":Lcom/google/gson/JsonObject;
    const-string v4, "fileType"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    const-string v4, "fileType"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 557
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 572
    new-array v2, v7, [B

    fill-array-data v2, :array_0

    .line 573
    .local v2, "code":[B
    invoke-static {p2, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->returnError(Ljava/io/BufferedOutputStream;[B)V

    .line 580
    .end local v2    # "code":[B
    .end local v3    # "type":I
    :goto_0
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 581
    return-void

    .line 559
    .restart local v3    # "type":I
    :pswitch_1
    invoke-static {p0, p1, p2, p3, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->returnCameraImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;I)V

    goto :goto_0

    .line 562
    :pswitch_2
    const/4 v4, 0x1

    invoke-static {p0, p1, p2, p3, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->returnCameraImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;I)V

    goto :goto_0

    .line 565
    :pswitch_3
    const/4 v4, 0x2

    invoke-static {p0, p1, p2, p3, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->returnCameraImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;I)V

    goto :goto_0

    .line 577
    .end local v3    # "type":I
    :cond_0
    new-array v2, v7, [B

    fill-array-data v2, :array_1

    .line 578
    .restart local v2    # "code":[B
    invoke-static {p2, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->returnError(Ljava/io/BufferedOutputStream;[B)V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 572
    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x35t
    .end array-data

    .line 577
    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x35t
    .end array-data
.end method

.method public static returnFileInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 28
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3007
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3008
    move/from16 v0, p0

    new-array v6, v0, [B

    .line 3009
    .local v6, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3010
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v24 .. v25}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 3011
    .local v17, "json":Lcom/google/gson/JsonObject;
    const-string v24, "fileName"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 3012
    .local v12, "fileName":Ljava/lang/String;
    const-string v24, "fileType"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 3014
    .local v13, "fileType":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 3073
    :cond_0
    :goto_0
    return-void

    .line 3018
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3019
    .local v9, "file":Ljava/io/File;
    new-instance v11, Lcom/phonemanager2345/model/FileInfoListBean;

    invoke-direct {v11}, Lcom/phonemanager2345/model/FileInfoListBean;-><init>()V

    .line 3020
    .local v11, "fileInfoList":Lcom/phonemanager2345/model/FileInfoListBean;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3021
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/phonemanager2345/model/FileInfoBean;>;"
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/phonemanager2345/model/FileInfoListBean;->setFileInfoList(Ljava/util/ArrayList;)V

    .line 3023
    const-string v24, "dir"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 3024
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 3025
    .local v14, "files":[Ljava/io/File;
    if-eqz v14, :cond_5

    .line 3026
    move-object v4, v14

    .local v4, "arr$":[Ljava/io/File;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    move/from16 v16, v15

    .end local v4    # "arr$":[Ljava/io/File;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v8, v4, v16

    .line 3027
    .local v8, "f":Ljava/io/File;
    new-instance v10, Lcom/phonemanager2345/model/FileInfoBean;

    invoke-direct {v10}, Lcom/phonemanager2345/model/FileInfoBean;-><init>()V

    .line 3028
    .local v10, "fileInfo":Lcom/phonemanager2345/model/FileInfoBean;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileName(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 3031
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v23

    .local v23, "subFiles":[Ljava/io/File;
    if-eqz v23, :cond_2

    .line 3032
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setSubDir(Z)V

    .line 3033
    move-object/from16 v5, v23

    .local v5, "arr$":[Ljava/io/File;
    array-length v0, v5

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v15, 0x0

    .end local v16    # "i$":I
    .restart local v15    # "i$":I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    aget-object v22, v5, v15

    .line 3034
    .local v22, "subFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3035
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setSubDir(Z)V

    .line 3040
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v15    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "subFile":Ljava/io/File;
    :cond_2
    const-string v24, "dir"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileType(Ljava/lang/String;)V

    .line 3045
    .end local v23    # "subFiles":[Ljava/io/File;
    :goto_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileSize(Ljava/lang/String;)V

    .line 3047
    :try_start_0
    new-instance v24, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static/range {v24 .. v24}, Lcom/phonemanager2345/zhushou/CommandHander;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setModifyTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3051
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3026
    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "i$":I
    move/from16 v16, v15

    .end local v15    # "i$":I
    .restart local v16    # "i$":I
    goto/16 :goto_1

    .line 3033
    .end local v16    # "i$":I
    .restart local v5    # "arr$":[Ljava/io/File;
    .restart local v15    # "i$":I
    .restart local v19    # "len$":I
    .restart local v22    # "subFile":Ljava/io/File;
    .restart local v23    # "subFiles":[Ljava/io/File;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3042
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v15    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "subFile":Ljava/io/File;
    .end local v23    # "subFiles":[Ljava/io/File;
    .restart local v16    # "i$":I
    :cond_4
    const-string v24, "file"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileType(Ljava/lang/String;)V

    goto :goto_3

    .line 3048
    .end local v16    # "i$":I
    :catch_0
    move-exception v7

    .line 3049
    .local v7, "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 3054
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fileInfo":Lcom/phonemanager2345/model/FileInfoBean;
    :cond_5
    if-nez v14, :cond_6

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/phonemanager2345/model/FileInfoListBean;->setFileCount(I)V

    .line 3069
    .end local v14    # "files":[Ljava/io/File;
    :goto_6
    sget-object v24, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 3071
    .local v21, "result":Ljava/lang/String;
    const/16 v24, 0x28

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    goto/16 :goto_0

    .line 3054
    .end local v21    # "result":Ljava/lang/String;
    .restart local v14    # "files":[Ljava/io/File;
    :cond_6
    array-length v0, v14

    move/from16 v24, v0

    goto :goto_5

    .line 3057
    .end local v14    # "files":[Ljava/io/File;
    :cond_7
    new-instance v10, Lcom/phonemanager2345/model/FileInfoBean;

    invoke-direct {v10}, Lcom/phonemanager2345/model/FileInfoBean;-><init>()V

    .line 3058
    .restart local v10    # "fileInfo":Lcom/phonemanager2345/model/FileInfoBean;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileName(Ljava/lang/String;)V

    .line 3059
    const-string v24, "file"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileType(Ljava/lang/String;)V

    .line 3060
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setFileSize(Ljava/lang/String;)V

    .line 3062
    :try_start_1
    new-instance v24, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static/range {v24 .. v24}, Lcom/phonemanager2345/zhushou/CommandHander;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/phonemanager2345/model/FileInfoBean;->setModifyTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3067
    :goto_7
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/phonemanager2345/model/FileInfoListBean;->setFileCount(I)V

    goto :goto_6

    .line 3063
    :catch_1
    move-exception v7

    .line 3064
    .restart local v7    # "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_7
.end method

.method public static returnIcons(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 17
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 908
    move/from16 v0, p0

    new-array v5, v0, [B

    .line 910
    .local v5, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 912
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 913
    .local v13, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v14, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    const-class v16, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual/range {v14 .. v16}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phonemanager2345/model/IconCollation;

    .line 914
    .local v6, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 917
    iget-object v14, v6, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    if-eqz v14, :cond_3

    iget-object v14, v6, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 918
    iget-object v14, v6, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/phonemanager2345/model/IconInfo;

    .line 919
    .local v9, "info":Lcom/phonemanager2345/model/IconInfo;
    iget-object v14, v9, Lcom/phonemanager2345/model/IconInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    .end local v9    # "info":Lcom/phonemanager2345/model/IconInfo;
    :cond_0
    iget-object v14, v6, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 922
    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 923
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 924
    const/16 v14, 0x53

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 925
    const/16 v14, 0x54

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 926
    const/16 v14, 0x41

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 927
    const/16 v14, 0x54

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 928
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 929
    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    .line 930
    .local v2, "adler32":Ljava/util/zip/Adler32;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 931
    .local v4, "bStream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 932
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 933
    const/4 v3, 0x0

    .line 935
    .local v3, "b":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 938
    :goto_2
    if-eqz v3, :cond_1

    .line 939
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 940
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v3, v14, v15, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 941
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 942
    .local v8, "icon":[B
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v8, v14, v2, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->writeIconToSocket([BLjava/lang/String;Ljava/util/zip/Adler32;Ljava/io/BufferedOutputStream;)V

    goto :goto_1

    .line 950
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "icon":[B
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v14, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 959
    .end local v2    # "adler32":Ljava/util/zip/Adler32;
    .end local v4    # "bStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 960
    const/4 v13, 0x0

    .line 961
    const/4 v6, 0x0

    .line 962
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 963
    const/4 v10, 0x0

    .line 964
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 965
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 967
    return-void

    .line 953
    :cond_3
    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 954
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 955
    sget-object v14, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 956
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_3

    .line 936
    .restart local v2    # "adler32":Ljava/util/zip/Adler32;
    .restart local v3    # "b":Landroid/graphics/Bitmap;
    .restart local v4    # "bStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method protected static returnImageFiles(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 28
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 850
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "date_modified"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    .line 854
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->sortOrder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 857
    .local v9, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 858
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 859
    .local v16, "idd":I
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 860
    .local v10, "data":I
    const-string v2, "bucket_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 861
    .local v15, "id":I
    const-string v2, "bucket_display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 862
    .local v21, "name":I
    const-string v2, "_size"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 863
    .local v25, "size":I
    const-string v2, "mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 864
    .local v27, "type":I
    const-string v2, "date_modified"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 866
    .local v11, "dataModify":I
    new-instance v23, Lcom/google/gson/JsonObject;

    invoke-direct/range {v23 .. v23}, Lcom/google/gson/JsonObject;-><init>()V

    .line 867
    .local v23, "result":Lcom/google/gson/JsonObject;
    new-instance v8, Lcom/google/gson/JsonArray;

    invoke-direct {v8}, Lcom/google/gson/JsonArray;-><init>()V

    .line 868
    .local v8, "array":Lcom/google/gson/JsonArray;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 869
    .local v13, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 870
    .local v12, "date":Ljava/util/Date;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    new-instance v22, Lcom/google/gson/JsonObject;

    invoke-direct/range {v22 .. v22}, Lcom/google/gson/JsonObject;-><init>()V

    .line 872
    .local v22, "object":Lcom/google/gson/JsonObject;
    const-string v2, "mobilePath"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v2, "fileSize"

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 875
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 876
    .local v18, "modify":J
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v18

    invoke-virtual {v12, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 877
    invoke-virtual {v13, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 878
    .local v14, "f":Ljava/lang/String;
    const-string v2, "modifyTime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v2, "id"

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 880
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 882
    .end local v14    # "f":Ljava/lang/String;
    .end local v18    # "modify":J
    .end local v22    # "object":Lcom/google/gson/JsonObject;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 883
    const-string v2, "filelist"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 884
    const-string v2, "error_code"

    const-string v3, "00001"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v2, "total_number"

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 887
    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v24

    .line 888
    .local v24, "s":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    move/from16 v20, v0

    .line 889
    .local v20, "nCount":I
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 890
    .local v17, "length":[B
    const/4 v2, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 891
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v26, v0

    .line 892
    .local v26, "t":[B
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v0, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 893
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 894
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 895
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 898
    const/4 v8, 0x0

    .line 900
    const/16 v23, 0x0

    .line 901
    const/16 v24, 0x0

    .line 902
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 903
    return-void
.end method

.method public static returnImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 32
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 407
    move/from16 v0, p0

    new-array v8, v0, [B

    .line 409
    .local v8, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 410
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 411
    .local v21, "jsonString":Ljava/lang/String;
    sget-object v29, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    const-class v30, Lcom/phonemanager2345/model/IconCollation;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/phonemanager2345/model/IconCollation;

    .line 412
    .local v10, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_5

    .line 414
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/phonemanager2345/model/IconInfo;

    .line 415
    .local v20, "info":Lcom/phonemanager2345/model/IconInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/phonemanager2345/model/IconInfo;->id:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    .end local v20    # "info":Lcom/phonemanager2345/model/IconInfo;
    :cond_0
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 418
    const/16 v29, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 419
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 420
    const/16 v29, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 421
    const/16 v29, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 422
    const/16 v29, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 423
    const/16 v29, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 424
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 425
    new-instance v4, Ljava/util/zip/Adler32;

    invoke-direct {v4}, Ljava/util/zip/Adler32;-><init>()V

    .line 429
    .local v4, "adler32":Ljava/util/zip/Adler32;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    .local v6, "bStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 432
    .local v11, "cr":Landroid/content/ContentResolver;
    sget-object v27, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 433
    .local v27, "uri":Landroid/net/Uri;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    const-string v30, "_data"

    aput-object v30, v25, v29

    .line 434
    .local v25, "projection":[Ljava/lang/String;
    const-string v28, "_id="

    .line 436
    .local v28, "where":Ljava/lang/String;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 437
    .local v7, "bfo":Landroid/graphics/BitmapFactory$Options;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 438
    const/16 v29, 0x0

    move/from16 v0, v29

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 439
    sget-object v29, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v29

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 442
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 443
    .local v18, "id":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v11, v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 445
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 446
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 448
    .local v24, "path":Ljava/lang/String;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 454
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 456
    const/16 v29, 0xc8

    const/16 v30, 0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/market2345/common/util/Utils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 457
    const/16 v29, 0x0

    move/from16 v0, v29

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 459
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 461
    .local v5, "b":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 462
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 463
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const/16 v29, 0x1

    move-wide/from16 v0, v30

    move/from16 v2, v29

    invoke-static {v11, v0, v1, v2, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 466
    :cond_2
    if-eqz v5, :cond_1

    .line 468
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 469
    sget-object v29, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v30, 0x64

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 471
    sget-object v29, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 472
    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 473
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 474
    .local v26, "temp":[B
    const/16 v29, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 475
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 477
    invoke-virtual {v4}, Ljava/util/zip/Adler32;->reset()V

    .line 478
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 479
    .local v17, "icon":[B
    const/16 v29, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 480
    invoke-virtual {v4}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v14

    .line 481
    .local v14, "crc32":J
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 482
    .local v12, "crc":[B
    invoke-static {v14, v15, v12}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 483
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 485
    sget-object v29, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 486
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 487
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 489
    const/16 v22, 0x400

    .line 490
    .local v22, "len":I
    const/16 v19, 0x0

    .line 491
    .local v19, "index":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x400

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 492
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    .line 495
    :cond_3
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 496
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 499
    add-int v19, v19, v22

    .line 500
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v19

    const/16 v30, 0x400

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 501
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    sub-int v22, v29, v19

    goto :goto_2

    .line 449
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v12    # "crc":[B
    .end local v14    # "crc32":J
    .end local v17    # "icon":[B
    .end local v19    # "index":I
    .end local v22    # "len":I
    .end local v26    # "temp":[B
    :catch_0
    move-exception v13

    .line 450
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 517
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "id":I
    .end local v24    # "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :goto_3
    sget-object v29, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 521
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 528
    .end local v4    # "adler32":Ljava/util/zip/Adler32;
    .end local v6    # "bStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bfo":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v25    # "projection":[Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v28    # "where":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 530
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 531
    return-void

    .line 523
    :cond_5
    const/16 v29, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 524
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 525
    sget-object v29, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 526
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_4

    .line 518
    .restart local v4    # "adler32":Ljava/util/zip/Adler32;
    .restart local v6    # "bStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bfo":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v25    # "projection":[Ljava/lang/String;
    .restart local v27    # "uri":Landroid/net/Uri;
    .restart local v28    # "where":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto :goto_3
.end method

.method public static returnImagesNumberByType(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 20
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 192
    const/4 v15, -0x1

    .line 194
    .local v15, "order":I
    move/from16 v0, p0

    new-array v8, v0, [B

    .line 195
    .local v8, "buffer":[B
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 196
    sget-object v2, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 197
    .local v14, "object":Lcom/google/gson/JsonObject;
    new-instance v18, Lcom/google/gson/JsonObject;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/JsonObject;-><init>()V

    .line 198
    .local v18, "result":Lcom/google/gson/JsonObject;
    const-string v2, "fileType"

    invoke-virtual {v14, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 199
    const-string v2, "fileType"

    invoke-virtual {v14, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    .line 200
    const/16 v2, 0xa

    if-ne v15, v2, :cond_0

    .line 201
    invoke-static/range {p0 .. p3}, Lcom/phonemanager2345/zhushou/CommandHander;->returnAppsNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    .line 286
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v2, 0x3

    if-ne v15, v2, :cond_1

    .line 206
    invoke-static/range {p0 .. p3}, Lcom/phonemanager2345/zhushou/CommandHander;->returnMusicNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v2, 0x4

    if-ne v15, v2, :cond_2

    .line 209
    invoke-static/range {p0 .. p3}, Lcom/phonemanager2345/zhushou/CommandHander;->returnRingNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v2, 0x5

    if-ne v15, v2, :cond_3

    .line 212
    invoke-static/range {p0 .. p3}, Lcom/phonemanager2345/zhushou/CommandHander;->returnVideoNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto :goto_0

    .line 215
    :cond_3
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    .line 217
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 220
    .local v9, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 222
    .local v10, "data":I
    const-string v2, "bucket_display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 224
    .local v12, "name":I
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    .line 225
    .local v13, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v13, v2

    .line 226
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v13, v2

    .line 227
    const/16 v19, 0x0

    .line 228
    .local v19, "totalNumber":I
    const/16 v17, -0x1

    .line 229
    .local v17, "posi":I
    const-string v16, "----"

    .line 230
    .local v16, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    move/from16 v17, v0

    .line 232
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 234
    :cond_4
    packed-switch v15, :pswitch_data_0

    .line 276
    :cond_5
    const-string v2, "total_number"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 277
    const-string v2, "error_code"

    const-string v3, "00001"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "data":I
    .end local v12    # "name":I
    .end local v13    # "names":[Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "posi":I
    .end local v19    # "totalNumber":I
    :goto_1
    const/16 v2, 0xd

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    goto/16 :goto_0

    .line 236
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "data":I
    .restart local v12    # "name":I
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "posi":I
    .restart local v19    # "totalNumber":I
    :cond_6
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    new-instance v11, Ljava/io/File;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v3, v13, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 241
    const/4 v2, 0x0

    aget-object v2, v13, v2

    const-string v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    aget-object v2, v13, v2

    const-string v3, "dcim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongPicture(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 250
    .end local v11    # "f":Ljava/io/File;
    :cond_8
    :goto_3
    :pswitch_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    new-instance v11, Ljava/io/File;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v11    # "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 253
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v3, v13, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 255
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 256
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 263
    .end local v11    # "f":Ljava/io/File;
    :cond_9
    :goto_4
    :pswitch_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    new-instance v11, Ljava/io/File;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v11    # "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 266
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v3, v13, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->getDoubleOrignalName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 268
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongOtherImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 283
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "data":I
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "name":I
    .end local v13    # "names":[Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "posi":I
    .end local v19    # "totalNumber":I
    :cond_a
    const-string v2, "error_code"

    const-string v3, "00002"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "data":I
    .restart local v12    # "name":I
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "posi":I
    .restart local v19    # "totalNumber":I
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static returnMemoryInfo(Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 18
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    const/4 v3, 0x0

    .line 1142
    .local v3, "count":I
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1143
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1144
    .local v9, "object":Lcom/google/gson/JsonObject;
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1146
    .local v2, "array":Lcom/google/gson/JsonArray;
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1147
    .local v8, "memory":Lcom/google/gson/JsonObject;
    const-string v16, "name"

    const-string v17, "phone"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v16, "type"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1149
    const-string v16, "path"

    const-string v17, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableInternalMemorySize()J

    move-result-wide v14

    .line 1151
    .local v14, "size":J
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 1152
    .local v4, "dest":[B
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1158
    const-string v16, "avaliablesizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1159
    const-string v16, "avaliablesizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1160
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getTotalInternalMemorySize()J

    move-result-wide v14

    .line 1161
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1167
    const-string v16, "sizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1168
    const-string v16, "sizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1169
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1170
    add-int/lit8 v3, v3, 0x1

    .line 1172
    const/4 v10, 0x0

    .line 1173
    .local v10, "sdCard1":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1174
    .local v11, "sdCard2":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1175
    .local v7, "internal":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1176
    .local v6, "external":Ljava/lang/String;
    const-string v16, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1179
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getExtraSDCards(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1180
    .local v12, "sdCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 1181
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sdCard2":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1184
    .restart local v11    # "sdCard2":Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_5

    if-nez v11, :cond_5

    .line 1185
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1187
    const/4 v7, 0x0

    .line 1188
    move-object v6, v10

    .line 1208
    :cond_2
    :goto_0
    new-instance v13, Lcom/google/gson/JsonObject;

    invoke-direct {v13}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1209
    .local v13, "sdcard01":Lcom/google/gson/JsonObject;
    const-string v16, "name"

    const-string v17, "sdcard"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v16, "type"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1211
    const-string v16, "path"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-static {v7}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableMemorySize(Ljava/lang/String;)J

    move-result-wide v14

    .line 1214
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1220
    const-string v16, "avaliablesizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1221
    const-string v16, "avaliablesizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1223
    invoke-static {v7}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getTotalMemorySize(Ljava/lang/String;)J

    move-result-wide v14

    .line 1224
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1230
    const-string v16, "sizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1231
    const-string v16, "sizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1232
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1233
    add-int/lit8 v3, v3, 0x1

    .line 1237
    if-eqz v6, :cond_3

    .line 1238
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1239
    .local v5, "exSDCard":Lcom/google/gson/JsonObject;
    const-string v16, "name"

    const-string v17, "sdcard"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v16, "type"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1241
    const-string v16, "path"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {v6}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableMemorySize(Ljava/lang/String;)J

    move-result-wide v14

    .line 1243
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1245
    const-string v16, "avaliablesizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1246
    const-string v16, "avaliablesizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1247
    invoke-static {v6}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getTotalMemorySize(Ljava/lang/String;)J

    move-result-wide v14

    .line 1248
    invoke-static {v14, v15, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1250
    const-string v16, "sizeHigh"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1251
    const-string v16, "sizeLow"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1252
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1253
    add-int/lit8 v3, v3, 0x1

    .line 1257
    .end local v5    # "exSDCard":Lcom/google/gson/JsonObject;
    :cond_3
    const-string v16, "softlist"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1258
    const-string v16, "error_code"

    const-string v17, "00001"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v16, "total_number"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1260
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1261
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v9, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1262
    return-void

    .line 1190
    .end local v13    # "sdcard01":Lcom/google/gson/JsonObject;
    :cond_4
    move-object v7, v10

    .line 1191
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1193
    :cond_5
    if-nez v10, :cond_6

    if-eqz v11, :cond_6

    .line 1194
    move-object v7, v11

    .line 1195
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1196
    :cond_6
    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 1197
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1199
    move-object v7, v11

    .line 1200
    move-object v6, v10

    goto/16 :goto_0

    .line 1202
    :cond_7
    move-object v7, v10

    .line 1203
    move-object v6, v11

    goto/16 :goto_0
.end method

.method public static returnMusicInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 24
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1773
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1774
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "date_added"

    aput-object v3, v4, v2

    .line 1779
    .local v4, "projection":[Ljava/lang/String;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v17, "format":Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 1781
    .local v14, "date":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_music=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1784
    .local v12, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1786
    const-string v2, "artist"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1787
    .local v11, "artName":I
    const-string v2, "album"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1788
    .local v9, "albumName":I
    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1789
    .local v19, "mediaName":I
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1790
    .local v18, "id":I
    const-string v2, "_size"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1791
    .local v22, "size":I
    const-string v2, "duration"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1792
    .local v15, "duration":I
    const-string v2, "date_added"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1793
    .local v8, "addTime":I
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1794
    .local v23, "sourcePath":I
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1795
    .local v21, "result":Lcom/google/gson/JsonObject;
    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1796
    .local v10, "array":Lcom/google/gson/JsonArray;
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1797
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1798
    .local v13, "data":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1800
    new-instance v20, Lcom/google/gson/JsonObject;

    invoke-direct/range {v20 .. v20}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1801
    .local v20, "object":Lcom/google/gson/JsonObject;
    const-string v2, "sourcePath"

    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v2, "id"

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1803
    const-string v2, "mediaName"

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v2, "size"

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1805
    const-string v2, "duration"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1806
    const-string v2, "artName"

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v2, "albumName"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v14, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1809
    const-string v2, "addTime"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 1814
    .end local v13    # "data":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :goto_1
    const-string v2, "error_code"

    const-string v3, "00001"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v2, "total_number"

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1819
    const-string v2, "audiolist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1820
    const/16 v2, 0x15

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1823
    return-void

    .line 1815
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static returnMusicNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 368
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 369
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_music=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 373
    .local v11, "totalNumber":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 374
    .local v10, "sourcePath":I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "data":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 383
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 388
    .local v9, "result":Lcom/google/gson/JsonObject;
    const-string v0, "total_number"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 389
    const-string v0, "error_code"

    const-string v1, "00001"

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v0, 0xd

    invoke-static {v9, v0, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 392
    return-void

    .line 384
    .end local v9    # "result":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static returnOriginalApk(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 23
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2429
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2430
    move/from16 v0, p0

    new-array v6, v0, [B

    .line 2432
    .local v6, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2433
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    const-class v22, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual/range {v20 .. v22}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/phonemanager2345/model/IconCollation;

    .line 2434
    .local v7, "coll":Lcom/phonemanager2345/model/IconCollation;
    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->apklist:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->apklist:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 2435
    const/16 v20, 0x1e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2436
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2437
    const/16 v20, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2438
    const/16 v20, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2439
    const/16 v20, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2440
    const/16 v20, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2441
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2442
    new-instance v4, Ljava/util/zip/Adler32;

    invoke-direct {v4}, Ljava/util/zip/Adler32;-><init>()V

    .line 2443
    .local v4, "adler32":Ljava/util/zip/Adler32;
    const/16 v20, 0x2800

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 2444
    .local v9, "datas":[B
    const/16 v16, 0x0

    .line 2445
    .local v16, "input":Ljava/io/FileInputStream;
    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->apklist:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/phonemanager2345/model/IconInfo;

    .line 2446
    .local v15, "info":Lcom/phonemanager2345/model/IconInfo;
    new-instance v13, Ljava/io/File;

    iget-object v0, v15, Lcom/phonemanager2345/model/IconInfo;->apkpath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2447
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2448
    if-eqz v16, :cond_1

    .line 2450
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    :cond_1
    :goto_0
    new-instance v16, Ljava/io/FileInputStream;

    .end local v16    # "input":Ljava/io/FileInputStream;
    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2456
    .restart local v16    # "input":Ljava/io/FileInputStream;
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2457
    iget-object v5, v15, Lcom/phonemanager2345/model/IconInfo;->apkname:Ljava/lang/String;

    .line 2458
    .local v5, "apkName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2459
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2464
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    .line 2465
    .local v19, "total":I
    const-wide/16 v10, 0x1

    .line 2466
    .local v10, "crc32":J
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 2467
    .local v8, "crc":[B
    invoke-static {v10, v11, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 2468
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2469
    const/16 v17, -0x1

    .line 2470
    .local v17, "length":I
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2471
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 2472
    .local v18, "temp":[B
    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2473
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2474
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 2475
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 2476
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    .line 2451
    .end local v5    # "apkName":Ljava/lang/String;
    .end local v8    # "crc":[B
    .end local v10    # "crc32":J
    .end local v17    # "length":I
    .end local v18    # "temp":[B
    .end local v19    # "total":I
    :catch_0
    move-exception v12

    .line 2452
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2482
    .end local v4    # "adler32":Ljava/util/zip/Adler32;
    .end local v9    # "datas":[B
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "f":Ljava/io/File;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Lcom/phonemanager2345/model/IconInfo;
    .end local v16    # "input":Ljava/io/FileInputStream;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2483
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2484
    return-void
.end method

.method public static returnOriginalApkByName(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 25
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2488
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2489
    move/from16 v0, p0

    new-array v6, v0, [B

    .line 2491
    .local v6, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2492
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    const-class v24, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual/range {v22 .. v24}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/phonemanager2345/model/IconCollation;

    .line 2493
    .local v7, "coll":Lcom/phonemanager2345/model/IconCollation;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 2494
    .local v19, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_2

    .line 2495
    const/16 v22, 0x1e

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2496
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2497
    const/16 v22, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2498
    const/16 v22, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2499
    const/16 v22, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2500
    const/16 v22, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2501
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2502
    new-instance v4, Ljava/util/zip/Adler32;

    invoke-direct {v4}, Ljava/util/zip/Adler32;-><init>()V

    .line 2503
    .local v4, "adler32":Ljava/util/zip/Adler32;
    const/16 v22, 0x2800

    move/from16 v0, v22

    new-array v9, v0, [B

    .line 2504
    .local v9, "datas":[B
    const/16 v16, 0x0

    .line 2505
    .local v16, "input":Ljava/io/FileInputStream;
    iget-object v0, v7, Lcom/phonemanager2345/model/IconCollation;->packageList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/phonemanager2345/model/IconInfo;

    .line 2507
    .local v15, "info":Lcom/phonemanager2345/model/IconInfo;
    :try_start_0
    iget-object v0, v15, Lcom/phonemanager2345/model/IconInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2000

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 2508
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_0

    .line 2509
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/phonemanager2345/model/IconInfo;->apkpath:Ljava/lang/String;

    .line 2510
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/phonemanager2345/model/IconInfo;->apkname:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    new-instance v13, Ljava/io/File;

    iget-object v0, v15, Lcom/phonemanager2345/model/IconInfo;->apkpath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2519
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2520
    if-eqz v16, :cond_1

    .line 2522
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2527
    :cond_1
    :goto_1
    new-instance v16, Ljava/io/FileInputStream;

    .end local v16    # "input":Ljava/io/FileInputStream;
    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2528
    .restart local v16    # "input":Ljava/io/FileInputStream;
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2529
    iget-object v5, v15, Lcom/phonemanager2345/model/IconInfo;->apkname:Ljava/lang/String;

    .line 2530
    .local v5, "apkName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2531
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2536
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    .line 2537
    .local v21, "total":I
    const-wide/16 v10, 0x1

    .line 2538
    .local v10, "crc32":J
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v8, v0, [B

    .line 2539
    .local v8, "crc":[B
    invoke-static {v10, v11, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 2540
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2541
    const/16 v17, -0x1

    .line 2542
    .local v17, "length":I
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2543
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 2544
    .local v20, "temp":[B
    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2545
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2546
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 2547
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 2548
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_2

    .line 2514
    .end local v5    # "apkName":Ljava/lang/String;
    .end local v8    # "crc":[B
    .end local v10    # "crc32":J
    .end local v13    # "f":Ljava/io/File;
    .end local v17    # "length":I
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v20    # "temp":[B
    .end local v21    # "total":I
    :catch_0
    move-exception v12

    .line 2515
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 2523
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "f":Ljava/io/File;
    .restart local v18    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v12

    .line 2524
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2554
    .end local v4    # "adler32":Ljava/util/zip/Adler32;
    .end local v9    # "datas":[B
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "f":Ljava/io/File;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Lcom/phonemanager2345/model/IconInfo;
    .end local v16    # "input":Ljava/io/FileInputStream;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2555
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2556
    return-void
.end method

.method public static returnOrinalImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x54

    const/16 v10, 0x9

    const/4 v9, 0x0

    .line 1409
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1410
    new-array v1, p0, [B

    .line 1412
    .local v1, "buffer":[B
    invoke-static {p0, p1, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1413
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 1414
    .local v6, "jsonString":Ljava/lang/String;
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonemanager2345/model/IconCollation;

    .line 1415
    .local v2, "coll":Lcom/phonemanager2345/model/IconCollation;
    iget-object v7, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1416
    invoke-static {p2, v10}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1417
    invoke-static {p2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1418
    const/16 v7, 0x53

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1419
    invoke-virtual {p2, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1420
    const/16 v7, 0x41

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1421
    invoke-virtual {p2, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1422
    invoke-static {p2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1423
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 1424
    .local v0, "adler32":Ljava/util/zip/Adler32;
    const/4 v5, 0x0

    .line 1425
    .local v5, "input":Ljava/io/FileInputStream;
    iget-object v7, v2, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/IconInfo;

    .line 1426
    .local v4, "info":Lcom/phonemanager2345/model/IconInfo;
    iget-object v7, v4, Lcom/phonemanager2345/model/IconInfo;->path:Ljava/lang/String;

    iget v8, v4, Lcom/phonemanager2345/model/IconInfo;->id:I

    invoke-static {v7, v8, v5, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->sendDile(Ljava/lang/String;ILjava/io/FileInputStream;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    .line 1429
    .end local v4    # "info":Lcom/phonemanager2345/model/IconInfo;
    :cond_0
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1430
    invoke-static {p2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1432
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    .end local v0    # "adler32":Ljava/util/zip/Adler32;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "input":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1444
    const/4 v2, 0x0

    .line 1445
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1446
    return-void

    .line 1438
    :cond_1
    invoke-static {p2, v10}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1439
    invoke-static {p2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1440
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1441
    invoke-static {p2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    .line 1433
    .restart local v0    # "adler32":Ljava/util/zip/Adler32;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static returnOrinalMedia(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 20
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2203
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2204
    move/from16 v0, p0

    new-array v3, v0, [B

    .line 2206
    .local v3, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2207
    sget-object v17, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-class v19, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual/range {v17 .. v19}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/IconCollation;

    .line 2208
    .local v4, "coll":Lcom/phonemanager2345/model/IconCollation;
    iget-object v0, v4, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v4, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 2209
    const/16 v17, 0x1a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2210
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2211
    const/16 v17, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2212
    const/16 v17, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2213
    const/16 v17, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2214
    const/16 v17, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 2215
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2216
    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    .line 2217
    .local v2, "adler32":Ljava/util/zip/Adler32;
    const/high16 v17, 0x10000

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 2218
    .local v8, "datas":[B
    const/4 v13, 0x0

    .line 2219
    .local v13, "input":Ljava/io/FileInputStream;
    iget-object v0, v4, Lcom/phonemanager2345/model/IconCollation;->pathList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/phonemanager2345/model/IconInfo;

    .line 2220
    .local v12, "info":Lcom/phonemanager2345/model/IconInfo;
    new-instance v10, Ljava/io/File;

    iget-object v0, v12, Lcom/phonemanager2345/model/IconInfo;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2221
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2222
    if-eqz v13, :cond_1

    .line 2224
    :try_start_0
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    :cond_1
    :goto_0
    new-instance v13, Ljava/io/FileInputStream;

    .end local v13    # "input":Ljava/io/FileInputStream;
    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2230
    .restart local v13    # "input":Ljava/io/FileInputStream;
    sget-object v17, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2231
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2232
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 2233
    .local v15, "temp":[B
    iget v0, v12, Lcom/phonemanager2345/model/IconInfo;->id:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2234
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2239
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    .line 2240
    .local v16, "total":I
    const-wide/16 v6, 0x1

    .line 2241
    .local v6, "crc32":J
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 2242
    .local v5, "crc":[B
    invoke-static {v6, v7, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 2243
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2244
    const/4 v14, -0x1

    .line 2245
    .local v14, "length":I
    sget-object v17, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2246
    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2247
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2248
    :goto_1
    invoke-virtual {v13, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    .line 2249
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1, v14}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    .line 2225
    .end local v5    # "crc":[B
    .end local v6    # "crc32":J
    .end local v14    # "length":I
    .end local v15    # "temp":[B
    .end local v16    # "total":I
    :catch_0
    move-exception v9

    .line 2226
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2255
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "info":Lcom/phonemanager2345/model/IconInfo;
    :cond_2
    sget-object v17, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2256
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2257
    if-eqz v13, :cond_3

    .line 2259
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2271
    .end local v2    # "adler32":Ljava/util/zip/Adler32;
    .end local v8    # "datas":[B
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "input":Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2272
    const/4 v4, 0x0

    .line 2273
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2275
    return-void

    .line 2260
    .restart local v2    # "adler32":Ljava/util/zip/Adler32;
    .restart local v8    # "datas":[B
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 2261
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2266
    .end local v2    # "adler32":Ljava/util/zip/Adler32;
    .end local v8    # "datas":[B
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "input":Ljava/io/FileInputStream;
    :cond_4
    const/16 v17, 0x1a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2267
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2268
    sget-object v17, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2269
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_2
.end method

.method public static returnRingInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 25
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1828
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "date_added"

    aput-object v3, v4, v2

    .line 1833
    .local v4, "projection":[Ljava/lang/String;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1834
    .local v18, "format":Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 1835
    .local v15, "date":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_ringtone=1 or is_notification=1 or is_alarm=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1841
    .local v12, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1843
    const-string v2, "artist"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1844
    .local v11, "artName":I
    const-string v2, "album"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1845
    .local v9, "albumName":I
    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1846
    .local v20, "mediaName":I
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1847
    .local v19, "id":I
    const-string v2, "_size"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1848
    .local v23, "size":I
    const-string v2, "duration"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1849
    .local v16, "duration":I
    const-string v2, "date_added"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1850
    .local v8, "addTime":I
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1851
    .local v24, "sourcePath":I
    new-instance v22, Lcom/google/gson/JsonObject;

    invoke-direct/range {v22 .. v22}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1852
    .local v22, "result":Lcom/google/gson/JsonObject;
    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1853
    .local v10, "array":Lcom/google/gson/JsonArray;
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1854
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1855
    .local v14, "data":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1857
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1858
    .local v21, "object":Lcom/google/gson/JsonObject;
    const-string v2, "sourcePath"

    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v2, "id"

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1860
    const-string v2, "mediaName"

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string v2, "size"

    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1862
    const-string v2, "duration"

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1863
    const-string v2, "artName"

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v2, "albumName"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v15, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1866
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1867
    const-string v2, "addTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 1872
    .end local v14    # "data":Ljava/lang/String;
    .end local v17    # "f":Ljava/io/File;
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_ringtone=1 or is_notification=1 or is_alarm=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1882
    .local v13, "cInternal":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1884
    const-string v2, "artist"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1885
    const-string v2, "album"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1886
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1887
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1888
    const-string v2, "_size"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1889
    const-string v2, "duration"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1890
    const-string v2, "date_added"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1891
    const-string v2, "_data"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1892
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1897
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1898
    .restart local v21    # "object":Lcom/google/gson/JsonObject;
    const-string v2, "sourcePath"

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v2, "id"

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1900
    const-string v2, "mediaName"

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v2, "size"

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1902
    const-string v2, "duration"

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1903
    const-string v2, "artName"

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v2, "albumName"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v15, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1906
    const-string v2, "addTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1908
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_2

    .line 1912
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    :cond_2
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1915
    :goto_3
    const-string v2, "error_code"

    const-string v3, "00001"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v2, "total_number"

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1917
    const-string v2, "audiolist"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1918
    const/16 v2, 0x15

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1921
    return-void

    .line 1873
    .end local v13    # "cInternal":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 1913
    .restart local v13    # "cInternal":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private static returnRingNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 13
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 318
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 319
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_ringtone=1 or is_notification=1 or is_alarm=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 325
    .local v6, "c":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 326
    .local v12, "totalNumber":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 327
    .local v11, "sourcePath":I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 328
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "data":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 336
    .end local v8    # "data":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_ringtone=1 or is_notification=1 or is_alarm=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 344
    .local v7, "cInternal":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 345
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 346
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 355
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :goto_3
    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    .line 359
    .local v10, "result":Lcom/google/gson/JsonObject;
    const-string v0, "total_number"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 360
    const-string v0, "error_code"

    const-string v1, "00001"

    invoke-virtual {v10, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v0, 0xd

    invoke-static {v10, v0, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 363
    return-void

    .line 337
    .end local v7    # "cInternal":Landroid/database/Cursor;
    .end local v10    # "result":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 356
    .restart local v7    # "cInternal":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected static returnVersionCode(Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 10
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 1265
    const-class v6, Lcom/phonemanager2345/zhushou/CommandHander;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "returnVersionCode start"

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1266
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1267
    const-class v6, Lcom/phonemanager2345/zhushou/CommandHander;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "returnVersionCode decoration end"

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1268
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1269
    .local v2, "object1":Lcom/google/gson/JsonObject;
    const/16 v5, 0x26

    .line 1270
    .local v5, "versionCode":I
    const-string v6, "versionCode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1271
    const-string v6, "error_code"

    const-string v7, "00001"

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1273
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v1, v6

    .line 1274
    .local v1, "nCount":I
    new-array v0, v8, [B

    .line 1275
    .local v0, "length":[B
    invoke-static {v1, v0, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 1276
    new-array v4, v8, [B

    .line 1277
    .local v4, "t":[B
    invoke-static {v8, v4, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 1278
    invoke-virtual {p0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1279
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1280
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1281
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1282
    const-class v6, Lcom/phonemanager2345/zhushou/CommandHander;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "returnVersionCode end"

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1283
    const-class v6, Lcom/phonemanager2345/zhushou/CommandHander;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<<<======================================="

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1284
    return-void
.end method

.method public static returnVideoIcon(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 26
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1974
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1975
    move/from16 v0, p0

    new-array v9, v0, [B

    .line 1977
    .local v9, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1978
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    const-class v24, Lcom/phonemanager2345/model/IconCollation;

    invoke-virtual/range {v22 .. v24}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/phonemanager2345/model/IconCollation;

    .line 1979
    .local v10, "coll":Lcom/phonemanager2345/model/IconCollation;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 1981
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/phonemanager2345/model/IconInfo;

    .line 1982
    .local v18, "info":Lcom/phonemanager2345/model/IconInfo;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/phonemanager2345/model/IconInfo;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1984
    .end local v18    # "info":Lcom/phonemanager2345/model/IconInfo;
    :cond_0
    iget-object v0, v10, Lcom/phonemanager2345/model/IconCollation;->idList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 1985
    const/16 v22, 0x18

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1986
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1987
    const/16 v22, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1988
    const/16 v22, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1989
    const/16 v22, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1990
    const/16 v22, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1991
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1992
    new-instance v6, Ljava/util/zip/Adler32;

    invoke-direct {v6}, Ljava/util/zip/Adler32;-><init>()V

    .line 1993
    .local v6, "adler32":Ljava/util/zip/Adler32;
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1994
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1995
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1996
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1997
    .local v8, "bStream":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1998
    .local v17, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2000
    .local v7, "b":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 2001
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2002
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2004
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2005
    const/16 v22, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2006
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 2007
    .local v21, "temp":[B
    const/16 v22, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2008
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2010
    invoke-virtual {v6}, Ljava/util/zip/Adler32;->reset()V

    .line 2011
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 2012
    .local v16, "icon":[B
    const/16 v22, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 2013
    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v12

    .line 2014
    .local v12, "crc32":J
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v11, v0, [B

    .line 2015
    .local v11, "crc":[B
    invoke-static {v12, v13, v11}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 2016
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2018
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2019
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2020
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2021
    const/16 v22, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    goto/16 :goto_1

    .line 2030
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "crc":[B
    .end local v12    # "crc32":J
    .end local v16    # "icon":[B
    .end local v17    # "id":I
    .end local v21    # "temp":[B
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2034
    :goto_2
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2035
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2042
    .end local v6    # "adler32":Ljava/util/zip/Adler32;
    .end local v8    # "bStream":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2043
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2044
    return-void

    .line 2031
    .restart local v6    # "adler32":Ljava/util/zip/Adler32;
    .restart local v8    # "bStream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v14

    .line 2032
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2037
    .end local v6    # "adler32":Ljava/util/zip/Adler32;
    .end local v8    # "bStream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/16 v22, 0x18

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2038
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 2039
    sget-object v22, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2040
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_3
.end method

.method public static returnVideoInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 22
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1925
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1926
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "date_added"

    aput-object v3, v4, v2

    .line 1930
    .local v4, "projection":[Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-direct {v15, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1931
    .local v15, "format":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 1932
    .local v12, "date":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1935
    .local v10, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1937
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1938
    .local v17, "mediaName":I
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1939
    .local v16, "id":I
    const-string v2, "_size"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1940
    .local v20, "size":I
    const-string v2, "duration"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1941
    .local v13, "duration":I
    const-string v2, "date_added"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1942
    .local v8, "addTime":I
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1943
    .local v21, "sourcePath":I
    new-instance v19, Lcom/google/gson/JsonObject;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1944
    .local v19, "result":Lcom/google/gson/JsonObject;
    new-instance v9, Lcom/google/gson/JsonArray;

    invoke-direct {v9}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1945
    .local v9, "array":Lcom/google/gson/JsonArray;
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1946
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1947
    .local v11, "data":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v14, "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1949
    new-instance v18, Lcom/google/gson/JsonObject;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1950
    .local v18, "object":Lcom/google/gson/JsonObject;
    const-string v2, "sourcePath"

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v2, "id"

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1952
    const-string v2, "mediaName"

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v2, "size"

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1954
    const-string v2, "duration"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1955
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v12, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1956
    const-string v2, "addTime"

    invoke-virtual {v15, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 1961
    .end local v11    # "data":Ljava/lang/String;
    .end local v14    # "f":Ljava/io/File;
    .end local v18    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1964
    :goto_1
    const-string v2, "error_code"

    const-string v3, "00001"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v2, "total_number"

    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1966
    const-string v2, "videolist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1967
    const/16 v2, 0x15

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1970
    return-void

    .line 1962
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static returnVideoNumber(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 291
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 292
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    .local v6, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 295
    .local v11, "totalNumber":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 296
    .local v10, "sourcePath":I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 297
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "data":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 305
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 310
    .local v9, "result":Lcom/google/gson/JsonObject;
    const-string v0, "total_number"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 311
    const-string v0, "error_code"

    const-string v1, "00001"

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/16 v0, 0xd

    invoke-static {v9, v0, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 313
    return-void

    .line 306
    .end local v9    # "result":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static saveImageFromPC(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 30
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1550
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1551
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 1552
    .local v5, "cmd":[B
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v9, v0, [B

    .line 1553
    .local v9, "datalength":[B
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1554
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1555
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1556
    .local v21, "result":Lcom/google/gson/JsonObject;
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1557
    .local v4, "array":Lcom/google/gson/JsonArray;
    const/16 v17, 0x0

    .line 1558
    .local v17, "ouy":Ljava/io/FileOutputStream;
    sget-object v27, Lcom/phonemanager2345/zhushou/CommandHander;->ID_STAT:[B

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v27

    if-nez v27, :cond_0

    .line 1559
    const-string v27, "error_code"

    const-string v28, "20001"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const/16 v27, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1650
    :goto_0
    return-void

    .line 1563
    :cond_0
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1564
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1566
    const/4 v12, 0x0

    .line 1567
    .local v12, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1568
    .local v16, "orignalPath":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1570
    .local v18, "path":Ljava/lang/String;
    new-instance v22, Lcom/phonemanager2345/mediastore/MediaScanner;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/phonemanager2345/mediastore/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1573
    .local v22, "scanner":Lcom/phonemanager2345/mediastore/MediaScanner;
    :goto_1
    sget-object v27, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1574
    if-eqz v17, :cond_1

    .line 1575
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 1641
    :cond_1
    const-string v27, "filelist"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1642
    const-string v27, "error_code"

    const-string v28, "00001"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v27, "total_number"

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1644
    const/16 v27, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1646
    const/4 v4, 0x0

    .line 1648
    const/16 v21, 0x0

    .line 1649
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1578
    :cond_2
    sget-object v27, Lcom/phonemanager2345/zhushou/CommandHander;->ID_TYPE:[B

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 1580
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 1581
    .local v26, "typeB":[B
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1582
    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v25

    .line 1583
    .local v25, "type":I
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1584
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1585
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v14

    .line 1586
    .local v14, "nameLength":I
    const-string v27, "nameLength"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-array v13, v14, [B

    .line 1588
    .local v13, "nameData":[B
    move-object/from16 v0, p1

    invoke-static {v14, v0, v13}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1589
    new-instance v16, Ljava/lang/String;

    .end local v16    # "orignalPath":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 1590
    .restart local v16    # "orignalPath":Ljava/lang/String;
    const-string v27, "orignalPath"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/16 v27, 0x8

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1593
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1594
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1595
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v20

    .line 1596
    .local v20, "pathLength":I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 1597
    .local v19, "pathData":[B
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1598
    .local v23, "specifyPath":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1603
    .end local v19    # "pathData":[B
    .end local v20    # "pathLength":I
    .end local v23    # "specifyPath":Ljava/lang/String;
    .local v24, "temp":Ljava/io/File;
    :goto_2
    if-nez v24, :cond_4

    .line 1604
    new-instance v27, Ljava/io/IOException;

    const-string v28, "sdcard not exit"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1600
    .end local v24    # "temp":Ljava/io/File;
    :cond_3
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->createProperName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v24

    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_2

    .line 1606
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1607
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 1608
    if-eqz v17, :cond_5

    .line 1610
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :cond_5
    :goto_3
    new-instance v17, Ljava/io/FileOutputStream;

    .end local v17    # "ouy":Ljava/io/FileOutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1616
    .restart local v17    # "ouy":Ljava/io/FileOutputStream;
    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v8, v0, [B

    .line 1617
    .local v8, "crc":[B
    const/16 v27, 0x8

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1619
    .end local v8    # "crc":[B
    .end local v13    # "nameData":[B
    .end local v14    # "nameLength":I
    .end local v24    # "temp":Ljava/io/File;
    .end local v25    # "type":I
    .end local v26    # "typeB":[B
    :cond_6
    sget-object v27, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1620
    if-eqz v17, :cond_8

    .line 1621
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v11

    .line 1622
    .local v11, "length":I
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableExternalMemorySize()J

    move-result-wide v6

    .line 1623
    .local v6, "availabeSize":J
    const v27, 0x19000

    add-int v27, v27, v11

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v27, v6, v28

    if-gez v27, :cond_7

    .line 1624
    new-instance v27, Ljava/io/IOException;

    const-string v28, "sdcard full"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1611
    .end local v6    # "availabeSize":J
    .end local v11    # "length":I
    .restart local v13    # "nameData":[B
    .restart local v14    # "nameLength":I
    .restart local v24    # "temp":Ljava/io/File;
    .restart local v25    # "type":I
    .restart local v26    # "typeB":[B
    :catch_0
    move-exception v10

    .line 1612
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1626
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "nameData":[B
    .end local v14    # "nameLength":I
    .end local v24    # "temp":Ljava/io/File;
    .end local v25    # "type":I
    .end local v26    # "typeB":[B
    .restart local v6    # "availabeSize":J
    .restart local v11    # "length":I
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/phonemanager2345/zhushou/CommandHander;->readProperData(Ljava/io/FileOutputStream;Ljava/io/BufferedInputStream;I)V

    .line 1627
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 1628
    new-instance v15, Lcom/google/gson/JsonObject;

    invoke-direct {v15}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1629
    .local v15, "object":Lcom/google/gson/JsonObject;
    const-string v27, "mobilePath"

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v27, "fileName"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const-string v27, "orignalName"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v4, v15}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1634
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/mediastore/MediaScanner;->scanFile(Ljava/lang/String;)V

    .line 1638
    .end local v6    # "availabeSize":J
    .end local v11    # "length":I
    .end local v15    # "object":Lcom/google/gson/JsonObject;
    :cond_8
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 1639
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    goto/16 :goto_1
.end method

.method public static saveMeidaDataFromPC(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 38
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2048
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2049
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v5, v0, [B

    .line 2050
    .local v5, "cmd":[B
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v9, v0, [B

    .line 2051
    .local v9, "datalength":[B
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2052
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2053
    new-instance v24, Lcom/google/gson/JsonObject;

    invoke-direct/range {v24 .. v24}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2054
    .local v24, "result":Lcom/google/gson/JsonObject;
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2056
    .local v4, "array":Lcom/google/gson/JsonArray;
    const/16 v19, 0x0

    .line 2057
    .local v19, "ouy":Ljava/io/FileOutputStream;
    sget-object v34, Lcom/phonemanager2345/zhushou/CommandHander;->ID_STAT:[B

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v34

    if-nez v34, :cond_0

    .line 2058
    const-string v34, "error_code"

    const-string v35, "20001"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2060
    .local v25, "s":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v34

    array-length v13, v0

    .line 2061
    .local v13, "nCount":I
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v12, v0, [B

    .line 2062
    .local v12, "length":[B
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v13, v12, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2063
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 2064
    .local v28, "t":[B
    const/16 v34, 0xa

    const/16 v35, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v28

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2065
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2066
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2067
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2068
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2199
    .end local v12    # "length":[B
    .end local v13    # "nCount":I
    .end local v25    # "s":Ljava/lang/String;
    .end local v28    # "t":[B
    :goto_0
    return-void

    .line 2071
    :cond_0
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2072
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2073
    const/16 v31, -0x1

    .line 2074
    .local v31, "type":I
    const/4 v14, 0x0

    .line 2075
    .local v14, "name":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2076
    .local v18, "orignalPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2077
    .local v21, "path":Ljava/lang/String;
    const/16 v29, 0x0

    .line 2078
    .local v29, "temp":Ljava/io/File;
    const/16 v30, 0x0

    .line 2080
    .local v30, "tempBuffer":Ljava/io/File;
    new-instance v26, Lcom/phonemanager2345/mediastore/MediaScanner;

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/phonemanager2345/mediastore/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 2083
    .local v26, "scanner":Lcom/phonemanager2345/mediastore/MediaScanner;
    :goto_1
    sget-object v34, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 2084
    if-eqz v19, :cond_1

    .line 2085
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 2187
    :cond_1
    if-eqz v30, :cond_2

    if-eqz v29, :cond_2

    .line 2188
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2190
    :cond_2
    const-string v34, "error_code"

    const-string v35, "00001"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const-string v34, "medialist"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2192
    const-string v34, "total_number"

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2193
    const/16 v34, 0xa

    move-object/from16 v0, v24

    move/from16 v1, v34

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2195
    const/4 v4, 0x0

    .line 2197
    const/16 v24, 0x0

    .line 2198
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2088
    :cond_3
    sget-object v34, Lcom/phonemanager2345/zhushou/CommandHander;->ID_TYPE:[B

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 2090
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 2091
    .local v32, "typeB":[B
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2092
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v31

    .line 2093
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2094
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2095
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v16

    .line 2096
    .local v16, "nameLength":I
    const-string v34, "nameLength"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 2098
    .local v15, "nameData":[B
    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2099
    new-instance v18, Ljava/lang/String;

    .end local v18    # "orignalPath":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    .line 2100
    .restart local v18    # "orignalPath":Ljava/lang/String;
    const-string v34, "orignalPath"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/16 v34, 0x8

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 2103
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2104
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2105
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v23

    .line 2106
    .local v23, "pathLength":I
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 2107
    .local v22, "pathData":[B
    move/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2108
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2109
    .local v27, "specify":Ljava/lang/String;
    const-string v34, "\\"

    const-string v35, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 2110
    new-instance v29, Ljava/io/File;

    .end local v29    # "temp":Ljava/io/File;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2114
    .end local v22    # "pathData":[B
    .end local v23    # "pathLength":I
    .end local v27    # "specify":Ljava/lang/String;
    .restart local v29    # "temp":Ljava/io/File;
    :goto_2
    if-nez v29, :cond_5

    .line 2115
    new-instance v34, Ljava/io/IOException;

    const-string v35, "sdcard not exit"

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 2112
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->createProperName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v29

    goto :goto_2

    .line 2117
    :cond_5
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_6

    .line 2118
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 2119
    .local v20, "parent":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 2120
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->createNewFile()Z

    .line 2122
    .end local v20    # "parent":Ljava/io/File;
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 2123
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2125
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 2127
    new-instance v30, Ljava/io/File;

    .end local v30    # "tempBuffer":Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "2345"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2128
    .restart local v30    # "tempBuffer":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->createNewFile()Z

    .line 2129
    if-eqz v19, :cond_7

    .line 2131
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    :cond_7
    :goto_3
    new-instance v19, Ljava/io/FileOutputStream;

    .end local v19    # "ouy":Ljava/io/FileOutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2137
    .restart local v19    # "ouy":Ljava/io/FileOutputStream;
    const/16 v34, 0x8

    move/from16 v0, v34

    new-array v8, v0, [B

    .line 2138
    .local v8, "crc":[B
    const/16 v34, 0x8

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2140
    .end local v8    # "crc":[B
    .end local v15    # "nameData":[B
    .end local v16    # "nameLength":I
    .end local v32    # "typeB":[B
    :cond_8
    sget-object v34, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->checkResult([B[B)Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 2141
    if-eqz v19, :cond_b

    .line 2142
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v12

    .line 2143
    .local v12, "length":I
    const-wide/16 v6, -0x1

    .line 2144
    .local v6, "availabeSize":J
    const/16 v34, 0x8

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 2145
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableMemorySize(Ljava/lang/String;)J

    move-result-wide v6

    .line 2149
    :goto_4
    const v34, 0x19000

    add-int v34, v34, v12

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v34, v6, v34

    if-gez v34, :cond_a

    .line 2150
    new-instance v34, Ljava/io/IOException;

    const-string v35, "sdcard full"

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 2132
    .end local v6    # "availabeSize":J
    .end local v12    # "length":I
    .restart local v15    # "nameData":[B
    .restart local v16    # "nameLength":I
    .restart local v32    # "typeB":[B
    :catch_0
    move-exception v10

    .line 2133
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2147
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "nameData":[B
    .end local v16    # "nameLength":I
    .end local v32    # "typeB":[B
    .restart local v6    # "availabeSize":J
    .restart local v12    # "length":I
    :cond_9
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAvailableExternalMemorySize()J

    move-result-wide v6

    goto :goto_4

    .line 2152
    :cond_a
    const/16 v34, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v34

    move-object/from16 v3, p3

    invoke-static {v0, v1, v12, v2, v3}, Lcom/phonemanager2345/zhushou/CommandHander;->readProperData(Ljava/io/FileOutputStream;Ljava/io/BufferedInputStream;IILandroid/content/Context;)V

    .line 2153
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 2154
    new-instance v17, Lcom/google/gson/JsonObject;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2155
    .local v17, "object":Lcom/google/gson/JsonObject;
    const-string v34, "mobilePath"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const-string v34, "fileName"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string v34, "orignalName"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 2159
    const/16 v34, 0x7

    move/from16 v0, v31

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 2160
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/mediastore/MediaScanner;->scanFile(Ljava/lang/String;)V

    .line 2182
    .end local v6    # "availabeSize":J
    .end local v12    # "length":I
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    :cond_b
    :goto_5
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2183
    const/16 v34, 0x4

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    goto/16 :goto_1

    .line 2161
    .restart local v6    # "availabeSize":J
    .restart local v12    # "length":I
    .restart local v17    # "object":Lcom/google/gson/JsonObject;
    :cond_c
    const/16 v34, 0x7

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 2162
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 2163
    .local v33, "values":Landroid/content/ContentValues;
    const-string v34, "path"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const-string v34, "filename"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    const-string v34, "modify"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2166
    const-string v34, "size"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2167
    if-eqz v30, :cond_d

    if-eqz v29, :cond_d

    .line 2168
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2170
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    sget-object v35, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2171
    const-string v34, "wifi_pc"

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    const-string v35, "file_from_pc_inform"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-nez v34, :cond_b

    .line 2173
    new-instance v11, Landroid/content/Intent;

    const-class v34, Lcom/market2345/wificonn/WifiReceivedDialogActivity;

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2174
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v34, 0x30000000

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2175
    const-string v34, "file_name"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2176
    const-string v34, "file_prefix"

    const-string v35, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2177
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5
.end method

.method public static searchFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 6
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3338
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3339
    new-array v0, p0, [B

    .line 3340
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3341
    sget-object v3, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-class v5, Lcom/market2345/fileHandle/model/SearchCommandModel;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/fileHandle/model/SearchCommandModel;

    .line 3342
    .local v1, "command":Lcom/market2345/fileHandle/model/SearchCommandModel;
    new-instance v2, Lcom/market2345/fileHandle/FileSearchManager;

    invoke-direct {v2}, Lcom/market2345/fileHandle/FileSearchManager;-><init>()V

    .line 3343
    .local v2, "manager":Lcom/market2345/fileHandle/FileSearchManager;
    new-instance v3, Lcom/phonemanager2345/zhushou/CommandHander$4;

    invoke-direct {v3, p2}, Lcom/phonemanager2345/zhushou/CommandHander$4;-><init>(Ljava/io/BufferedOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/market2345/fileHandle/FileSearchManager;->setSearchCallback(Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;)V

    .line 3357
    invoke-virtual {v2, v1}, Lcom/market2345/fileHandle/FileSearchManager;->search(Lcom/market2345/fileHandle/model/SearchCommandModel;)V

    .line 3359
    return-void
.end method

.method private static sendDile(Ljava/lang/String;ILjava/io/FileInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "input"    # Ljava/io/FileInputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1452
    const/high16 v9, 0x10000

    new-array v1, v9, [B

    .line 1453
    .local v1, "datas":[B
    if-eqz p2, :cond_0

    .line 1455
    :try_start_0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :cond_0
    :goto_0
    new-instance p2, Ljava/io/FileInputStream;

    .end local p2    # "input":Ljava/io/FileInputStream;
    invoke-direct {p2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1461
    .restart local p2    # "input":Ljava/io/FileInputStream;
    sget-object v9, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    invoke-virtual {p3, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1462
    const/4 v9, 0x4

    invoke-static {p3, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 1463
    const/4 v9, 0x4

    new-array v7, v9, [B

    .line 1464
    .local v7, "temp":[B
    const/4 v9, 0x0

    invoke-static {p1, v7, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 1465
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1470
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .line 1471
    .local v8, "total":I
    const-wide/16 v2, 0x1

    .line 1472
    .local v2, "crc32":J
    const/16 v9, 0x8

    new-array v0, v9, [B

    .line 1473
    .local v0, "crc":[B
    invoke-static {v2, v3, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 1474
    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1475
    const/4 v6, -0x1

    .line 1476
    .local v6, "length":I
    sget-object v9, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    invoke-virtual {p3, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1477
    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 1478
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1479
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 1480
    const/4 v9, 0x0

    invoke-virtual {p3, v1, v9, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1481
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    .line 1456
    .end local v0    # "crc":[B
    .end local v2    # "crc32":J
    .end local v6    # "length":I
    .end local v7    # "temp":[B
    .end local v8    # "total":I
    :catch_0
    move-exception v4

    .line 1457
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1485
    .end local v1    # "datas":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method static setInstallOpration(Ljava/lang/String;I)V
    .locals 3
    .param p0, "packname"    # Ljava/lang/String;
    .param p1, "o"    # I

    .prologue
    .line 149
    sget-object v1, Lcom/phonemanager2345/zhushou/CommandHander;->installLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 153
    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    :goto_0
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->installLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 158
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setLocalSoftList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "softListString"    # Ljava/lang/String;

    .prologue
    .line 3617
    const-string v5, ".lminstalllist"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3618
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "list_key"

    invoke-interface {v5, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3620
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3621
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, ".lminstalllist"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3622
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 3624
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3625
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3629
    if-eqz v4, :cond_0

    .line 3631
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3638
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 3632
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 3633
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3626
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 3627
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3629
    if-eqz v3, :cond_0

    .line 3631
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3632
    :catch_2
    move-exception v0

    .line 3633
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3629
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 3631
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3634
    :cond_1
    :goto_3
    throw v5

    .line 3632
    :catch_3
    move-exception v0

    .line 3633
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3629
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 3626
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static setRingtone(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2281
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2282
    new-array v0, p0, [B

    .line 2284
    .local v0, "buffer":[B
    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 2285
    sget-object v10, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 2286
    .local v1, "c":Lcom/google/gson/JsonObject;
    const-string v10, "typeInter"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    .line 2287
    .local v8, "typeInter":I
    const-string v10, "type"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    .line 2289
    .local v7, "type":I
    if-nez v8, :cond_0

    .line 2290
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2294
    .local v9, "uri":Landroid/net/Uri;
    :goto_0
    const-string v10, "path"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2295
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 2296
    .local v3, "id":I
    if-lez v3, :cond_1

    .line 2297
    packed-switch v7, :pswitch_data_0

    .line 2342
    :goto_1
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2343
    .local v5, "result":Lcom/google/gson/JsonObject;
    sget v10, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 2344
    const-string v10, "error_code"

    const-string v11, "00001"

    invoke-virtual {v5, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :goto_2
    const/16 v10, 0x1b

    invoke-static {v5, v10, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2356
    .end local v3    # "id":I
    .end local v5    # "result":Lcom/google/gson/JsonObject;
    :goto_3
    return-void

    .line 2292
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v9    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 2299
    .restart local v3    # "id":I
    :pswitch_0
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {p3, v9, v10, v11}, Lcom/market2345/util/RingSetUtil;->setRing(Landroid/content/Context;Landroid/net/Uri;IZ)I

    move-result v10

    sput v10, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    goto :goto_1

    .line 2302
    :pswitch_1
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {p3, v9, v10, v11}, Lcom/market2345/util/RingSetUtil;->setSMSAudio(Landroid/content/Context;Landroid/net/Uri;IZ)I

    move-result v10

    sput v10, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    goto :goto_1

    .line 2305
    :pswitch_2
    const-string v10, "id"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {p3, v9, v10, v11}, Lcom/market2345/util/RingSetUtil;->setAlarmAudio(Landroid/content/Context;Landroid/net/Uri;IZ)I

    move-result v10

    sput v10, Lcom/phonemanager2345/zhushou/CommandHander;->code:I

    goto :goto_1

    .line 2311
    :cond_1
    const-string v10, "path"

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 2312
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Lcom/phonemanager2345/zhushou/CommandHander$1;

    invoke-direct {v2, v7, p3, v9, v4}, Lcom/phonemanager2345/zhushou/CommandHander$1;-><init>(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2338
    .local v2, "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    new-instance v10, Landroid/media/MediaScannerConnection;

    invoke-direct {v10, p3, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    sput-object v10, Lcom/phonemanager2345/zhushou/CommandHander;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 2339
    sget-object v10, Lcom/phonemanager2345/zhushou/CommandHander;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v10}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_1

    .line 2347
    .end local v2    # "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .end local v4    # "path":Ljava/lang/String;
    .restart local v5    # "result":Lcom/google/gson/JsonObject;
    :cond_2
    const-string v10, "error_code"

    const-string v11, "21007"

    invoke-virtual {v5, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2351
    .end local v3    # "id":I
    .end local v5    # "result":Lcom/google/gson/JsonObject;
    :cond_3
    const/4 v10, 0x4

    new-array v6, v10, [B

    .line 2352
    .local v6, "temp":[B
    const/16 v10, 0x1b

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 2353
    invoke-static {p2, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->returnError(Ljava/io/BufferedOutputStream;[B)V

    goto :goto_3

    .line 2297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setSuccessCode(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p0, "result"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 2424
    const-string v0, "error_code"

    const-string v1, "00001"

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    return-void
.end method

.method public static setWallPaper(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 11
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    .line 1489
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 1490
    new-array v0, p0, [B

    .line 1492
    .local v0, "buffer":[B
    invoke-virtual {p1, v0, v9, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 1493
    sget-object v7, Lcom/phonemanager2345/zhushou/CommandHander;->parse:Lcom/google/gson/JsonParser;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1494
    .local v1, "c":Lcom/google/gson/JsonObject;
    const-string v7, "path"

    invoke-virtual {v1, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1495
    const-string v7, "path"

    invoke-virtual {v1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1499
    .local v6, "wallpaper":Ljava/io/FileInputStream;
    invoke-static {p3, v6, v9}, Lcom/market2345/filebrowser/FileBrowserUtil;->changeWallPapger(Landroid/content/Context;Ljava/io/InputStream;Z)I

    move-result v2

    .line 1500
    .local v2, "code":I
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1501
    .local v4, "result":Lcom/google/gson/JsonObject;
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 1502
    const-string v7, "error_code"

    const-string v8, "00001"

    invoke-virtual {v4, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :goto_0
    invoke-static {v4, v10, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 1513
    .end local v2    # "code":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "result":Lcom/google/gson/JsonObject;
    .end local v6    # "wallpaper":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 1505
    .restart local v2    # "code":I
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "result":Lcom/google/gson/JsonObject;
    .restart local v6    # "wallpaper":Ljava/io/FileInputStream;
    :cond_0
    const-string v7, "error_code"

    const-string v8, "20002"

    invoke-virtual {v4, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    .end local v2    # "code":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "result":Lcom/google/gson/JsonObject;
    .end local v6    # "wallpaper":Ljava/io/FileInputStream;
    :cond_1
    const/4 v7, 0x4

    new-array v5, v7, [B

    .line 1510
    .local v5, "temp":[B
    invoke-static {v10, v5, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 1511
    invoke-static {p2, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->returnError(Ljava/io/BufferedOutputStream;[B)V

    goto :goto_1
.end method

.method static setunInstallOpration(Ljava/lang/String;I)V
    .locals 3
    .param p0, "packname"    # Ljava/lang/String;
    .param p1, "o"    # I

    .prologue
    .line 166
    sget-object v1, Lcom/phonemanager2345/zhushou/CommandHander;->uninsallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninsallLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 172
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->install:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1324
    const-string v0, " DESC"

    .line 1331
    .local v0, "ascending":Ljava/lang/String;
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 1335
    .local v1, "dateExpr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static startOtherApp(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 7
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3424
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3425
    new-array v0, p0, [B

    .line 3426
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3427
    sget-object v4, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-class v6, Lcom/phonemanager2345/model/StartOtherAppCommandModel;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;

    .line 3428
    .local v1, "command":Lcom/phonemanager2345/model/StartOtherAppCommandModel;
    if-eqz v1, :cond_5

    .line 3429
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3430
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->action:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3431
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3433
    :cond_0
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->component:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3434
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->component:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3436
    :cond_1
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->data:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3437
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3439
    :cond_2
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->extradata:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 3440
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->extradata:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3441
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->extradata:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;

    iget-object v5, v4, Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->extradata:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;

    iget-object v4, v4, Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;->value:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3444
    .end local v2    # "i":I
    :cond_3
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3445
    iget-object v4, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3447
    :cond_4
    const-string v4, "activity"

    iget-object v5, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3448
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3449
    invoke-virtual {p3, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3456
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_1
    const-string v4, ""

    const/16 v5, 0x2f

    invoke-static {v4, v5, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 3457
    return-void

    .line 3450
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v4, "service"

    iget-object v5, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3451
    invoke-virtual {p3, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 3452
    :cond_7
    const-string v4, "broadcast"

    iget-object v5, v1, Lcom/phonemanager2345/model/StartOtherAppCommandModel;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3453
    invoke-virtual {p3, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static swap32bitFromArray([BI)I
    .locals 2
    .param p0, "value"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "v":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 1296
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1297
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1298
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 1300
    return v0
.end method

.method public static swap32bitsToArray(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 1287
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 1288
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1289
    add-int/lit8 v0, p2, 0x2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1290
    add-int/lit8 v0, p2, 0x3

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1291
    return-void
.end method

.method public static swap64bitsToArray(J[B)V
    .locals 4
    .param p0, "value"    # J
    .param p2, "dest"    # [B

    .prologue
    .line 1312
    const/4 v0, 0x0

    const/16 v1, 0x38

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1313
    const/4 v0, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1314
    const/4 v0, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1315
    const/4 v0, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1316
    const/4 v0, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1317
    const/4 v0, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1318
    const/4 v0, 0x6

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1319
    const/4 v0, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1321
    return-void
.end method

.method public static toggleScreenOn(ILjava/io/BufferedInputStream;Landroid/content/Context;)V
    .locals 5
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3279
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 3280
    new-array v0, p0, [B

    .line 3281
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 3283
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3284
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "operation"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3285
    .local v1, "cmd":I
    if-nez v1, :cond_1

    .line 3286
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->releaseBrightWakeLock()V

    .line 3293
    .end local v1    # "cmd":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 3287
    .restart local v1    # "cmd":I
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 3288
    invoke-static {p2}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->acquireBrightWakeLock(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3290
    .end local v1    # "cmd":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 3291
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uninstallApkByWifi(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 16
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2777
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2778
    move/from16 v0, p0

    new-array v2, v0, [B

    .line 2780
    .local v2, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2781
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    const-class v14, Lcom/phonemanager2345/model/CommandModel33;

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phonemanager2345/model/CommandModel33;

    .line 2783
    .local v3, "coll":Lcom/phonemanager2345/model/CommandModel33;
    iget-object v12, v3, Lcom/phonemanager2345/model/CommandModel33;->PackageList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;

    .line 2784
    .local v6, "info":Lcom/phonemanager2345/model/CommandModel33$LocalApp;
    sget-object v13, Lcom/phonemanager2345/zhushou/CommandHander;->uninsallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2786
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2787
    .local v9, "packageURI":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.DELETE"

    invoke-direct {v7, v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2788
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2789
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2790
    const/4 v12, 0x2

    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 2791
    .local v8, "notification":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v10

    .line 2792
    .local v10, "r":Landroid/media/Ringtone;
    invoke-virtual {v10}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2797
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "notification":Landroid/net/Uri;
    .end local v9    # "packageURI":Landroid/net/Uri;
    .end local v10    # "r":Landroid/media/Ringtone;
    :goto_1
    :try_start_1
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->uninsallLock:Ljava/lang/Object;

    const-wide/32 v14, 0xd6d8

    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2801
    :goto_2
    :try_start_2
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2802
    .local v11, "result":Lcom/google/gson/JsonObject;
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    iget-object v14, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2803
    const-string v12, "error_code"

    const-string v14, "00001"

    invoke-virtual {v11, v12, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string v12, "packageName"

    iget-object v14, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const-string v14, "operation"

    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    iget-object v15, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v11, v14, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2806
    sget-object v12, Lcom/phonemanager2345/zhushou/CommandHander;->uninstall:Ljava/util/HashMap;

    iget-object v14, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    :goto_3
    const/16 v12, 0x21

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2812
    monitor-exit v13

    goto/16 :goto_0

    .end local v11    # "result":Lcom/google/gson/JsonObject;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 2793
    :catch_0
    move-exception v4

    .line 2794
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2798
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2799
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2808
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "result":Lcom/google/gson/JsonObject;
    :cond_0
    const-string v12, "error_code"

    const-string v14, "20001"

    invoke-virtual {v11, v12, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    const-string v12, "packageName"

    iget-object v14, v6, Lcom/phonemanager2345/model/CommandModel33$LocalApp;->PackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2815
    .end local v6    # "info":Lcom/phonemanager2345/model/CommandModel33$LocalApp;
    .end local v11    # "result":Lcom/google/gson/JsonObject;
    :cond_1
    return-void
.end method

.method public static wifiConnectInform(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 2683
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 2684
    new-array v0, p0, [B

    .line 2686
    .local v0, "buffer":[B
    invoke-static {p0, p1, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 2687
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    const-class v7, Lcom/phonemanager2345/model/WifiConnect;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonemanager2345/model/WifiConnect;

    .line 2689
    .local v1, "coll":Lcom/phonemanager2345/model/WifiConnect;
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2690
    .local v4, "result":Lcom/google/gson/JsonObject;
    iget v5, v1, Lcom/phonemanager2345/model/WifiConnect;->ConnectPath:I

    if-nez v5, :cond_1

    .line 2691
    const-string v5, "approved"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2724
    :cond_0
    :goto_0
    const/16 v5, 0x24

    invoke-static {v4, v5, p2}, Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Lcom/google/gson/JsonObject;ILjava/io/OutputStream;)V

    .line 2725
    return-void

    .line 2692
    :cond_1
    iget v5, v1, Lcom/phonemanager2345/model/WifiConnect;->ConnectPath:I

    if-ne v5, v10, :cond_0

    .line 2696
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2697
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    monitor-enter v6

    .line 2698
    :try_start_0
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 2699
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2701
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action.finish.conn.dialog"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2702
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/market2345/wificonn/WifiConnDialogActivity;

    invoke-direct {v3, p3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2703
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "pc_name"

    iget-object v6, v1, Lcom/phonemanager2345/model/WifiConnect;->PCID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2704
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2705
    invoke-virtual {p3, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2707
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    monitor-enter v6

    .line 2709
    :try_start_1
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    const-wide/16 v8, 0x7530

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2714
    :goto_1
    :try_start_2
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v11, :cond_4

    .line 2715
    :cond_2
    const-string v5, "approved"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2720
    :cond_3
    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2699
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 2710
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 2711
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2716
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v10, :cond_3

    .line 2717
    sget-object v5, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2718
    const-string v5, "approved"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method static wifiInform(I)V
    .locals 3
    .param p0, "wifiInform"    # I

    .prologue
    const/4 v0, 0x1

    .line 136
    sget-object v1, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    if-nez p0, :cond_2

    .line 138
    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 142
    :cond_0
    :goto_0
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 143
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 145
    :cond_1
    monitor-exit v1

    .line 146
    return-void

    .line 139
    :cond_2
    if-ne p0, v0, :cond_0

    .line 140
    sget-object v0, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static writeFourByte(Ljava/io/BufferedOutputStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {}, Lcom/phonemanager2345/zhushou/CommandHander;->decoration()V

    .line 535
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 536
    .local v0, "temp":[B
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 537
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 538
    return-void
.end method

.method private static writeIconToSocket([BLjava/lang/String;Ljava/util/zip/Adler32;Ljava/io/BufferedOutputStream;)V
    .locals 8
    .param p0, "icon"    # [B
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adler32"    # Ljava/util/zip/Adler32;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 972
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->ID_PACK:[B

    invoke-virtual {p3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 974
    .local v1, "data":[B
    array-length v4, v1

    .line 975
    .local v4, "length":I
    const/4 v6, 0x4

    new-array v5, v6, [B

    .line 976
    .local v5, "temp":[B
    invoke-static {v4, v5, v7}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 977
    invoke-virtual {p3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 978
    invoke-virtual {p3, v1, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 980
    invoke-virtual {p2}, Ljava/util/zip/Adler32;->reset()V

    .line 981
    array-length v6, p0

    invoke-virtual {p2, p0, v7, v6}, Ljava/util/zip/Adler32;->update([BII)V

    .line 982
    invoke-virtual {p2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    .line 984
    .local v2, "crc32":J
    const/16 v6, 0x8

    new-array v0, v6, [B

    .line 985
    .local v0, "crc":[B
    invoke-static {v2, v3, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 986
    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 988
    sget-object v6, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    invoke-virtual {p3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 989
    array-length v6, p0

    invoke-static {v6, v5, v7}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 990
    invoke-virtual {p3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 991
    array-length v6, p0

    invoke-virtual {p3, p0, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 992
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 993
    return-void
.end method
