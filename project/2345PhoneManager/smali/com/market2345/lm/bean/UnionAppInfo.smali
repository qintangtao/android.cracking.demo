.class public Lcom/market2345/lm/bean/UnionAppInfo;
.super Ljava/lang/Object;
.source "UnionAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public apkLocUrl:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public checked:Z

.field public description:Ljava/lang/String;

.field public iconpath:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isDown:Z

.field public isUnionSoftware:Z

.field public lastestVersionCode:I

.field public packagename:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public softname:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getApkLocUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->apkLocUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->iconpath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastestVersionCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->lastestVersionCode:I

    return v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->softname:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    return v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->isDown:Z

    return v0
.end method

.method public isUnionSoftware()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/market2345/lm/bean/UnionAppInfo;->isUnionSoftware:Z

    return v0
.end method

.method public setApkLocUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkLocUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->apkLocUrl:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    .line 51
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->description:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setDown(Z)V
    .locals 0
    .param p1, "isDown"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->isDown:Z

    .line 191
    return-void
.end method

.method public setIconpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconpath"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->iconpath:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->id:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLastestVersionCode(I)V
    .locals 0
    .param p1, "lastestVersionCode"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->lastestVersionCode:I

    .line 111
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->packagename:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->size:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSoftname(Ljava/lang/String;)V
    .locals 0
    .param p1, "softname"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->softname:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUnionSoftware(Z)V
    .locals 0
    .param p1, "isUnionSoftware"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->isUnionSoftware:Z

    .line 181
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->url:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->versionCode:I

    .line 121
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionAppInfo;->versionName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 205
    return-void
.end method
