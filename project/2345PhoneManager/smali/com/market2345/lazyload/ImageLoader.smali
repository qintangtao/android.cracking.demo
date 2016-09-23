.class public Lcom/market2345/lazyload/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;,
        Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;,
        Lcom/market2345/lazyload/ImageLoader$PhotosLoader;,
        Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final MAXHEIGHT:I = 0x320

.field public static final MAXWIDTH:I = 0x1e0

.field private static imageLoader:Lcom/market2345/lazyload/ImageLoader;


# instance fields
.field private context:Landroid/content/Context;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private fileCache:Lcom/market2345/lazyload/FileCache;

.field handler:Landroid/os/Handler;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCache:Lcom/market2345/lazyload/MemoryCache;

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/market2345/lazyload/FileCache;

    invoke-direct {v0, p1}, Lcom/market2345/lazyload/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->fileCache:Lcom/market2345/lazyload/FileCache;

    .line 68
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->options:Landroid/graphics/BitmapFactory$Options;

    .line 69
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 70
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->context:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/market2345/lazyload/MemoryCache;

    invoke-direct {v0}, Lcom/market2345/lazyload/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->imageViews:Ljava/util/Map;

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/lazyload/ImageLoader;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lazyload/ImageLoader;
    .param p1, "x1"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/market2345/lazyload/ImageLoader;->getBitmap(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/lazyload/ImageLoader;)Lcom/market2345/lazyload/MemoryCache;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lazyload/ImageLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    return-object v0
.end method

