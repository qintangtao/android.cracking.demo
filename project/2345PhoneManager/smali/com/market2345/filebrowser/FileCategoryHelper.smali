.class public Lcom/market2345/filebrowser/FileCategoryHelper;
.super Ljava/lang/Object;
.source "FileCategoryHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileCategoryHelper$1;,
        Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;,
        Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    }
.end annotation


# static fields
.field private static APK_EXT:Ljava/lang/String; = null

.field public static final COLUMN_DATE:I = 0x3

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_PATH:I = 0x1

.field public static final COLUMN_SIZE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "FileCategoryHelper"

.field private static THEME_EXT:Ljava/lang/String;

.field private static ZIP_EXTS:[Ljava/lang/String;

.field public static categoryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Lcom/market2345/filebrowser/FilenameExtFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;


# instance fields
.field private mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

.field private mCategoryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;",
            "Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-string v0, "apk"

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->APK_EXT:Ljava/lang/String;

    .line 63
    const-string v0, "mtz"

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->THEME_EXT:Ljava/lang/String;

    .line 65
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "zip"

    aput-object v1, v0, v3

    const-string v1, "rar"

    aput-object v1, v0, v4

    const-string v1, "7z"

    aput-object v1, v0, v5

    const-string v1, "iso"

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->ZIP_EXTS:[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->filters:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 73
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->All:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Video:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Theme:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->OtherPic:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Video:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Theme:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->sCategories:[Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mContext:Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->All:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .line 97
    return-void
.end method

.method private buildDocSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v1, "selection":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/market2345/filebrowser/FileBrowserUtil;->sDocMimeTypesSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(mime_type==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_0
    const/4 v2, 0x0

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildZipSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v1, "selection":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/market2345/filebrowser/FileBrowserUtil;->sZipFileMimeType:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(mime_type==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_0
    const/4 v2, 0x0

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCategoryFromPath(Ljava/lang/String;)Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p0}, Lcom/market2345/filebrowser/MediaFile;->getFileType(Ljava/lang/String;)Lcom/market2345/filebrowser/MediaFile$MediaFileType;

    move-result-object v2

    .line 330
    .local v2, "type":Lcom/market2345/filebrowser/MediaFile$MediaFileType;
    if-eqz v2, :cond_3

    .line 332
    iget v3, v2, Lcom/market2345/filebrowser/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Lcom/market2345/filebrowser/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Music:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .line 363
    :goto_0
    return-object v3

    .line 334
    :cond_0
    iget v3, v2, Lcom/market2345/filebrowser/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Lcom/market2345/filebrowser/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Video:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 336
    :cond_1
    iget v3, v2, Lcom/market2345/filebrowser/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Lcom/market2345/filebrowser/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Picture:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 338
    :cond_2
    sget-object v3, Lcom/market2345/filebrowser/FileBrowserUtil;->sDocMimeTypesSet:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/market2345/filebrowser/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Doc:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 342
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 343
    .local v0, "dotPosition":I
    if-gez v0, :cond_4

    .line 345
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 348
    :cond_4
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "ext":Ljava/lang/String;
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper;->APK_EXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Apk:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 353
    :cond_5
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper;->THEME_EXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Theme:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 358
    :cond_6
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper;->ZIP_EXTS:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/market2345/filebrowser/FileCategoryHelper;->matchExts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 360
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Zip:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 363
    :cond_7
    sget-object v3, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Other:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    goto :goto_0
.end method

.method private getContentUriByCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Landroid/net/Uri;
    .locals 4
    .param p1, "cat"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 223
    const-string v1, "external"

    .line 224
    .local v1, "volumeName":Ljava/lang/String;
    sget-object v2, Lcom/market2345/filebrowser/FileCategoryHelper$1;->$SwitchMap$com$market2345$filebrowser$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 230
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_0
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 233
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 234
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 236
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_2
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 239
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_3
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static matchExts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "exts"    # [Ljava/lang/String;

    .prologue
    .line 368
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 370
    .local v1, "ex":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const/4 v4, 0x1

    .line 373
    .end local v1    # "ex":Ljava/lang/String;
    :goto_1
    return v4

    .line 368
    .restart local v1    # "ex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "ex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;JJ)V
    .locals 2
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "count"    # J
    .param p4, "size"    # J

    .prologue
    .line 160
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;

    .line 161
    .local v0, "info":Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;
    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;

    .end local v0    # "info":Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;
    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;-><init>(Lcom/market2345/filebrowser/FileCategoryHelper;)V

    .line 164
    .restart local v0    # "info":Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    iput-wide p2, v0, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;->count:J

    .line 167
    iput-wide p4, v0, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;->size:J

    .line 168
    return-void
.end method


# virtual methods
.method public buildSelectionByCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .locals 3
    .param p1, "cat"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "selection":Ljava/lang/String;
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$1;->$SwitchMap$com$market2345$filebrowser$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    const-string v0, "_data LIKE \'%.mtz\'"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildDocSelection()Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildZipSelection()Ljava/lang/String;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 208
    :pswitch_3
    const-string v0, "_data LIKE \'%.apk\'"

    .line 209
    goto :goto_0

    .line 211
    :pswitch_4
    const/4 v0, 0x0

    .line 212
    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public buildSortOrder(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "sortOrder":Ljava/lang/String;
    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$1;->$SwitchMap$com$market2345$filebrowser$FileSortHelper$SortMethod:[I

    invoke-virtual {p1}, Lcom/market2345/filebrowser/FileSortHelper$SortMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    const-string v0, "title asc"

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    const-string v0, "_size asc"

    .line 257
    goto :goto_0

    .line 259
    :pswitch_2
    const-string v0, "date_modified desc"

    .line 260
    goto :goto_0

    .line 262
    :pswitch_3
    const-string v0, "mime_type asc, title asc"

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCategoryInfo(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;
    .locals 2
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;

    .line 147
    :goto_0
    return-object v1

    .line 145
    :cond_0
    new-instance v0, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;-><init>(Lcom/market2345/filebrowser/FileCategoryHelper;)V

    .line 146
    .local v0, "info":Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 147
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
            "Lcom/market2345/filebrowser/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurCategory()Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getCurCategoryNameResId()I
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFilter()Ljava/io/FilenameFilter;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->filters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public query(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Landroid/database/Cursor;
    .locals 8
    .param p1, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .param p2, "sort"    # Lcom/market2345/filebrowser/FileSortHelper$SortMethod;

    .prologue
    const/4 v4, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileCategoryHelper;->getContentUriByCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    move-result-object v1

    .line 271
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSelectionByCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/market2345/filebrowser/FileCategoryHelper;->buildSortOrder(Lcom/market2345/filebrowser/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "sortOrder":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 276
    const-string v0, "FileCategoryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid uri, category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-object v4

    .line 280
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v6, "_data"

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string v6, "_size"

    aput-object v6, v2, v0

    const/4 v0, 0x3

    const-string v6, "date_modified"

    aput-object v6, v2, v0

    .line 282
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public setCurCategory(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)V
    .locals 0
    .param p1, "c"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .line 107
    return-void
.end method

.method public setCustomCategory([Ljava/lang/String;)V
    .locals 3
    .param p1, "exts"    # [Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Custom:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/market2345/filebrowser/FileCategoryHelper;->mCategory:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .line 117
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Custom:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Custom:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    sget-object v0, Lcom/market2345/filebrowser/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;->Custom:Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/market2345/filebrowser/FilenameExtFilter;

    invoke-direct {v2, p1}, Lcom/market2345/filebrowser/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
