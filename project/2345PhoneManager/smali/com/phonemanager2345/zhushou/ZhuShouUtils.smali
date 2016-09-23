.class public Lcom/phonemanager2345/zhushou/ZhuShouUtils;
.super Ljava/lang/Object;
.source "ZhuShouUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static wifiReceivedApkVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;IIZ)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sendInfos(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static declared-synchronized acquireBrightWakeLock(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 688
    const-class v2, Lcom/phonemanager2345/zhushou/ZhuShouUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 689
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 690
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000000a

    const-string v3, "BRIGHT"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit v2

    return-void

    .line 688
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized acquireDimWakeLock(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    const-class v2, Lcom/phonemanager2345/zhushou/ZhuShouUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 715
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 716
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x10000006

    const-string v3, "DIM"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 720
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit v2

    return-void

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static bitmapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, "string":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v0, "bStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 241
    .local v4, "tt":J
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {p0, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 245
    .local v6, "tt01":J
    const-string v10, "iconcompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 247
    .local v1, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 248
    const/4 v10, 0x0

    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 251
    .local v8, "tt02":J
    const-string v10, "base"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    if-eqz v0, :cond_0

    .line 259
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-object v3

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 255
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v0, :cond_0

    .line 259
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 260
    :catch_2
    move-exception v2

    .line 261
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v0, :cond_1

    .line 259
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 262
    :cond_1
    :goto_1
    throw v10

    .line 260
    :catch_3
    move-exception v2

    .line 261
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static bitmapToString(Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;)Ljava/lang/String;
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, "string":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v5, "bStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 283
    .local v12, "tt":J
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 284
    .local v4, "b":Landroid/graphics/Bitmap;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 288
    .local v14, "tt01":J
    const-string v11, "iconcompress"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v14, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sub-long v18, v14, v12

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 291
    .local v10, "t":I
    :try_start_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 293
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 299
    .local v6, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 300
    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 304
    .local v16, "tt02":J
    sub-long v18, v16, v14

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 305
    :try_start_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 306
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 307
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 308
    array-length v10, v6

    .line 309
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 310
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 311
    const-string v11, "    "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 312
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v10, v11

    .line 313
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 314
    const-string v11, "\r\n"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :goto_1
    const-string v11, "base"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v16, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    if-eqz v5, :cond_0

    .line 327
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 334
    :cond_0
    :goto_2
    return-object v9

    .line 294
    .end local v6    # "bytes":[B
    .end local v16    # "tt02":J
    :catch_0
    move-exception v8

    .line 295
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v6    # "bytes":[B
    .restart local v16    # "tt02":J
    :catch_1
    move-exception v8

    .line 317
    .restart local v8    # "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 328
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 329
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 322
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 323
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    if-eqz v5, :cond_0

    .line 327
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 328
    :catch_4
    move-exception v7

    .line 329
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 325
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_1

    .line 327
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 330
    :cond_1
    :goto_3
    throw v11

    .line 328
    :catch_5
    move-exception v7

    .line 329
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static checkSDCardMount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 808
    const/4 v1, 0x0

    .line 812
    :goto_0
    return v1

    .line 810
    :cond_0
    const/4 v0, 0x0

    .line 811
    .local v0, "state":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 208
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 209
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static drawableToIOString(Landroid/graphics/drawable/Drawable;Ljava/io/FileOutputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 346
    if-nez p0, :cond_1

    .line 347
    const/4 v2, 0x0

    .line 359
    :cond_0
    :goto_0
    return-object v2

    .line 349
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    move-object v0, p0

    .line 350
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 351
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 353
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->bitmapToString(Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static enableSystemKeyguard(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 751
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 752
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 753
    const-string v1, "KeyguardLock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    sput-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 755
    :cond_0
    if-eqz p1, :cond_1

    .line 756
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 757
    const/4 v1, 0x0

    sput-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_1
    sget-object v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    goto :goto_0
.end method

.method public static getAllAppInfo(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getAllAppNumber(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 186
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "number":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 189
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.market2345"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v2
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 21

    .prologue
    .line 387
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->isSDCardExist()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 388
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 389
    .local v14, "path":Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    .local v16, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 391
    .local v4, "blockSize":J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v2, v0

    .line 392
    .local v2, "availableBlocks":J
    mul-long v10, v2, v4

    .line 421
    .end local v2    # "availableBlocks":J
    .end local v4    # "blockSize":J
    .end local v14    # "path":Ljava/io/File;
    .end local v16    # "stat":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v10

    .line 394
    :cond_1
    const-wide/16 v10, -0x1

    .line 396
    .local v10, "fstab":J
    :try_start_0
    new-instance v13, Ljava/io/File;

    const-string v17, "/etc/vold.fstab"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v13, "mountFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 398
    new-instance v15, Ljava/util/Scanner;

    invoke-direct {v15, v13}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 399
    .local v15, "scanner":Ljava/util/Scanner;
    :cond_2
    invoke-virtual {v15}, Ljava/util/Scanner;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 400
    invoke-virtual {v15}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "line":Ljava/lang/String;
    const-string v17, "dev_mount"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 402
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 403
    .local v12, "lineElements":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 404
    const/16 v17, 0x1

    aget-object v7, v12, v17

    .line 405
    .local v7, "element":Ljava/lang/String;
    const-string v17, "sdcard"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 406
    new-instance v8, Ljava/io/File;

    const/16 v17, 0x2

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 408
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v16    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 410
    .restart local v4    # "blockSize":J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 411
    .local v18, "totalBlocks":J
    mul-long v10, v18, v4

    goto :goto_0

    .line 418
    .end local v4    # "blockSize":J
    .end local v7    # "element":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v13    # "mountFile":Ljava/io/File;
    .end local v15    # "scanner":Ljava/util/Scanner;
    .end local v16    # "stat":Landroid/os/StatFs;
    .end local v18    # "totalBlocks":J
    :catch_0
    move-exception v6

    .line 419
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 369
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 370
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 371
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 372
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 373
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getAvailableMemorySize(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 440
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 441
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 442
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 443
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 445
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getCanMovedFeild(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 156
    invoke-static {p0}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getAllAppInfo(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 157
    .local v0, "Infos":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 158
    .local v2, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 160
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/InstalledApp;

    .line 162
    .local v1, "a":Lcom/market2345/model/InstalledApp;
    iget-boolean v9, v1, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    if-nez v9, :cond_0

    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, "canMove":I
    :try_start_0
    iget-object v9, v1, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 166
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "installLocation"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 167
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 172
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    iput v3, v1, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 173
    iput-boolean v11, v1, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    goto :goto_0

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v1    # "a":Lcom/market2345/model/InstalledApp;
    .end local v3    # "canMove":I
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static getExtraSDCards(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v7, "sdCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 775
    .local v8, "sdRoot":Ljava/lang/String;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_1

    .line 776
    const-string v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 777
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 779
    :cond_0
    const-string v10, "storage"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    .line 781
    .local v9, "sm":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getVolumePaths"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 782
    .local v6, "paths":[Ljava/lang/String;
    if-nez v6, :cond_2

    .line 802
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v9    # "sm":Landroid/os/storage/StorageManager;
    :cond_1
    :goto_0
    return-object v7

    .line 785
    .restart local v6    # "paths":[Ljava/lang/String;
    .restart local v9    # "sm":Landroid/os/storage/StorageManager;
    :cond_2
    if-nez v8, :cond_3

    .line 786
    const-string v8, ""

    .line 788
    :cond_3
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 789
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 791
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 792
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p0, v5}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->checkSDCardMount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 793
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 798
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "paths":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 799
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 8

    .prologue
    .line 427
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->isSDCardExist()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 429
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 431
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 432
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 434
    :goto_0
    return-wide v6

    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTotalExternal_SDMemorySize()D
    .locals 14

    .prologue
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 460
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->isSDCardExist()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 462
    .local v3, "path":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/external_sd"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "externalSD":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    new-instance v4, Landroid/os/StatFs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/external_sd"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 465
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 466
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 467
    .local v6, "totalBlocks":J
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getTotalExternalMemorySize()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getTotalExternalMemorySize()J

    move-result-wide v10

    mul-long v12, v6, v0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_0

    .line 468
    mul-long v8, v6, v0

    long-to-double v8, v8

    .line 477
    .end local v0    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :cond_0
    return-wide v8
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 378
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 379
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 381
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 382
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getTotalMemorySize(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v0, v3

    .line 452
    .local v0, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v4, v3

    .line 453
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 455
    .end local v0    # "blockSize":J
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 818
    const-string v5, ""

    .line 820
    .local v5, "status":Ljava/lang/String;
    :try_start_0
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 821
    .local v4, "sm":Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    .line 823
    .local v3, "mMethodGetPathsState":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getVolumeState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 827
    :goto_0
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 836
    .end local v3    # "mMethodGetPathsState":Ljava/lang/reflect/Method;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    :goto_1
    sget-object v6, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VolumnState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-object v5

    .line 824
    .restart local v3    # "mMethodGetPathsState":Ljava/lang/reflect/Method;
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 829
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "mMethodGetPathsState":Ljava/lang/reflect/Method;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    :catch_1
    move-exception v2

    .line 830
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 831
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 832
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 833
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 834
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getWifiReceivedApkVer()I
    .locals 1

    .prologue
    .line 485
    sget v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->wifiReceivedApkVer:I

    return v0
.end method

.method public static isSDCardExist()Z
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static parsePCinfo(Lcom/phonemanager2345/model/PCInfo;Ljava/lang/String;)V
    .locals 9
    .param p0, "info"    # Lcom/phonemanager2345/model/PCInfo;
    .param p1, "urlPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 661
    const-string v3, "[?]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "path":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v7, :cond_2

    .line 663
    aget-object v3, v1, v6

    const-string v4, "[&]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "params":[Ljava/lang/String;
    array-length v3, v0

    if-eqz v3, :cond_2

    array-length v3, v0

    if-lt v3, v8, :cond_2

    .line 665
    aget-object v3, v0, v7

    iput-object v3, p0, Lcom/phonemanager2345/model/PCInfo;->pcName:Ljava/lang/String;

    .line 666
    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 667
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/phonemanager2345/model/PCInfo;->minVersionCode:I

    .line 669
    :cond_0
    aget-object v3, v0, v5

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 670
    aget-object v3, v0, v5

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "pdata":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 672
    iget-object v3, p0, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 677
    .end local v2    # "pdata":[Ljava/lang/String;
    :cond_1
    :goto_0
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/phonemanager2345/model/PCInfo;->port:I

    .line 680
    .end local v0    # "params":[Ljava/lang/String;
    :cond_2
    return-void

    .line 675
    .restart local v0    # "params":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized releaseBrightWakeLock()V
    .locals 3

    .prologue
    .line 701
    const-class v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 703
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 704
    const/4 v0, 0x0

    sput-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sBrightWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :cond_0
    monitor-exit v1

    return-void

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseDimWakeLock()V
    .locals 3

    .prologue
    .line 727
    const-class v1, Lcom/phonemanager2345/zhushou/ZhuShouUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 729
    sget-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 730
    const/4 v0, 0x0

    sput-object v0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sDimWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :cond_0
    monitor-exit v1

    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static releaseWakeLockByPower()V
    .locals 0

    .prologue
    .line 738
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->releaseBrightWakeLock()V

    .line 739
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->releaseDimWakeLock()V

    .line 740
    return-void
.end method

.method public static sendDeviceInfoWifi(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "urlPath"    # Ljava/lang/String;
    .param p1, "send"    # Z

    .prologue
    .line 494
    new-instance v0, Lcom/phonemanager2345/model/PCInfo;

    invoke-direct {v0}, Lcom/phonemanager2345/model/PCInfo;-><init>()V

    .line 495
    .local v0, "info":Lcom/phonemanager2345/model/PCInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    .line 497
    invoke-static {v0, p0}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->parsePCinfo(Lcom/phonemanager2345/model/PCInfo;Ljava/lang/String;)V

    .line 498
    iget-object v1, v0, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/phonemanager2345/model/PCInfo;->port:I

    if-eqz v1, :cond_0

    .line 499
    iget v1, v0, Lcom/phonemanager2345/model/PCInfo;->minVersionCode:I

    invoke-static {v1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->setWifiReceivedApkVer(I)V

    .line 500
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;

    invoke-direct {v2, v0, p1}, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;-><init>(Lcom/phonemanager2345/model/PCInfo;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 511
    :cond_0
    return-void
.end method

.method private static sendInfos(Ljava/lang/String;IIZ)V
    .locals 13
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "minVersionCode"    # I
    .param p3, "send"    # Z

    .prologue
    .line 571
    if-nez p3, :cond_0

    const/16 v11, 0x26

    if-ge v11, p2, :cond_0

    .line 612
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 576
    .local v3, "object":Lcom/google/gson/JsonObject;
    const-string v11, "versioncode"

    const/16 v12, 0x26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 577
    const-string v11, "model"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v11

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 580
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    const-string v11, "imei"

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v11, "brand"

    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 583
    .local v10, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "ipAddress":Ljava/lang/String;
    const-string v11, "ip"

    invoke-virtual {v3, v11, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v11, "port"

    const/16 v12, 0x2c68

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 586
    const-string v12, "needUpdateApk"

    const/16 v11, 0x26

    if-ge v11, p2, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v12, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 590
    .local v0, "data":[B
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .line 591
    .local v6, "s":Ljava/net/Socket;
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 592
    .local v7, "socAddress":Ljava/net/SocketAddress;
    const/16 v11, 0x1388

    invoke-virtual {v6, v7, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 593
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 594
    const/16 v11, 0x3e8

    invoke-virtual {v6, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 595
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 596
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v11, 0x4

    new-array v8, v11, [B

    .line 597
    .local v8, "t":[B
    const/16 v11, 0x33

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 598
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 599
    array-length v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 600
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 601
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 602
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 603
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 604
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "socAddress":Ljava/net/SocketAddress;
    .end local v8    # "t":[B
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 586
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 606
    .restart local v0    # "data":[B
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 607
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 608
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static sendWifiDatapacket(Ljava/lang/String;)V
    .locals 5
    .param p0, "urlPath"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v1, Lcom/phonemanager2345/model/PCInfo;

    invoke-direct {v1}, Lcom/phonemanager2345/model/PCInfo;-><init>()V

    .line 616
    .local v1, "info":Lcom/phonemanager2345/model/PCInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    .line 618
    invoke-static {v1, p0}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->parsePCinfo(Lcom/phonemanager2345/model/PCInfo;Ljava/lang/String;)V

    .line 619
    iget-object v3, v1, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 620
    iget-object v3, v1, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 621
    .local v2, "ip":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/phonemanager2345/zhushou/ZhuShouUtils$2;

    invoke-direct {v4, v2}, Lcom/phonemanager2345/zhushou/ZhuShouUtils$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 658
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ip":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setWifiReceivedApkVer(I)V
    .locals 0
    .param p0, "wifiReceivedApkVer"    # I

    .prologue
    .line 489
    sput p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->wifiReceivedApkVer:I

    .line 490
    return-void
.end method

.method public static zip([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "b":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v4, "zip":Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v5, "zip"

    invoke-direct {v2, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    array-length v5, p0

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 225
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 226
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 227
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 228
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 230
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
