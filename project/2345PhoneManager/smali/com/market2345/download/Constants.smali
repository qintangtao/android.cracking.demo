.class public Lcom/market2345/download/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field public static final DOWNLOAD_DIRTYP:Ljava/lang/String;

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "_"

.field public static final FILENAME_SEQUENCE_SEPARATOR_LEFT:Ljava/lang/String; = "("

.field public static final FILENAME_SEQUENCE_SEPARATOR_RIGHT:Ljava/lang/String; = ")"

.field public static final INNER_DOWNLOAD_DIRTYP:Ljava/lang/String; = "apk"

.field private static final LOCAL_LOGV:Z = false

.field private static final LOCAL_LOGVV:Z = false

.field public static final LOGV:Z

.field public static final LOGVV:Z

.field static final LOGX:Z = false

.field public static final MAX_DOWNLOADS:I = 0x3e8

.field public static final MAX_REDIRECTS:I = 0x5

.field public static final MAX_RETRIES:I = 0x5

.field public static final MAX_RETRY_AFTER:I = 0x15180

.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package"

.field public static final MIN_PROGRESS_STEP:I = 0x5000

.field public static final MIN_PROGRESS_TIME:J = 0x32L

.field public static final MIN_RETRY_AFTER:I = 0x1e

.field public static final RETRY_FIRST_DELAY:I = 0x1e

.field public static final STORAGE_AUTHORITY:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field public static final STORAGE_ROOT_ID:Ljava/lang/String; = "downloads"

.field public static final TAG:Ljava/lang/String; = "DownloadManager"

.field public static final UI_THREAD_NAME:Ljava/lang/String; = "main"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 49
    .local v3, "validRelease":Z
    :goto_0
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 50
    .local v2, "validId":Z
    :goto_1
    const-string v6, "REL"

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v4

    .line 53
    .local v1, "includeModel":Z
    :goto_2
    const-string v4, "AndroidDownloadManager"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    if-eqz v3, :cond_0

    .line 55
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    const-string v4, " (Linux; U; Android"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    if-eqz v3, :cond_1

    .line 59
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    .line 62
    :cond_2
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    if-eqz v1, :cond_3

    .line 64
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_3
    if-eqz v2, :cond_4

    .line 67
    const-string v4, " Build/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_4
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/market2345/download/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 125
    sput-boolean v5, Lcom/market2345/download/Constants;->LOGV:Z

    .line 129
    sput-boolean v5, Lcom/market2345/download/Constants;->LOGVV:Z

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2345\u624b\u673a\u52a9\u624b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/market2345/download/Constants;->DOWNLOAD_DIRTYP:Ljava/lang/String;

    return-void

    .end local v1    # "includeModel":Z
    .end local v2    # "validId":Z
    .end local v3    # "validRelease":Z
    :cond_5
    move v3, v5

    .line 48
    goto/16 :goto_0

    .restart local v3    # "validRelease":Z
    :cond_6
    move v2, v5

    .line 49
    goto/16 :goto_1

    .restart local v2    # "validId":Z
    :cond_7
    move v1, v5

    .line 50
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
