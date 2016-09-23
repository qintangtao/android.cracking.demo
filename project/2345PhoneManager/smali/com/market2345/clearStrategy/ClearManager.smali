.class public Lcom/market2345/clearStrategy/ClearManager;
.super Ljava/lang/Object;
.source "ClearManager.java"

# interfaces
.implements Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;


# static fields
.field private static DB_FILE_BAK_PATH:Ljava/lang/String; = null

.field public static DB_FILE_PATH:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "ClearManager"

.field private static UPDATE_PERIOD_IN_DAYS:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "filepath.db"

    sput-object v0, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    .line 33
    const-string v0, "filepath.db.bak"

    sput-object v0, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_BAK_PATH:Ljava/lang/String;

    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/market2345/clearStrategy/ClearManager;->UPDATE_PERIOD_IN_DAYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->isDbFileExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->backupOldDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/market2345/clearStrategy/ClearManager;Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clearStrategy/ClearManager;
    .param p1, "x1"    # Lcom/market2345/clearStrategy/ClearDataResp$Data;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/market2345/clearStrategy/ClearDbDownloader;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/clearStrategy/ClearManager;->doDownload(Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/clearStrategy/ClearManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clearStrategy/ClearManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->getClearDbTmpFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static backupOldDb()Z
    .locals 3

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbFile()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbBackupFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/clearStrategy/ClearManager;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkIsNeedUpdate()Z
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/common/util/NetworkUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->isUserAllowed()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->isDbFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->checkCleanDbUpdatePeriodInDays(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/market2345/clearStrategy/ClearManager;->UPDATE_PERIOD_IN_DAYS:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearTmp()V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->getClearDbTmpFile()Ljava/io/File;

    move-result-object v0

    .line 281
    .local v0, "clearDbTmpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 282
    :cond_0
    return-void
.end method

.method private closeClearDatabase()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "inStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "inStream":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    .restart local v0    # "inStream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v7, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 216
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 217
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 218
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 219
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 220
    return-void
.end method

.method public static decrptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encryptedVal"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDecrytedKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/market2345/common/util/Utils;->decryptCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, ""

    goto :goto_0
.end method

.method private doDownload(Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V
    .locals 1
    .param p1, "list"    # Lcom/market2345/clearStrategy/ClearDataResp$Data;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "clearDbDownloader"    # Lcom/market2345/clearStrategy/ClearDbDownloader;

    .prologue
    .line 171
    new-instance v0, Lcom/market2345/clearStrategy/ClearManager$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/market2345/clearStrategy/ClearManager$2;-><init>(Lcom/market2345/clearStrategy/ClearManager;Lcom/market2345/clearStrategy/ClearDbDownloader;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDataResp$Data;)V

    invoke-static {v0}, Lcom/market2345/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method private getClearDbTmpFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleardb.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDecrytedKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const-string v1, "ClearManager"

    const-string v2, "getDecrytedKey"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/util/SecurityAppInfo;->getSolidKey(Landroid/content/Context;)[B

    move-result-object v0

    .line 125
    .local v0, "solidKey":[B
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDefaultDbBackupFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 244
    sget-object v1, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "dbPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_BAK_PATH:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDefaultDbFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 239
    sget-object v1, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "dbPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLatestClearDbPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "dbPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 52
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 57
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/market2345/cacheclean/Util;->copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-static {v3}, Lcom/market2345/clearStrategy/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "calculateMD5":Ljava/lang/String;
    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getCleanDbMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    invoke-static {v4}, Lcom/market2345/clearStrategy/MD5;->calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    sget-object v5, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/market2345/clearStrategy/ClearManager;->DB_FILE_PATH:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/market2345/cacheclean/Util;->copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static isDbFileExist()Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbFile()Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static isUserAllowed()Z
    .locals 3

    .prologue
    .line 193
    sget-object v0, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    const-string v1, "clean_database_update_set"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static varargs queryStrategyByPkgnames([Ljava/lang/String;)Lcom/market2345/clearStrategy/Strategy;
    .locals 1
    .param p0, "pkgNames"    # [Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method private static replaceOldDb(Ljava/io/File;)Z
    .locals 2
    .param p0, "resultFile"    # Ljava/io/File;

    .prologue
    .line 227
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbFile()Ljava/io/File;

    move-result-object v0

    .line 229
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 234
    const-string v1, ""

    invoke-static {v1}, Lcom/market2345/clearStrategy/ClearManager;->updatePrefs(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method private restoreDefaultDb()V
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbBackupFile()Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "defaultDbBackupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getDefaultDbFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 273
    :cond_0
    return-void
.end method

.method private static updatePrefs(Ljava/lang/String;)V
    .locals 1
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setCleanDbLastUpdateTime(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setCleanDbMd5(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private static verifyDbMd5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resultFile"    # Ljava/io/File;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/market2345/clearStrategy/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeClearDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public failed()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->restoreDefaultDb()V

    .line 265
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->clearTmp()V

    .line 266
    return-void
.end method

.method public finish(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p1, p2}, Lcom/market2345/clearStrategy/ClearManager;->verifyDbMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p1}, Lcom/market2345/clearStrategy/ClearManager;->replaceOldDb(Ljava/io/File;)Z

    .line 258
    :cond_0
    invoke-static {p2}, Lcom/market2345/clearStrategy/ClearManager;->updatePrefs(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->clearTmp()V

    .line 260
    return-void
.end method

.method public getCurrentDbVersion()I
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "dbVersion":I
    :try_start_0
    iget-object v2, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select version from db_config_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 106
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->closeClearDatabase()V

    .line 119
    :goto_2
    return v1

    .line 112
    :catch_0
    move-exception v2

    .line 115
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->closeClearDatabase()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearManager;->closeClearDatabase()V

    throw v2

    .line 107
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->getLatestClearDbPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateDbFile(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 139
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->checkIsNeedUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/market2345/base/log/L;->clearLog()V

    .line 142
    new-instance v0, Lcom/market2345/clearStrategy/ClearManager$1;

    invoke-direct {v0, p0}, Lcom/market2345/clearStrategy/ClearManager$1;-><init>(Lcom/market2345/clearStrategy/ClearManager;)V

    .line 166
    .local v0, "listener":Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    sget-object v1, Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/market2345/http/MarketAPI;->updateAppClearData(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 168
    .end local v0    # "listener":Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    :cond_0
    return-void
.end method
