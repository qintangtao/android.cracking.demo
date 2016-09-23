.class public Lcom/market2345/model/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ad:I

.field public adverType:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public bigimgInfo:Ljava/lang/String;

.field public category_id:Ljava/lang/String;

.field public category_title:Ljava/lang/String;

.field public certMd5:Ljava/lang/String;

.field public chapterSoftWords:Ljava/lang/String;

.field public charge:I

.field public commentTotal:I

.field public fcolor:Ljava/lang/String;

.field public fileLength:Ljava/lang/String;

.field public fixed:I

.field public giftTotal:I

.field public icon:Ljava/lang/String;

.field public iconbg:Ljava/lang/String;

.field public isInspected:Z

.field public isLM:Z

.field public ishot:I

.field public language:Ljava/lang/String;

.field public low_md5:Ljava/lang/String;

.field public mDownPartial:I

.field public mPlatform:Ljava/lang/String;

.field public mSourceFrom:I

.field public mark:Ljava/lang/String;

.field public minSDK:I

.field public oneword:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public patch_size:J

.field public patch_url:Ljava/lang/String;

.field public publicDate:Ljava/lang/String;

.field public rank:I

.field public rankType:I

.field public recomIco:I

.field public sLabel:Ljava/lang/String;

.field public safe:I

.field public shortURL:Ljava/lang/String;

.field public sid:I

.field public smallimgInfo:Ljava/lang/String;

.field public sort:I

.field public summary:Ljava/lang/String;

.field public sysIng:Ljava/lang/String;

.field public system:Ljava/lang/String;

.field public tagName:Ljava/lang/String;

.field public tagParent:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalDowns:Ljava/lang/String;

.field public type_id:I

.field public updateLog:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/market2345/model/App;->ad:I

    .line 66
    iput v0, p0, Lcom/market2345/model/App;->charge:I

    .line 68
    iput v0, p0, Lcom/market2345/model/App;->safe:I

    .line 88
    iput-boolean v1, p0, Lcom/market2345/model/App;->isInspected:Z

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/model/App;->mSourceFrom:I

    .line 134
    const-string v0, "mapi"

    iput-object v0, p0, Lcom/market2345/model/App;->mPlatform:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/market2345/model/App;->isLM:Z

    .line 139
    iput v1, p0, Lcom/market2345/model/App;->mDownPartial:I

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-object v2, p0, Lcom/market2345/model/App;->category_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "category_title"

    iget-object v2, p0, Lcom/market2345/model/App;->category_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "fileLength"

    iget-object v2, p0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "icon"

    iget-object v2, p0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "mark"

    iget-object v2, p0, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "publicDate"

    iget-object v2, p0, Lcom/market2345/model/App;->publicDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "screenslot"

    iget-object v2, p0, Lcom/market2345/model/App;->smallimgInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "sid"

    iget v2, p0, Lcom/market2345/model/App;->sid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "summary"

    iget-object v2, p0, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "title"

    iget-object v2, p0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "totalDowns"

    iget-object v2, p0, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "url"

    iget-object v2, p0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "version"

    iget-object v2, p0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "versionCode"

    iget v2, p0, Lcom/market2345/model/App;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v1, "oneword"

    iget-object v2, p0, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "ad"

    iget v2, p0, Lcom/market2345/model/App;->ad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "charge"

    iget v2, p0, Lcom/market2345/model/App;->charge:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v1, "safe"

    iget v2, p0, Lcom/market2345/model/App;->safe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v1, "tagName"

    iget-object v2, p0, Lcom/market2345/model/App;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "sysIng"

    iget-object v2, p0, Lcom/market2345/model/App;->sysIng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "minSDK"

    iget v2, p0, Lcom/market2345/model/App;->minSDK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v1, "certMd5"

    iget-object v2, p0, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method public initShortUrl()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/model/App;->shortURL:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public isFixed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p0, Lcom/market2345/model/App;->fixed:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
