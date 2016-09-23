.class Lcom/market2345/download/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mBytesNotified:J

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field public mContentLocation:Ljava/lang/String;

.field public mContinuingDownload:Z

.field public mCurrentBytes:J

.field public mDeleteFile:Z

.field public mFilename:Ljava/lang/String;

.field public mHeaderETag:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mOriginalUrl:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mRedirectionCount:I

.field public mSpeed:J

.field public mSpeedSampleBytes:J

.field public mSpeedSampleStart:J

.field public mTimeLastNotification:J

.field public mTotalBytes:J

.field public mUrl:Ljava/net/URL;

.field public mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    .line 182
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 184
    iput-boolean v3, p0, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    .line 185
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mBytesNotified:J

    .line 186
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mTimeLastNotification:J

    .line 187
    iput-boolean v3, p0, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    .line 202
    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 215
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 216
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 217
    iget-wide v6, p2, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "f":Ljava/io/File;
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_1
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 224
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mPackageName:Ljava/lang/String;

    .line 225
    iget v3, p2, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iput v3, p0, Lcom/market2345/download/DownloadThread$State;->mVersionCode:I

    .line 229
    :try_start_0
    invoke-static {p1, p2}, Lcom/market2345/download/DownloadThread;->queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 230
    new-instance v3, Ljava/net/URL;

    iget-object v4, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 231
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 233
    :cond_2
    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadThread$State;->downPartial(Lcom/market2345/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, p2}, Lcom/market2345/common/util/Utils;->validateDownPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    new-instance v3, Ljava/net/URL;

    iget-object v4, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 235
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    .line 236
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "downPartial"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x190

    invoke-direct {v3, v4, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 240
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 241
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p3, "app"    # Lcom/market2345/model/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    .line 182
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 184
    iput-boolean v3, p0, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    .line 185
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mBytesNotified:J

    .line 186
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mTimeLastNotification:J

    .line 187
    iput-boolean v3, p0, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    .line 202
    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 252
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 253
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 254
    iget-wide v6, p2, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    iput-wide v6, p0, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "f":Ljava/io/File;
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_1
    iput-wide v4, p0, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 261
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mPackageName:Ljava/lang/String;

    .line 262
    iget v3, p2, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iput v3, p0, Lcom/market2345/download/DownloadThread$State;->mVersionCode:I

    .line 266
    :try_start_0
    invoke-static {p1, p2}, Lcom/market2345/download/DownloadThread;->queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 267
    new-instance v3, Ljava/net/URL;

    iget-object v4, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 268
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    .line 288
    :goto_0
    return-void

    .line 270
    :cond_2
    iget v3, p3, Lcom/market2345/model/App;->mDownPartial:I

    if-ne v3, v8, :cond_3

    .line 271
    new-instance v3, Ljava/net/URL;

    iget-object v4, p3, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 272
    iget-object v3, p3, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    .line 273
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "downPartial"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v3, "patchSize"

    iget-wide v4, p3, Lcom/market2345/model/App;->patch_size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string v3, "patchUrl"

    iget-object v4, p3, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, "lowMD5"

    iget-object v4, p3, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x190

    invoke-direct {v3, v4, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 280
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 281
    iget-object v3, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private downPartial(Lcom/market2345/download/DownloadInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 306
    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mPatchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downPartial(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 345
    iget-object v0, p1, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFormerMD5(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 315
    iget-object v1, p2, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 317
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p2, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    iget-object v2, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 321
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateFormerMD5(Landroid/content/Context;Lcom/market2345/model/App;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 330
    iget-object v1, p2, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 332
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p2, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    iget-object v2, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 336
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public resetBeforeExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 294
    iput-object v2, p0, Lcom/market2345/download/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 295
    iput-object v2, p0, Lcom/market2345/download/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/download/DownloadThread$State;->mRedirectionCount:I

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/download/DownloadThread$State;->mSpeed:J

    .line 298
    return-void
.end method
