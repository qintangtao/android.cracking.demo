.class public Lcom/market2345/filebrowser/FileControl;
.super Lcom/market2345/datacenter/MarketObservable;
.source "FileControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/market2345/filebrowser/FileControl;

.field public static sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;


# instance fields
.field private allPicCount:I

.field private allPicDirNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allPicSize:J

.field private allPicsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private apkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private apkSize:J

.field private categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

.field private context:Landroid/content/Context;

.field private docList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private docSize:J

.field private isRun:Z

.field private isRunning:Z

.field private mCategoryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Lcom/market2345/filebrowser/FileControl$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scanNum:J

.field private zipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zipSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const/4 v1, 0x0

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Video:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/filebrowser/FileControl;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRun:Z

    .line 32
    iput-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRunning:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/market2345/filebrowser/FileCategoryHelper;

    invoke-direct {v0, p1}, Lcom/market2345/filebrowser/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/market2345/filebrowser/FileControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/FileControl;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/market2345/filebrowser/FileControl;->isRun:Z

    return p1
.end method

.method private getAllPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V
    .locals 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sortMethod"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 460
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 464
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    .line 467
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 469
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    .line 470
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSortOrder(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, "sort":Ljava/lang/String;
    const/16 v4, 0x8

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

    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "date_modified"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "mime_type"

    aput-object v5, v6, v4

    .line 475
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 476
    .local v18, "c":Landroid/database/Cursor;
    if-eqz v18, :cond_e

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 478
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 479
    .local v23, "idd":I
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 480
    .local v32, "pathIndex":I
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 481
    .local v20, "dirNameIndex":I
    const-string v4, "_size"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 482
    .local v37, "size":I
    const-string v4, "title"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 483
    .local v39, "title":I
    const-string v4, "mime_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 484
    .local v27, "mime":I
    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 485
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 488
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 489
    .local v17, "bulketName":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 490
    .local v31, "path":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 491
    .local v21, "fileId":I
    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 492
    .local v24, "filesize":J
    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 493
    .local v22, "fileTitle":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 494
    .local v28, "mimeType":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 497
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v29, "myFile":Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/filebrowser/FileControl;->getFName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 505
    .local v16, "albumPicName":Ljava/lang/String;
    new-instance v26, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-direct/range {v26 .. v26}, Lcom/market2345/filebrowser/bean/FileInfo;-><init>()V

    .line 506
    .local v26, "info":Lcom/market2345/filebrowser/bean/FileInfo;
    move/from16 v0, v21

    move-object/from16 v1, v26

    iput v0, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    .line 507
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    .line 508
    move-wide/from16 v0, v24

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    .line 509
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 510
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    .line 512
    move-object/from16 v0, p0

    iget v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    .line 513
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    add-long v4, v4, v24

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    .line 515
    invoke-static/range {v16 .. v16}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongPicture(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u76f8\u673a"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    .line 518
    .local v34, "photo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-nez v34, :cond_3

    .line 519
    new-instance v34, Ljava/util/ArrayList;

    .end local v34    # "photo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .restart local v34    # "photo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u76f8\u673a"

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_3
    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 524
    .end local v34    # "photo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongShotCut(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    .line 526
    .local v36, "screenShot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-nez v36, :cond_5

    .line 527
    new-instance v36, Ljava/util/ArrayList;

    .end local v36    # "screenShot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .restart local v36    # "screenShot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u5c4f\u5e55\u622a\u56fe"

    move-object/from16 v0, v36

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_5
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 532
    .end local v36    # "screenShot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongQQFile_Recv(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "QQ\u63a5\u6536\u56fe\u7247"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 534
    .local v35, "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-nez v35, :cond_7

    .line 535
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .restart local v35    # "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "QQ\u63a5\u6536\u56fe\u7247"

    move-object/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_7
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 543
    .end local v35    # "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 544
    .local v30, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-nez v30, :cond_9

    .line 545
    new-instance v30, Ljava/util/ArrayList;

    .end local v30    # "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .restart local v30    # "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_9
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 553
    .end local v16    # "albumPicName":Ljava/lang/String;
    .end local v17    # "bulketName":Ljava/lang/String;
    .end local v21    # "fileId":I
    .end local v22    # "fileTitle":Ljava/lang/String;
    .end local v24    # "filesize":J
    .end local v26    # "info":Lcom/market2345/filebrowser/bean/FileInfo;
    .end local v28    # "mimeType":Ljava/lang/String;
    .end local v29    # "myFile":Ljava/io/File;
    .end local v30    # "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .end local v31    # "path":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "QQ\u63a5\u6536\u56fe\u7247"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 556
    .restart local v35    # "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v35, :cond_b

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const-string v7, "QQ\u63a5\u6536\u56fe\u7247"

    invoke-virtual {v4, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 561
    .local v38, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v38, :cond_c

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const-string v7, "\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v4, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 565
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u76f8\u673a"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 566
    .local v33, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v33, :cond_d

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const-string v7, "\u76f8\u673a"

    invoke-virtual {v4, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 570
    :cond_d
    sget-object v11, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 574
    .end local v20    # "dirNameIndex":I
    .end local v23    # "idd":I
    .end local v27    # "mime":I
    .end local v32    # "pathIndex":I
    .end local v33    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .end local v35    # "qq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .end local v37    # "size":I
    .end local v38    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .end local v39    # "title":I
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->getWXPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 576
    .local v40, "wxPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/market2345/filebrowser/FileControl;->getWXImage2Dir(Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 577
    .local v19, "dir":Ljava/io/File;
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/market2345/filebrowser/FileControl;->getWXPic(Ljava/io/File;)V

    .line 580
    sget-object v11, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 582
    :cond_f
    return-void
.end method

.method private getFName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "bucket_display_name"    # Ljava/lang/String;

    .prologue
    .line 751
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "sdcard":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 754
    const-string p3, "sdcard"

    .line 808
    .end local v7    # "sdcard":Ljava/lang/String;
    .end local p3    # "bucket_display_name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 757
    .restart local v7    # "sdcard":Ljava/lang/String;
    .restart local p3    # "bucket_display_name":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 759
    const-string p3, "sdcard"

    goto :goto_0

    .line 762
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 763
    .local v9, "temp":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 764
    .local v4, "posi":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_3

    .line 767
    :try_start_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-lt v10, v11, :cond_3

    .line 768
    const-string v10, "storage"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    .line 769
    .local v8, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getVolumePaths"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 770
    .local v3, "paths":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v10, v3

    if-lez v10, :cond_3

    .line 771
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v3

    if-ge v2, v10, :cond_3

    .line 772
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v3, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 773
    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    .line 774
    aget-object v7, v3, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    .end local v2    # "i":I
    .end local v3    # "paths":[Ljava/lang/String;
    .end local v8    # "sm":Landroid/os/storage/StorageManager;
    :cond_3
    :goto_2
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    .line 786
    :try_start_2
    const-string p3, "sdcard"

    goto :goto_0

    .line 771
    .restart local v2    # "i":I
    .restart local v3    # "paths":[Ljava/lang/String;
    .restart local v8    # "sm":Landroid/os/storage/StorageManager;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    .end local v2    # "i":I
    .end local v3    # "paths":[Ljava/lang/String;
    .end local v8    # "sm":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 804
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "posi":I
    .end local v7    # "sdcard":Ljava/lang/String;
    .end local v9    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 805
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 808
    const-string p3, "sdcard"

    goto/16 :goto_0

    .line 789
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "posi":I
    .restart local v7    # "sdcard":Ljava/lang/String;
    .restart local v9    # "temp":Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 790
    .local v5, "posiX":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 795
    add-int/lit8 v10, v4, 0x2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    if-eq v5, v10, :cond_0

    .line 801
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p2, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .local v6, "prefix":Ljava/lang/String;
    move-object/from16 p3, v6

    .line 802
    goto/16 :goto_0
.end method

.method private getFileInfo(Landroid/database/Cursor;I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "id"    # I

    .prologue
    .line 740
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/market2345/filebrowser/FileBrowserUtil;->GetFileInfo(Ljava/lang/String;I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getFileInfo(Ljava/lang/String;)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 745
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->GetFileInfo(Ljava/lang/String;I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/market2345/filebrowser/FileControl;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/market2345/filebrowser/FileControl;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getWXImage2Dir(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 302
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 305
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 306
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 307
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    aget-object v1, v2, v3

    .line 324
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-object v1

    .line 311
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_1
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/market2345/filebrowser/FileControl;->getWXImage2Dir(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    .local v1, "f":Ljava/io/File;
    if-nez v1, :cond_0

    .line 306
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getWXPic(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 329
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 332
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 334
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/FileControl;->getWXPic(Ljava/io/File;)V

    .line 333
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/FileControl;->handleWXFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void

    .line 342
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/FileControl;->handleWXFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleWXFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 351
    invoke-static {p1}, Lcom/market2345/filebrowser/FileBrowserUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "suffix":Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/filebrowser/FileBrowserUtil;->isPic(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileControl;->getFileInfo(Ljava/lang/String;)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    .line 354
    .local v0, "fileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    if-eqz v0, :cond_2

    .line 355
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u5fae\u4fe1"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 356
    .local v3, "wx":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-nez v3, :cond_1

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "wx":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .restart local v3    # "wx":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v5, "\u5fae\u4fe1"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const-string v5, "QQ\u63a5\u6536\u56fe\u7247"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 361
    .local v1, "index":I
    if-ne v1, v6, :cond_0

    .line 362
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const-string v5, "\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 364
    if-ne v1, v6, :cond_0

    .line 365
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const-string v5, "\u76f8\u673a"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 371
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    const-string v5, "\u5fae\u4fe1"

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 374
    .end local v1    # "index":I
    :cond_1
    iget v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    .line 375
    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    iget-wide v6, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    .line 377
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v0    # "fileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    .end local v3    # "wx":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    :cond_2
    return-void
.end method

.method private listSortFilesInPhoneDisk(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v10, 0x1

    .line 242
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 244
    .local v7, "files":[Ljava/io/File;
    if-eqz v7, :cond_2

    .line 246
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_2

    .line 248
    aget-object v0, v7, v8

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isFileDirOver10(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 252
    :cond_1
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v7, v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    aget-object v0, v7, v8

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/FileControl;->listSortFilesInPhoneDisk(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 295
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "i":I
    :catch_0
    move-exception v6

    .line 296
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 298
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 261
    .restart local v7    # "files":[Ljava/io/File;
    .restart local v8    # "i":I
    :cond_3
    :try_start_1
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, "suffix":Ljava/lang/String;
    const-string v0, "apk"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/filebrowser/FileControl;->getFileInfo(Ljava/lang/String;)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->apkSize:J

    aget-object v2, v7, v8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->apkSize:J

    .line 267
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    .line 283
    :cond_4
    :goto_2
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 285
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->docSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 286
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->apkSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 287
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->zipSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 288
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileControl;->setChanged()V

    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileControl;->notifyObservers(Ljava/lang/Object;)V

    .line 290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    goto/16 :goto_1

    .line 269
    :cond_5
    const-string v0, "zip"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rar"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "iso"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "7z"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/filebrowser/FileControl;->getFileInfo(Ljava/lang/String;)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->zipSize:J

    aget-object v2, v7, v8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->zipSize:J

    .line 273
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    goto/16 :goto_2

    .line 275
    :cond_7
    invoke-static {v9}, Lcom/market2345/filebrowser/FileBrowserUtil;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/filebrowser/FileControl;->getFileInfo(Ljava/lang/String;)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->docSize:J

    aget-object v2, v7, v8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->docSize:J

    .line 279
    iget-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/market2345/filebrowser/FileControl;->scanNum:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private refreshAllPicCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z
    .locals 6
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRun:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-direct {p0, v0, v1}, Lcom/market2345/filebrowser/FileControl;->getAllPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V

    .line 386
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 387
    iget v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicCount:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->allPicSize:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshMediaCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z
    .locals 12
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRun:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v6

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v11

    .line 176
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    invoke-virtual {v1, p1}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSelectionByCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 177
    .local v10, "c":Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v0, v6

    .line 189
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 182
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 185
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 186
    goto :goto_0

    .end local v2    # "columns":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_1
    move v0, v6

    .line 189
    goto :goto_0
.end method

.method private refreshMediaCategory2()Z
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    .line 223
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 224
    .local v6, "f":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/market2345/filebrowser/FileControl;->listSortFilesInPhoneDisk(Ljava/io/File;)V

    .line 225
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->docSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 226
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->apkSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 227
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/market2345/filebrowser/FileControl;->zipSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 228
    const/4 v0, 0x0

    return v0

    .line 200
    .end local v6    # "f":Ljava/io/File;
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iput-wide v2, p0, Lcom/market2345/filebrowser/FileControl;->docSize:J

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-wide v2, p0, Lcom/market2345/filebrowser/FileControl;->apkSize:J

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iput-wide v2, p0, Lcom/market2345/filebrowser/FileControl;->zipSize:J

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRun:Z

    .line 818
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileControl;->deleteObservers()V

    .line 819
    const/4 v0, 0x0

    sput-object v0, Lcom/market2345/filebrowser/FileControl;->instance:Lcom/market2345/filebrowser/FileControl;

    .line 820
    return-void
.end method

.method public getAlbumPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sortMethod"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/market2345/filebrowser/FileControl;->getAllPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    const-string v1, "\u76f8\u673a"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllApk(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->apkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllDoc(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->docList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllMusic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sortMethod"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSortOrder(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, "sort":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    .line 615
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 617
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 619
    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 620
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 621
    .local v11, "id":I
    const-string v2, "_display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 622
    .local v18, "title":I
    const-string v2, "duration"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 623
    .local v10, "duration":I
    const-string v2, "_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 624
    .local v17, "size":I
    const-string v2, "mime_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 625
    .local v15, "mine":I
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 626
    .local v9, "data":I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 630
    .local v16, "path":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 633
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v14, "mFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    new-instance v12, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-direct {v12}, Lcom/market2345/filebrowser/bean/FileInfo;-><init>()V

    .line 640
    .local v12, "info":Lcom/market2345/filebrowser/bean/FileInfo;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    .line 641
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    .line 642
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->duration:I

    .line 643
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    .line 644
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    .line 645
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 647
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v12    # "info":Lcom/market2345/filebrowser/bean/FileInfo;
    .end local v14    # "mFile":Ljava/io/File;
    .end local v16    # "path":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v9    # "data":I
    .end local v10    # "duration":I
    .end local v11    # "id":I
    .end local v15    # "mine":I
    .end local v17    # "size":I
    .end local v18    # "title":I
    :cond_2
    :goto_1
    return-object v13

    .line 655
    .restart local v9    # "data":I
    .restart local v10    # "duration":I
    .restart local v11    # "id":I
    .restart local v15    # "mine":I
    .restart local v17    # "size":I
    .restart local v18    # "title":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getAllPicDirNames()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-direct {p0, v0, v1}, Lcom/market2345/filebrowser/FileControl;->getAllPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicDirNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllPicMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    sget-object v1, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->date:Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    invoke-direct {p0, v0, v1}, Lcom/market2345/filebrowser/FileControl;->getAllPic(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->allPicsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllVideos(Landroid/content/Context;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sortMethod"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSortOrder(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "sort":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    .line 668
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 669
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 671
    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 672
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 673
    .local v11, "id":I
    const-string v2, "_display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 674
    .local v16, "title":I
    const-string v2, "duration"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 675
    .local v10, "duration":I
    const-string v2, "_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 676
    .local v15, "size":I
    const-string v2, "mime_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 677
    .local v14, "mine":I
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 678
    .local v9, "data":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    new-instance v12, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-direct {v12}, Lcom/market2345/filebrowser/bean/FileInfo;-><init>()V

    .line 684
    .local v12, "info":Lcom/market2345/filebrowser/bean/FileInfo;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    .line 685
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    .line 686
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->duration:I

    .line 687
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    .line 688
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    .line 689
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 690
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    .end local v12    # "info":Lcom/market2345/filebrowser/bean/FileInfo;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 694
    .end local v9    # "data":I
    .end local v10    # "duration":I
    .end local v11    # "id":I
    .end local v14    # "mine":I
    .end local v15    # "size":I
    .end local v16    # "title":I
    :cond_1
    return-object v13
.end method

.method public getAllZip(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->zipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    .locals 2
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .line 409
    :goto_0
    return-object v1

    .line 407
    :cond_0
    new-instance v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileControl$CategoryInfo;-><init>(Lcom/market2345/filebrowser/FileControl;)V

    .line 408
    .local v0, "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 409
    goto :goto_0
.end method

.method public getCategoryInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Lcom/market2345/filebrowser/FileControl$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFileInfoList(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Lcom/market2345/filebrowser/FileSortHelper$SortMethod;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    if-nez v4, :cond_0

    .line 719
    new-instance v4, Lcom/market2345/filebrowser/FileCategoryHelper;

    iget-object v5, p0, Lcom/market2345/filebrowser/FileControl;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/market2345/filebrowser/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    .line 721
    :cond_0
    iget-object v4, p0, Lcom/market2345/filebrowser/FileControl;->categoryHelper:Lcom/market2345/filebrowser/FileCategoryHelper;

    invoke-virtual {v4, p1, p2}, Lcom/market2345/filebrowser/FileCategoryHelper;->query(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Landroid/database/Cursor;

    move-result-object v0

    .line 722
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 726
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 727
    .local v2, "id":I
    invoke-direct {p0, v0, v2}, Lcom/market2345/filebrowser/FileControl;->getFileInfo(Landroid/database/Cursor;I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v1

    .line 728
    .local v1, "fileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    if-eqz v1, :cond_2

    .line 730
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 733
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 735
    .end local v1    # "fileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    .end local v2    # "id":I
    :cond_3
    return-object v3
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRunning:Z

    return v0
.end method

.method public notifyDataChange(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;IJ)V
    .locals 7
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "count"    # I
    .param p3, "size"    # J

    .prologue
    .line 121
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .line 124
    .local v0, "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .end local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileControl$CategoryInfo;-><init>(Lcom/market2345/filebrowser/FileControl;)V

    .line 127
    .restart local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileControl;->setChanged()V

    .line 135
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FileControl;->notifyObservers(Ljava/lang/Object;)V

    .line 138
    .end local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    :cond_0
    return-void

    .line 131
    .restart local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    :cond_1
    iget-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    .line 132
    iget-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    sub-long/2addr v2, p3

    iput-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    goto :goto_0
.end method

.method public refreshCategoryInfo()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/filebrowser/FileControl;->isRunning:Z

    .line 144
    sget-object v6, Lcom/market2345/filebrowser/FileControl;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .local v6, "arr$":[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, "fc":Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    move-object v0, p0

    move-wide v4, v2

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/market2345/filebrowser/FileControl;->setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "fc":Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    :cond_0
    const-string v10, "external"

    .line 151
    .local v10, "volumeName":Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 152
    .local v9, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Video:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/market2345/filebrowser/FileControl;->refreshMediaCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 154
    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 155
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/market2345/filebrowser/FileControl;->refreshMediaCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 157
    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 158
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/market2345/filebrowser/FileControl;->refreshAllPicCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 160
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileControl;->setChanged()V

    .line 161
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileControl;->notifyObservers(Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileControl;->refreshMediaCategory2()Z

    .line 165
    iput-boolean v11, p0, Lcom/market2345/filebrowser/FileControl;->isRunning:Z

    .line 167
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FileControl;->setChanged()V

    .line 168
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileControl;->notifyObservers(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/market2345/filebrowser/FileControl$1;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileControl$1;-><init>(Lcom/market2345/filebrowser/FileControl;)V

    invoke-virtual {v0}, Lcom/market2345/filebrowser/FileControl$1;->start()V

    .line 107
    return-void
.end method

.method public setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V
    .locals 2
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "count"    # J
    .param p4, "size"    # J

    .prologue
    .line 415
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .line 418
    .local v0, "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .end local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileControl$CategoryInfo;-><init>(Lcom/market2345/filebrowser/FileControl;)V

    .line 421
    .restart local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    iput-wide p2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    .line 424
    iput-wide p4, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    .line 426
    .end local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    :cond_1
    return-void
.end method

.method public updateCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V
    .locals 4
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "count"    # J
    .param p4, "size"    # J

    .prologue
    .line 439
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/market2345/filebrowser/FileControl;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;

    .line 442
    .local v0, "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    if-nez v0, :cond_1

    .line 449
    .end local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    :cond_0
    :goto_0
    return-void

    .line 446
    .restart local v0    # "info":Lcom/market2345/filebrowser/FileControl$CategoryInfo;
    :cond_1
    iget-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    sub-long/2addr v2, p2

    iput-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->count:J

    .line 447
    iget-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    sub-long/2addr v2, p4

    iput-wide v2, v0, Lcom/market2345/filebrowser/FileControl$CategoryInfo;->size:J

    goto :goto_0
.end method
