.class final Lcom/google/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/zxing/client/android/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 52
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 53
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 54
    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 55
    return-void
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "source"    # Lcom/google/zxing/PlanarYUVLuminanceSource;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 152
    .local v0, "pixels":[I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 153
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 154
    .local v4, "height":I
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 155
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v6, v1, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 157
    const-string v1, "barcode_bitmap"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 158
    const-string v1, "barcode_scaled_factor"

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 159
    return-void
.end method

.method private decode([BII)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 92
    .local v14, "start":J
    const/4 v10, 0x0

    .line 95
    .local v10, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v11, v0, [B

    .line 96
    .local v11, "rotatedData":[B
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 98
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 99
    mul-int v18, v16, p3

    add-int v18, v18, p3

    sub-int v18, v18, v17

    add-int/lit8 v18, v18, -0x1

    mul-int v19, v17, p2

    add-int v19, v19, v16

    aget-byte v19, p1, v19

    aput-byte v19, v11, v18

    .line 98
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 96
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 101
    .end local v16    # "x":I
    :cond_3
    move/from16 v13, p2

    .line 102
    .local v13, "tmp":I
    move/from16 p2, p3

    .line 103
    move/from16 p3, v13

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v12

    .line 107
    .local v12, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v12, :cond_4

    .line 109
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v18, Lcom/google/zxing/common/HybridBinarizer;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 112
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 124
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 125
    .local v8, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_5

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 129
    .local v6, "end":J
    sget-object v18, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found barcode in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v6, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v8, :cond_0

    .line 132
    const v18, 0x7f090005

    move/from16 v0, v18

    invoke-static {v8, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 133
    .local v9, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-static {v12, v5}, Lcom/google/zxing/client/android/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 114
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "message":Landroid/os/Message;
    .restart local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v18

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_3

    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v18

    .line 141
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v8    # "handler":Landroid/os/Handler;
    :cond_5
    if-eqz v8, :cond_0

    .line 143
    const v18, 0x7f090004

    move/from16 v0, v18

    invoke-static {v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 144
    .restart local v9    # "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 67
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/zxing/client/android/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 70
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x7f090003 -> :sswitch_0
        0x7f09001c -> :sswitch_1
    .end sparse-switch
.end method
