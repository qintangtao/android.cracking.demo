.class public Lcom/market2345/download/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAllowedNetworkTypes:I

.field public mCertMd5:Ljava/lang/String;

.field private mDescription:Ljava/lang/CharSequence;

.field public mDownPartial:I

.field public mIconUrl:Ljava/lang/String;

.field public mLowMD5:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field public mMinSDK:I

.field private mPackageName:Ljava/lang/String;

.field public mPatchSize:J

.field public mPatchUrl:Ljava/lang/String;

.field public mPlatform:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSid:Ljava/lang/String;

.field public mSourceFrom:I

.field public mStartInstall:Z

.field private mStatus:I

.field public mTargetSize:J

.field private mTitle:Ljava/lang/CharSequence;

.field private mTotalBytes:J

.field private mUri:Landroid/net/Uri;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/market2345/download/DownloadManager$Request;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 109
    const/4 v1, 0x1

    iput v1, p0, Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 111
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/market2345/download/DownloadManager$Request;->mStartInstall:Z

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_2
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 201
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/download/DownloadManager$Request;->mStartInstall:Z

    .line 204
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 205
    return-void
.end method

.method static synthetic access$1202(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/market2345/download/DownloadManager$Request;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mVersionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/market2345/download/DownloadManager$Request;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/market2345/download/DownloadManager$Request;->mVersionCode:I

    return p1
.end method

.method static synthetic access$1702(Lcom/market2345/download/DownloadManager$Request;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    return p1
.end method

.method static synthetic access$1802(Lcom/market2345/download/DownloadManager$Request;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager$Request;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/market2345/download/DownloadManager$Request;->mStatus:I

    return p1
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "index":I
    iget-object v4, p0, Lcom/market2345/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 318
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http_header_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    add-int/lit8 v3, v3, 0x1

    .line 321
    goto :goto_0

    .line 322
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "headerString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 325
    if-eqz p3, :cond_0

    .line 326
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/download/DownloadManager$Request;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    if-nez p2, :cond_2

    .line 226
    const-string p2, ""

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/market2345/download/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 251
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/market2345/download/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/market2345/download/DownloadManager$Request;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 241
    return-object p0
.end method

.method toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v0, "values":Landroid/content/ContentValues;
    sget-boolean v1, Lcom/market2345/download/DownloadManager$Request;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 274
    :cond_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/market2345/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 281
    :cond_1
    const-string v1, "title"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Lcom/market2345/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v1, "description"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Lcom/market2345/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v1, "mimetype"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/market2345/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v1, "total_bytes"

    iget-wide v2, p0, Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "versionName"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "sid"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "versionCode"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v1, "firstMD5"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "secondMD5"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "serverMD5"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "platform"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "sourcefrom"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mSourceFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v2, "startInstall"

    iget-boolean v1, p0, Lcom/market2345/download/DownloadManager$Request;->mStartInstall:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v1, "minSDK"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mMinSDK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v1, "certMd5"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mCertMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "status"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v1, "allowed_network_types"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v1, "patchUrl"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mPatchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "patchSize"

    iget-wide v2, p0, Lcom/market2345/download/DownloadManager$Request;->mPatchSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string v1, "lowMD5"

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$Request;->mLowMD5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "targetSize"

    iget-wide v2, p0, Lcom/market2345/download/DownloadManager$Request;->mTargetSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string v1, "downPartial"

    iget v2, p0, Lcom/market2345/download/DownloadManager$Request;->mDownPartial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    return-object v0

    .line 298
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
