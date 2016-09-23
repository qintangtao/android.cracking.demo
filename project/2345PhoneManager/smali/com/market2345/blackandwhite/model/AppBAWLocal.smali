.class public Lcom/market2345/blackandwhite/model/AppBAWLocal;
.super Ljava/lang/Object;
.source "AppBAWLocal.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ad:I

.field public bigimgInfo:Ljava/lang/String;

.field public category_id:Ljava/lang/String;

.field public category_title:Ljava/lang/String;

.field public charge:I

.field public fcolor:Ljava/lang/String;

.field public fileLength:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconbg:Ljava/lang/String;

.field public isInspected:Z

.field public ishot:I

.field public lastUpdateTime:Ljava/util/Date;

.field public mark:Ljava/lang/String;

.field public minSDK:I

.field public oneword:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public publicDate:Ljava/lang/String;

.field public recomIco:I

.field public sLabel:Ljava/lang/String;

.field public sLang:Ljava/lang/String;

.field public sOperName:Ljava/lang/String;

.field public safe:I

.field public screenslot:Ljava/lang/String;

.field public shortURL:Ljava/lang/String;

.field public sid:I

.field public smallimgInfo:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public sysIng:Ljava/lang/String;

.field public tagName:Ljava/lang/String;

.field public tagParent:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalDowns:Ljava/lang/String;

.field public type_id:I

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->ad:I

    .line 61
    iput v0, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->charge:I

    .line 63
    iput v0, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->safe:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->isInspected:Z

    return-void
.end method

.method public static createFromApp(Lcom/market2345/model/App;)Lcom/market2345/blackandwhite/model/AppBAWLocal;
    .locals 2
    .param p0, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 137
    new-instance v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    invoke-direct {v0}, Lcom/market2345/blackandwhite/model/AppBAWLocal;-><init>()V

    .line 138
    .local v0, "copy":Lcom/market2345/blackandwhite/model/AppBAWLocal;
    iget-object v1, p0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->version:Ljava/lang/String;

    .line 139
    iget v1, p0, Lcom/market2345/model/App;->versionCode:I

    iput v1, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->versionCode:I

    .line 140
    iget-object v1, p0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    .line 141
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 132
    instance-of v0, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->category_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "category_title"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->category_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "fileLength"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->fileLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "icon"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "mark"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->mark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "publicDate"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->publicDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "screenslot"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->screenslot:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "sid"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->sid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "summary"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "title"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "totalDowns"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->totalDowns:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "url"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "version"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "versionCode"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "oneword"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->oneword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "slabel"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->sLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "ad"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->ad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "charge"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->charge:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "safe"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->safe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v1, "tagName"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "sysIng"

    iget-object v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->sysIng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "minSDK"

    iget v2, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->minSDK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    return-object v0
.end method

.method public initShortUrl()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/blackandwhite/model/AppBAWLocal;->shortURL:Ljava/lang/String;

    .line 126
    return-void
.end method
