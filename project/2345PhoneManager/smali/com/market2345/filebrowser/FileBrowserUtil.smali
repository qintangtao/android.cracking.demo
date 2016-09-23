.class public Lcom/market2345/filebrowser/FileBrowserUtil;
.super Ljava/lang/Object;
.source "FileBrowserUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;
    }
.end annotation


# static fields
.field private static ANDROID_SECURE:Ljava/lang/String; = null

.field public static CATEGORY_TAB_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileBrowserUtil"

.field public static final PIC_DIR_PHOTO:Ljava/lang/String; = "\u76f8\u673a"

.field public static final PIC_DIR_QQ:Ljava/lang/String; = "QQ\u63a5\u6536\u56fe\u7247"

.field public static final PIC_DIR_SCREENSHOTS:Ljava/lang/String; = "\u5c4f\u5e55\u622a\u56fe"

.field public static final PIC_DIR_WX:Ljava/lang/String; = "\u5fae\u4fe1"

.field public static final ROOT_PATH:Ljava/lang/String; = "/"

.field public static SDCARD_TAB_INDEX:I

.field public static mDocMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static picFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDocMimeTypesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sZipFileMimeType:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static textFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "/mnt/sdcard/.android_secure"

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->ANDROID_SECURE:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    .line 87
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "txt"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "doc"

    const-string v2, "doc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "docx"

    const-string v2, "docx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "wps"

    const-string v2, "wps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "xls"

    const-string v2, "xls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "xlsx"

    const-string v2, "xlsx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "ebk"

    const-string v2, "ekb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "ebk3"

    const-string v2, "ekb3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "htm"

    const-string v2, "htm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "ppt"

    const-string v2, "ppt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "pptx"

    const-string v2, "pptx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    const-string v1, "pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dot"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wps"

    const-string v2, "application/kswps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dotx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ppsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "potx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dps"

    const-string v2, "application/ksdps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xlt"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xltx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "et"

    const-string v2, "application/kset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ebk"

    const-string v2, "application/x-expandedbook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ebk3"

    const-string v2, "application/x-expandedbook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xhtm"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "jpg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "jpeg"

    const-string v2, "jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "tif"

    const-string v2, "tif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    const-string v1, "bmp"

    const-string v2, "bmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v0, Lcom/market2345/filebrowser/FileBrowserUtil$1;

    invoke-direct {v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->sDocMimeTypesSet:Ljava/util/HashSet;

    .line 449
    new-instance v0, Lcom/market2345/filebrowser/FileBrowserUtil$2;

    invoke-direct {v0}, Lcom/market2345/filebrowser/FileBrowserUtil$2;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->sZipFileMimeType:Ljava/util/HashSet;

    .line 458
    const/4 v0, 0x0

    sput v0, Lcom/market2345/filebrowser/FileBrowserUtil;->CATEGORY_TAB_INDEX:I

    .line 460
    const/4 v0, 0x1

    sput v0, Lcom/market2345/filebrowser/FileBrowserUtil;->SDCARD_TAB_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method public static GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 12
    .param p0, "f"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "showHidden"    # Z

    .prologue
    .line 195
    new-instance v7, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-direct {v7}, Lcom/market2345/filebrowser/bean/FileInfo;-><init>()V

    .line 196
    .local v7, "lFileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, "lFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v9

    iput-boolean v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->canRead:Z

    .line 199
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v9

    iput-boolean v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->canWrite:Z

    .line 200
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v9

    iput-boolean v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->isHidden:Z

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    .line 202
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/market2345/filebrowser/bean/FileInfo;->ModifiedDate:J

    .line 203
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    iput-boolean v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    .line 204
    iput-object v2, v7, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 205
    iget-boolean v9, v7, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    if-eqz v9, :cond_4

    .line 206
    const/4 v5, 0x0

    .line 207
    .local v5, "lCount":I
    invoke-virtual {v6, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 210
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_0

    .line 211
    const/4 v7, 0x0

    .line 226
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "lCount":I
    .end local v7    # "lFileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    :goto_0
    return-object v7

    .line 214
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v5    # "lCount":I
    .restart local v7    # "lFileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    :cond_0
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v1, v0, v4

    .line 215
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/market2345/filebrowser/FileBrowserUtil;->isNormalFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 214
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v1    # "child":Ljava/io/File;
    :cond_3
    iput v5, v7, Lcom/market2345/filebrowser/bean/FileInfo;->Count:I

    goto :goto_0

    .line 223
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "lCount":I
    .end local v8    # "len$":I
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    goto :goto_0
.end method

.method public static GetFileInfo(Ljava/lang/String;I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "lFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const/4 v1, 0x0

    .line 191
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    new-instance v1, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-direct {v1}, Lcom/market2345/filebrowser/bean/FileInfo;-><init>()V

    .line 180
    .local v1, "lFileInfo":Lcom/market2345/filebrowser/bean/FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    iput-boolean v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->canRead:Z

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    iput-boolean v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->canWrite:Z

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    iput-boolean v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->isHidden:Z

    .line 183
    invoke-static {p0}, Lcom/market2345/filebrowser/FileBrowserUtil;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->ModifiedDate:J

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    iput-boolean v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->IsDir:Z

    .line 186
    iput-object p0, v1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iput p1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    goto :goto_0
.end method

.method private static changeFor60(I)Ljava/lang/String;
    .locals 3
    .param p0, "second"    # I

    .prologue
    .line 481
    rem-int/lit8 v0, p0, 0x3c

    .line 482
    .local v0, "temp":I
    if-nez v0, :cond_0

    .line 483
    const-string v1, "00"

    .line 487
    :goto_0
    return-object v1

    .line 484
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static changeWallPapger(Landroid/content/Context;Ljava/io/InputStream;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaper"    # Ljava/io/InputStream;
    .param p2, "notify"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 711
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    if-eqz p2, :cond_0

    .line 714
    :try_start_1
    const-string v4, "\u8bbe\u7f6e\u58c1\u7eb8\u6210\u529f"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 716
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 727
    :goto_0
    return v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 721
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 722
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 724
    :try_start_2
    const-string v2, "\u8bbe\u7f6e\u58c1\u7eb8\u5931\u8d25"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v3

    .line 725
    goto :goto_0

    .line 726
    :catch_2
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    move v2, v3

    .line 727
    goto :goto_0
.end method

.method public static containsPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "path1"    # Ljava/lang/String;
    .param p1, "path2"    # Ljava/lang/String;

    .prologue
    .line 146
    move-object v0, p1

    .line 147
    .local v0, "path":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 156
    :goto_1
    return v1

    .line 151
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 153
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertNumber(J)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J

    .prologue
    .line 362
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStorage(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    .line 367
    const-wide/16 v4, 0x400

    .line 368
    .local v4, "kb":J
    const-wide/16 v8, 0x400

    mul-long v6, v4, v8

    .line 369
    .local v6, "mb":J
    const-wide/16 v8, 0x400

    mul-long v2, v6, v8

    .line 371
    .local v2, "gb":J
    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 372
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "%.1f GB"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-float v11, p0

    long-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    :goto_0
    return-object v1

    .line 373
    :cond_0
    cmp-long v1, p0, v6

    if-ltz v1, :cond_2

    .line 374
    long-to-float v1, p0

    long-to-float v8, v6

    div-float v0, v1, v8

    .line 375
    .local v0, "f":F
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const-string v1, "%.0f MB"

    :goto_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "%.1f MB"

    goto :goto_1

    .line 376
    .end local v0    # "f":F
    :cond_2
    cmp-long v1, p0, v4

    if-ltz v1, :cond_4

    .line 377
    long-to-float v1, p0

    long-to-float v8, v4

    div-float v0, v1, v8

    .line 378
    .restart local v0    # "f":F
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const-string v1, "%.0f KB"

    :goto_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "%.1f KB"

    goto :goto_2

    .line 380
    .end local v0    # "f":F
    :cond_4
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "%d B"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 286
    :cond_0
    const-string v17, "FileBrowserUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: file not exist or is directory, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v6, 0x0

    .line 339
    :cond_1
    :goto_0
    return-object v6

    .line 289
    :cond_2
    const/4 v9, 0x0

    .line 290
    .local v9, "fi":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 292
    .local v12, "fo":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .local v10, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v7, "destPlace":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    .line 295
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    if-nez v17, :cond_4

    .line 296
    const/4 v6, 0x0

    .line 330
    if-eqz v10, :cond_3

    .line 331
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_3
    if-eqz v12, :cond_1

    .line 333
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v8

    .line 335
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/market2345/filebrowser/FileBrowserUtil;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "destPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v4, "destFile":Ljava/io/File;
    const/4 v14, 0x1

    .local v14, "i":I
    move v15, v14

    .line 302
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 303
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/market2345/filebrowser/FileBrowserUtil;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/market2345/filebrowser/FileBrowserUtil;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "destName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/market2345/filebrowser/FileBrowserUtil;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    new-instance v4, Ljava/io/File;

    .end local v4    # "destFile":Ljava/io/File;
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "destFile":Ljava/io/File;
    move v15, v14

    .line 307
    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_1

    .line 309
    .end local v5    # "destName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v17

    if-nez v17, :cond_7

    .line 310
    const/4 v6, 0x0

    .line 330
    .end local v6    # "destPath":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 331
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_6
    if-eqz v12, :cond_1

    .line 333
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 334
    :catch_1
    move-exception v8

    .line 335
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 312
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "destPath":Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 313
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .local v13, "fo":Ljava/io/FileOutputStream;
    const v3, 0x19000

    .line 314
    .local v3, "count":I
    :try_start_6
    new-array v2, v3, [B

    .line 315
    .local v2, "buffer":[B
    const/16 v16, 0x0

    .line 316
    .local v16, "read":I
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v2, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 317
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v13, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 323
    .end local v2    # "buffer":[B
    .end local v16    # "read":I
    :catch_2
    move-exception v8

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 324
    .end local v3    # "count":I
    .end local v4    # "destFile":Ljava/io/File;
    .end local v6    # "destPath":Ljava/lang/String;
    .end local v7    # "destPlace":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "i":I
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    const-string v17, "FileBrowserUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: file not found, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 330
    if-eqz v9, :cond_8

    .line 331
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_8
    if-eqz v12, :cond_9

    .line 333
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 339
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 330
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v6    # "destPath":Ljava/lang/String;
    .restart local v7    # "destPlace":Ljava/io/File;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v15    # "i":I
    .restart local v16    # "read":I
    :cond_a
    if-eqz v10, :cond_b

    .line 331
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_b
    if-eqz v13, :cond_1

    .line 333
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 334
    :catch_3
    move-exception v8

    .line 335
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 334
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "destFile":Ljava/io/File;
    .end local v6    # "destPath":Ljava/lang/String;
    .end local v7    # "destPlace":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .end local v15    # "i":I
    .end local v16    # "read":I
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    .line 335
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 326
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 327
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string v17, "FileBrowserUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 330
    if-eqz v9, :cond_c

    .line 331
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_c
    if-eqz v12, :cond_9

    .line 333
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    .line 334
    :catch_6
    move-exception v8

    .line 335
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 329
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 330
    :goto_6
    if-eqz v9, :cond_d

    .line 331
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 332
    :cond_d
    if-eqz v12, :cond_e

    .line 333
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 336
    :cond_e
    :goto_7
    throw v17

    .line 334
    :catch_7
    move-exception v8

    .line 335
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 329
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v6    # "destPath":Ljava/lang/String;
    .restart local v7    # "destPlace":Ljava/io/File;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v15    # "i":I
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto :goto_6

    .line 326
    .end local v3    # "count":I
    .end local v4    # "destFile":Ljava/io/File;
    .end local v6    # "destPath":Ljava/lang/String;
    .end local v7    # "destPlace":Ljava/io/File;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "i":I
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v6    # "destPath":Ljava/lang/String;
    .restart local v7    # "destPlace":Ljava/io/File;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v15    # "i":I
    :catch_9
    move-exception v8

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto :goto_5

    .line 323
    .end local v3    # "count":I
    .end local v4    # "destFile":Ljava/io/File;
    .end local v6    # "destPath":Ljava/lang/String;
    .end local v7    # "destPlace":Ljava/io/File;
    .end local v15    # "i":I
    :catch_a
    move-exception v8

    goto/16 :goto_3

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catch_b
    move-exception v8

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 591
    const/4 v3, 0x0

    .line 592
    .local v3, "result":Z
    const-wide/16 v4, 0x0

    .line 593
    .local v4, "size":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 594
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v7

    invoke-virtual {v7, p2, v8, v4, v5}, Lcom/market2345/filebrowser/FileControl;->notifyDataChange(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;IJ)V

    .line 622
    :goto_0
    return v6

    .line 599
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 602
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_1

    .line 603
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "771"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 604
    .local v0, "args1":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 605
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string v7, "777"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 606
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 609
    .end local v0    # "args1":[Ljava/lang/String;
    .end local v1    # "args2":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 610
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 612
    if-eqz v3, :cond_2

    .line 613
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7, v4, v5}, Lcom/market2345/filebrowser/FileControl;->notifyDataChange(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;IJ)V

    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    move v6, v3

    .line 622
    goto :goto_0

    .line 616
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    invoke-static {p0}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7, v4, v5}, Lcom/market2345/filebrowser/FileControl;->notifyDataChange(Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    const/4 v3, 0x1

    goto :goto_1

    .line 619
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static deleteImage(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 544
    invoke-static {p0, p2, p3}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteFile(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 546
    .local v0, "result":Z
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 551
    :cond_0
    return v0
.end method

.method public static deleteMusic(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 555
    invoke-static {p0, p2, p3}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteFile(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 557
    .local v0, "result":Z
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    :cond_0
    return v0
.end method

.method public static deleteOtherFile(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {p0, p2, p3}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteFile(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 580
    .local v0, "result":Z
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 581
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 587
    :cond_0
    return v0
.end method

.method public static deleteVideo(Landroid/content/Context;ILjava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;

    .prologue
    .line 566
    invoke-static {p0, p2, p3}, Lcom/market2345/filebrowser/FileBrowserUtil;->deleteFile(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/filebrowser/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 568
    .local v0, "result":Z
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    :cond_0
    return v0
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 427
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 428
    .local v1, "dateFormat":Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 429
    .local v2, "timeFormat":Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 430
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 8
    .param p0, "duration"    # I

    .prologue
    .line 466
    div-int/lit16 v5, p0, 0x3e8

    .line 467
    .local v5, "second":I
    div-int/lit8 v3, v5, 0x3c

    .line 468
    .local v3, "minute":I
    div-int/lit8 v1, v3, 0x3c

    .line 470
    .local v1, "hour":I
    invoke-static {v5}, Lcom/market2345/filebrowser/FileBrowserUtil;->changeFor60(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "s":Ljava/lang/String;
    invoke-static {v3}, Lcom/market2345/filebrowser/FileBrowserUtil;->changeFor60(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "m":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 473
    invoke-static {v1}, Lcom/market2345/filebrowser/FileBrowserUtil;->changeFor60(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "h":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    .end local v0    # "h":Ljava/lang/String;
    :goto_0
    return-object v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 236
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 237
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 238
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 240
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 242
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 247
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 243
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "FileBrowserUtil"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getApkInfo(Landroid/content/Context;Lcom/market2345/filebrowser/bean/FileInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/market2345/filebrowser/bean/FileInfo;

    .prologue
    .line 626
    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->appName:Ljava/lang/String;

    .line 628
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    const-string v4, "apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 633
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 637
    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 638
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 642
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 643
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 644
    iget-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 646
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/market2345/filebrowser/bean/FileInfo;->appName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDocMimeTypeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->mDocMimeTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 251
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 252
    .local v0, "dotPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 253
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 259
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 260
    .local v0, "dotPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 275
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 276
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 267
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 268
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSDCardInfo()Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;
    .locals 14

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 392
    .local v9, "sDcString":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 393
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 396
    .local v8, "pathFile":Ljava/io/File;
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 399
    .local v10, "statfs":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v6, v11

    .line 402
    .local v6, "nTotalBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v4, v11

    .line 405
    .local v4, "nBlocSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v2, v11

    .line 410
    .local v2, "nAvailaBlock":J
    new-instance v1, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;

    invoke-direct {v1}, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;-><init>()V

    .line 412
    .local v1, "info":Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;
    mul-long v12, v6, v4

    iput-wide v12, v1, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->total:J

    .line 415
    mul-long v12, v2, v4

    iput-wide v12, v1, Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;->free:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v1    # "info":Lcom/market2345/filebrowser/FileBrowserUtil$SDCardInfo;
    .end local v2    # "nAvailaBlock":J
    .end local v4    # "nBlocSize":J
    .end local v6    # "nTotalBlocks":J
    .end local v8    # "pathFile":Ljava/io/File;
    .end local v10    # "statfs":Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 418
    .restart local v8    # "pathFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "FileBrowserUtil"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "pathFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v1, ""

    .line 659
    .local v1, "suffix":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 661
    .local v0, "lastDot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 662
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 665
    :cond_0
    return-object v1
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lcom/market2345/filebrowser/FileBrowserUtil;->ANDROID_SECURE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 676
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 677
    const/4 v0, 0x1

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPic(Ljava/lang/String;)Z
    .locals 3
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "isPic":Z
    invoke-static {p0}, Lcom/market2345/filebrowser/FileBrowserUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    sget-object v1, Lcom/market2345/filebrowser/FileBrowserUtil;->picFileMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 706
    :cond_0
    return v0
.end method

.method public static isSDCardReady()Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 3
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, "isText":Z
    invoke-static {p0}, Lcom/market2345/filebrowser/FileBrowserUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    sget-object v1, Lcom/market2345/filebrowser/FileBrowserUtil;->textFileMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 697
    :cond_0
    return v0
.end method

.method public static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path1"    # Ljava/lang/String;
    .param p1, "path2"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 527
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    :cond_0
    const-string v4, "\u6253\u5f00\u5931\u8d25\uff0c\u6587\u4ef6\u8def\u5f84\u4e0d\u5b58\u5728"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 541
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 533
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 536
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "\u6253\u5f00\u5931\u8d25\uff0c\u4e0d\u652f\u6301\u6b64\u683c\u5f0f"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setText(Landroid/view/View;II)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "text"    # I

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 354
    const/4 v1, 0x0

    .line 357
    :goto_0
    return v1

    .line 356
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 357
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setText(Landroid/view/View;ILjava/lang/String;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 344
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    .line 347
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setWallPaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "isBmp"    # Z

    .prologue
    const/4 v1, -0x1

    .line 492
    if-nez p3, :cond_1

    if-nez p1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v1

    .line 496
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    .line 501
    :cond_2
    if-eqz p3, :cond_3

    .line 502
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :goto_1
    const/4 v1, 0x1

    .line 514
    if-eqz p3, :cond_4

    .line 515
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 508
    :catch_1
    move-exception v0

    .line 509
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    if-eqz p3, :cond_5

    .line 515
    :try_start_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 519
    :catch_2
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 517
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 513
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 514
    if-eqz p3, :cond_6

    .line 515
    :try_start_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 521
    :goto_2
    throw v1

    .line 517
    :cond_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 519
    :catch_3
    move-exception v0

    .line 520
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
