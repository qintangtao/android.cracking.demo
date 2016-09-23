.class public Lcom/market2345/cacheclean/BigFileInfo;
.super Ljava/lang/Object;
.source "BigFileInfo.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isApkFile:Z

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->size:J

    return-wide v0
.end method

.method public isApkFile()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->isApkFile:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/market2345/cacheclean/BigFileInfo;->isSelect:Z

    return v0
.end method

.method public setApkFile(Z)V
    .locals 0
    .param p1, "isApkFile"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->isApkFile:Z

    .line 68
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->path:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->isSelect:Z

    .line 78
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/market2345/cacheclean/BigFileInfo;->size:J

    .line 38
    return-void
.end method
