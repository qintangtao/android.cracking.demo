.class public Lcom/market2345/download/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sUniqueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/market2345/download/Helpers;->sUniqueLock:Ljava/lang/Object;

    .line 28
    const-class v0, Lcom/market2345/download/Helpers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/Helpers;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "useDefaults"    # Z

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "extension":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 156
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "DownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 169
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "DownloadManager"

    const-string v2, "adding default html extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    const-string v0, ".html"

    .line 188
    :cond_3
    :goto_1
    return-object v0

    .line 163
    :cond_4
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_5
    if-eqz p1, :cond_3

    .line 176
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 177
    const-string v1, "DownloadManager"

    const-string v2, "adding default text extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 181
    :cond_7
    if-eqz p1, :cond_3

    .line 182
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 183
    const-string v1, "DownloadManager"

    const-string v2, "adding default binary extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method private static chooseExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "extension":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 195
    .local v0, "dotIndex":I
    if-ltz v0, :cond_0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ge v0, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 196
    .local v2, "missingExtension":Z
    :goto_0
    if-nez v2, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_1
    return-object v1

    .line 195
    .end local v2    # "missingExtension":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static chooseUniqueFilenameLocked(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "fullFilename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v0

    .line 214
    .end local v0    # "fullFilename":Ljava/lang/String;
    .local v1, "fullFilename":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 210
    .end local v1    # "fullFilename":Ljava/lang/String;
    .restart local v0    # "fullFilename":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .line 211
    .local v3, "sequence":I
    const/4 v2, 0x0

    .local v2, "iteration":I
    :goto_1
    const v4, 0x7fffffff

    if-ge v2, v4, :cond_2

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v0

    .line 214
    .end local v0    # "fullFilename":Ljava/lang/String;
    .restart local v1    # "fullFilename":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v1    # "fullFilename":Ljava/lang/String;
    .restart local v0    # "fullFilename":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_2
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0x1ec

    const-string v6, "failed to generate an unused filename on internal download storage"

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method static generateSaveFile(Lcom/market2345/download/DownloadInfo;Lcom/market2345/download/DownloadThread$State;Lcom/market2345/download/StorageManager;)Ljava/lang/String;
    .locals 16
    .param p0, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "storageManager"    # Lcom/market2345/download/StorageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    .line 39
    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 43
    :cond_0
    const-string v12, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 44
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    sget-object v13, Lcom/market2345/download/Constants;->DOWNLOAD_DIRTYP:Ljava/lang/String;

    invoke-direct {v3, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_1

    .line 46
    new-instance v3, Ljava/io/File;

    .end local v3    # "dir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v3, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .restart local v3    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_3

    .line 54
    new-instance v12, Lcom/market2345/download/exception/StopRequestException;

    const/16 v13, 0x1ec

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unable to create external downloads directory "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 49
    .end local v3    # "dir":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/market2345/MarketApplication;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "apk"

    invoke-direct {v3, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "dir":Ljava/io/File;
    goto :goto_0

    .line 59
    :cond_3
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/download/DownloadInfo;->mSourceFrom:I

    if-ne v12, v13, :cond_5

    .line 60
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "fileName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    .line 75
    .local v2, "context":Landroid/content/Context;
    const-wide/16 v8, 0x0

    .line 76
    .local v8, "length":J
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/market2345/download/DownloadThread;->queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 78
    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v6

    .line 79
    .local v6, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v6, :cond_4

    .line 80
    new-instance v12, Ljava/io/File;

    iget-object v13, v6, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 81
    .local v10, "originLength":J
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/download/DownloadInfo;->mTargetSize:J

    add-long v8, v12, v14

    .line 87
    .end local v6    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v10    # "originLength":J
    :cond_4
    :goto_2
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/market2345/download/StorageManager;->verifySpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "root":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v7, v4, v12, v13}, Lcom/market2345/download/Helpers;->getFullPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 62
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "root":Ljava/lang/String;
    .end local v8    # "length":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 63
    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v13, ".apk"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 64
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 65
    .local v5, "index":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 66
    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 67
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "index":I
    :cond_7
    const-string v4, "download_def"

    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 70
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 84
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v8    # "length":J
    :cond_9
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    goto/16 :goto_2
.end method

.method private static getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/market2345/download/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {p1}, Lcom/market2345/download/Helpers;->chooseExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, ".bin"

    .line 147
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    .line 144
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 147
    goto :goto_0
.end method

.method static getFullPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p2, p3}, Lcom/market2345/download/Helpers;->getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "extension":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    sget-object v4, Lcom/market2345/download/Helpers;->sUniqueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 113
    :try_start_0
    invoke-static {p1, v1}, Lcom/market2345/download/Helpers;->chooseUniqueFilenameLocked(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 118
    .local v2, "path":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0x1ec

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create target file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0x1ec

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create target file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 126
    .restart local v2    # "path":Ljava/lang/String;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2
.end method
