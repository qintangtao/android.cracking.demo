.class public Lcom/market2345/download/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "downloadManager"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/market2345/download/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 54
    iput-object p2, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 55
    iput-object p3, p0, Lcom/market2345/download/DownloadInfo$Reader;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 56
    return-void
.end method

.method private addHeader(Lcom/market2345/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    # getter for: Lcom/market2345/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/market2345/download/DownloadInfo;->access$100(Lcom/market2345/download/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getNewPercent(I)F
    .locals 5
    .param p1, "progressWrapper"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 142
    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 145
    .local v1, "progress":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    .local v0, "difP":F
    :goto_0
    mul-float v2, v0, v0

    sub-float v2, v4, v2

    return v2

    .line 148
    .end local v0    # "difP":F
    :cond_0
    sub-float v0, v4, v1

    .restart local v0    # "difP":F
    goto :goto_0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readRequestHeaders(Lcom/market2345/download/DownloadInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 154
    # getter for: Lcom/market2345/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/market2345/download/DownloadInfo;->access$100(Lcom/market2345/download/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual {p1}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "headers"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, "headerUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 160
    :try_start_0
    const-string v0, "header"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 162
    .local v7, "headerIndex":I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 164
    .local v8, "valueIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/market2345/download/DownloadInfo$Reader;->addHeader(Lcom/market2345/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v7    # "headerIndex":I
    .end local v8    # "valueIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7    # "headerIndex":I
    .restart local v8    # "valueIndex":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    .end local v7    # "headerIndex":I
    .end local v8    # "valueIndex":I
    :cond_1
    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "Referer"

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/market2345/download/DownloadInfo$Reader;->addHeader(Lcom/market2345/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;)Lcom/market2345/download/DownloadInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageManager"    # Lcom/market2345/download/StorageManager;

    .prologue
    .line 59
    new-instance v0, Lcom/market2345/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/market2345/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/market2345/download/StorageManager;Lcom/market2345/download/DownloadInfo$1;)V

    .line 61
    .local v0, "info":Lcom/market2345/download/DownloadInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/market2345/download/DownloadInfo;Z)V

    .line 62
    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->readRequestHeaders(Lcom/market2345/download/DownloadInfo;)V

    .line 63
    return-object v0
.end method

.method newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;Z)Lcom/market2345/download/DownloadInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageManager"    # Lcom/market2345/download/StorageManager;
    .param p3, "classify"    # Z

    .prologue
    .line 74
    new-instance v0, Lcom/market2345/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/market2345/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/market2345/download/StorageManager;Lcom/market2345/download/DownloadInfo$1;)V

    .line 75
    .local v0, "info":Lcom/market2345/download/DownloadInfo;
    invoke-virtual {p0, v0, p3}, Lcom/market2345/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/market2345/download/DownloadInfo;Z)V

    .line 76
    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->readRequestHeaders(Lcom/market2345/download/DownloadInfo;)V

    .line 77
    return-object v0
.end method

.method public updateFromDatabase(Lcom/market2345/download/DownloadInfo;Z)V
    .locals 6
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "classify"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    .line 87
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 88
    const-string v0, "sid"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    .line 89
    const-string v0, "iconUrl"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mIconUrl:Ljava/lang/String;

    .line 92
    const-string v0, "versionCode"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    .line 93
    const-string v0, "firstMD5"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mFirstMD5:Ljava/lang/String;

    .line 94
    const-string v0, "firstMD5_length"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mFirstMD5Length:J

    .line 95
    const-string v0, "secondMD5"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mSecondMD5:Ljava/lang/String;

    .line 96
    const-string v0, "serverMD5"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mServerMD5:Ljava/lang/String;

    .line 97
    const-string v0, "platform"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mPlatform:Ljava/lang/String;

    .line 98
    const-string v0, "sourcefrom"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mSourceFrom:I

    .line 99
    const-string v0, "startInstall"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/market2345/download/DownloadInfo;->mStartInstall:Z

    .line 100
    const-string v0, "minSDK"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mMinSDK:I

    .line 103
    const-string v0, "fileName"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 104
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 105
    const-string v0, "mNumFailed"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mNumFailed:I

    .line 106
    const-string v0, "isUpdate"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mIsUpdate:I

    .line 108
    const-string v0, "signatureError"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mSignatureError:I

    .line 109
    const-string v0, "certMd5"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mCertMd5:Ljava/lang/String;

    .line 110
    const-string v0, "lastModified"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mLastModified:J

    .line 111
    const-string v0, "useragent"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 112
    const-string v0, "referer"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 113
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    .line 114
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mCurrentBytes:J

    .line 115
    const-string v0, "etag"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mETag:Ljava/lang/String;

    .line 117
    const-string v0, "delete_file"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p1, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    .line 119
    const-string v0, "allowed_network_types"

    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mAllowedNetworkTypes:I

    .line 121
    const-string v0, "title"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 122
    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 124
    const-string v0, "packageName"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 125
    const-string v0, "versionName"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    .line 126
    const-string v0, "speed"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mSpeed:J

    .line 127
    const-string v0, "patchUrl"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    .line 128
    const-string v0, "patchSize"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mPatchSize:J

    .line 129
    const-string v0, "lowMD5"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    .line 131
    const-string v0, "targetSize"

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mTargetSize:J

    .line 133
    iget-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mCurrentBytes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p1, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadInfo$Reader;->getNewPercent(I)F

    move-result v0

    iput v0, p1, Lcom/market2345/download/DownloadInfo;->mProgress:F

    .line 135
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Lcom/market2345/download/DownloadManager;->getDownloadInfos()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$Reader;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    const-string v2, "status"

    invoke-virtual {p0, v2}, Lcom/market2345/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, v2, p2}, Lcom/market2345/download/DownloadManager;->classifyByStatus(Lcom/market2345/download/DownloadInfo;IZ)V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 117
    goto/16 :goto_1

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