.method private createRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 171
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 173
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 178
    .local v7, "dstbmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v7

    .line 188
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "dstbmp":Landroid/graphics/Bitmap;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 181
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 183
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private decodeFile(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "photoToLoad"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 380
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 381
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 382
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 383
    .local v7, "stream1":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 384
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 386
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 387
    .local v2, "height_tmp":I
    const/4 v6, 0x1

    .line 391
    .local v6, "scale":I
    :goto_0
    iget v10, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->width:I

    const/16 v11, 0x1e0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v9, v10, :cond_1

    iget v10, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->height:I

    const/16 v11, 0x320

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v2, v10, :cond_1

    .line 397
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 399
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 400
    .local v8, "stream2":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v8, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 402
    iget-object v10, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v11, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v10, v11}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 404
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/ImageLoader;->createRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 405
    .local v5, "rote":Landroid/graphics/Bitmap;
    move-object v0, v5

    .line 412
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "rote":Landroid/graphics/Bitmap;
    .end local v6    # "scale":I
    .end local v7    # "stream1":Ljava/io/FileInputStream;
    .end local v8    # "stream2":Ljava/io/FileInputStream;
    .end local v9    # "width_tmp":I
    :cond_0
    :goto_1
    return-object v0

    .line 393
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "scale":I
    .restart local v7    # "stream1":Ljava/io/FileInputStream;
    .restart local v9    # "width_tmp":I
    :cond_1
    div-int/lit8 v9, v9, 0x2

    .line 394
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 408
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":I
    .end local v7    # "stream1":Ljava/io/FileInputStream;
    .end local v9    # "width_tmp":I
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private decodeFile(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;[B)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "photoToLoad"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;
    .param p2, "data"    # [B

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 343
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    const/4 v8, 0x0

    array-length v9, p2

    invoke-static {p2, v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v7, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 347
    .local v2, "height_tmp":I
    const/4 v6, 0x1

    .line 351
    .local v6, "scale":I
    :goto_0
    iget v8, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->width:I

    const/16 v9, 0x1e0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v7, v8, :cond_1

    iget v8, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->height:I

    const/16 v9, 0x320

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v2, v8, :cond_1

    .line 357
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 358
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 359
    const/4 v8, 0x0

    array-length v9, p2

    invoke-static {p2, v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    iget-object v8, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v9, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v8, v9}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 362
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/ImageLoader;->createRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 363
    .local v5, "rote":Landroid/graphics/Bitmap;
    move-object v0, v5

    .line 370
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "rote":Landroid/graphics/Bitmap;
    .end local v6    # "scale":I
    .end local v7    # "width_tmp":I
    :cond_0
    :goto_1
    return-object v0

    .line 353
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "scale":I
    .restart local v7    # "width_tmp":I
    :cond_1
    div-int/lit8 v7, v7, 0x2

    .line 354
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 366
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":I
    .end local v7    # "width_tmp":I
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getBitmap(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "photoToLoad"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move-object/from16 v20, v0

    sget-object v21, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->IMAGE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual/range {v20 .. v21}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    :cond_0
    :goto_0
    return-object v6

    .line 259
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move-object/from16 v20, v0

    sget-object v21, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual/range {v20 .. v21}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 263
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 264
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->fileCache:Lcom/market2345/lazyload/FileCache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/FileCache;->checkByHasecode(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 266
    .local v12, "f":Ljava/io/File;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/market2345/lazyload/ImageLoader;->decodeFile(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 269
    .local v6, "b":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 270
    if-nez v6, :cond_0

    .line 277
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x0

    .line 281
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    .local v13, "imageUrl":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 283
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 284
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 285
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 286
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 287
    .local v14, "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 288
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->fileCache:Lcom/market2345/lazyload/FileCache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/market2345/lazyload/FileCache;->generatorByHashcode(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    .line 289
    if-lez v9, :cond_7

    const v20, 0xc800

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 291
    new-array v10, v9, [B

    .line 292
    .local v10, "datas":[B
    const/16 v16, 0x0

    .line 293
    .local v16, "offset":I
    move v15, v9

    .line 295
    .local v15, "length":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v14, v10, v0, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    .local v18, "readLength":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 297
    add-int v16, v16, v18

    .line 298
    sub-int v15, v15, v18

    .line 299
    if-nez v15, :cond_4

    .line 304
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/market2345/lazyload/ImageLoader;->decodeFile(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;[B)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 305
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 306
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v17, "os":Ljava/io/OutputStream;
    const/16 v20, 0x0

    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 308
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "count":I
    .end local v10    # "datas":[B
    .end local v13    # "imageUrl":Ljava/net/URL;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "length":I
    .end local v16    # "offset":I
    .end local v17    # "os":Ljava/io/OutputStream;
    .end local v18    # "readLength":I
    :cond_6
    :goto_1
    move-object v6, v7

    .line 334
    goto/16 :goto_0

    .line 314
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "count":I
    .restart local v13    # "imageUrl":Ljava/net/URL;
    .restart local v14    # "is":Ljava/io/InputStream;
    :cond_7
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    .restart local v17    # "os":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/market2345/lazyload/BitmapUtils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 317
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 318
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/market2345/lazyload/ImageLoader;->decodeFile(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 322
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "count":I
    .end local v13    # "imageUrl":Ljava/net/URL;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v11

    .line 324
    .local v11, "ex":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    instance-of v0, v11, Ljava/lang/OutOfMemoryError;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/market2345/lazyload/MemoryCache;->clear()V

    goto :goto_1

    .line 329
    :cond_8
    instance-of v0, v11, Ljava/io/IOException;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/market2345/lazyload/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lcom/market2345/lazyload/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/market2345/lazyload/ImageLoader;->imageLoader:Lcom/market2345/lazyload/ImageLoader;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/market2345/lazyload/ImageLoader;

    invoke-direct {v0, p0}, Lcom/market2345/lazyload/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader;->imageLoader:Lcom/market2345/lazyload/ImageLoader;

    .line 62
    :cond_0
    sget-object v0, Lcom/market2345/lazyload/ImageLoader;->imageLoader:Lcom/market2345/lazyload/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queuePhoto(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V
    .locals 2
    .param p1, "p"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    const/4 v1, 0x2

    .line 194
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 196
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;

    invoke-direct {v1, p0, p1}, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;-><init>(Lcom/market2345/lazyload/ImageLoader;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 204
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 201
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method


# virtual methods
.method public DisplayImage(ILandroid/widget/ImageView;IIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "defaultIcon"    # I
    .param p4, "errorIcon"    # I
    .param p5, "defaultX"    # I
    .param p6, "defaultY"    # I
    .param p7, "type"    # Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "url":Ljava/lang/String;
    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->IMAGE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    invoke-virtual {v1, v3}, Lcom/market2345/lazyload/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 97
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2

    .line 99
    invoke-virtual {p2, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :goto_1
    return-void

    .line 91
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 103
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-lez p3, :cond_3

    .line 105
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_3
    new-instance v1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    move-object v2, p0

    move-object v4, p2

    move v5, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;-><init>(Lcom/market2345/lazyload/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;IIIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V

    invoke-direct {p0, v1}, Lcom/market2345/lazyload/ImageLoader;->queuePhoto(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    goto :goto_1
.end method

.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;IIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "defaultIcon"    # I
    .param p4, "errorIcon"    # I
    .param p5, "defaultX"    # I
    .param p6, "defaultY"    # I
    .param p7, "type"    # Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/market2345/lazyload/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 129
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 131
    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, v11}, Lcom/market2345/lazyload/ImageLoader;->createRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 134
    .local v12, "rote":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    invoke-virtual {v1, p1, v12}, Lcom/market2345/lazyload/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 135
    invoke-virtual {p2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    .end local v12    # "rote":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p2, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 144
    :cond_1
    if-lez p3, :cond_2

    .line 146
    invoke-virtual/range {p2 .. p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :cond_2
    new-instance v1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;-><init>(Lcom/market2345/lazyload/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;IIIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V

    invoke-direct {p0, v1}, Lcom/market2345/lazyload/ImageLoader;->queuePhoto(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;

    invoke-virtual {v0}, Lcom/market2345/lazyload/MemoryCache;->clear()V

    .line 524
    return-void
.end method

.method imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z
    .locals 4
    .param p1, "photoToLoad"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v2, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->background:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v3, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
