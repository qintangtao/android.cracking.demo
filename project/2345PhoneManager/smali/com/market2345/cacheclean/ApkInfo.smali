.class public Lcom/market2345/cacheclean/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private installed:I

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private select:Z

.field private size:J

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/cacheclean/ApkInfo;->select:Z

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/cacheclean/ApkInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInstalled()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/market2345/cacheclean/ApkInfo;->installed:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/cacheclean/ApkInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/cacheclean/ApkInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/cacheclean/ApkInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/market2345/cacheclean/ApkInfo;->size:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/market2345/cacheclean/ApkInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/cacheclean/ApkInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ApkInfo;->select:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/cacheclean/ApkInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public setInstalled(I)V
    .locals 0
    .param p1, "installed"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/market2345/cacheclean/ApkInfo;->installed:I

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/cacheclean/ApkInfo;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/market2345/cacheclean/ApkInfo;->packageName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/market2345/cacheclean/ApkInfo;->path:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ApkInfo;->select:Z

    .line 114
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/market2345/cacheclean/ApkInfo;->size:J

    .line 94
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/market2345/cacheclean/ApkInfo;->versionCode:I

    .line 84
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/market2345/cacheclean/ApkInfo;->versionName:Ljava/lang/String;

    .line 74
    return-void
.end method
