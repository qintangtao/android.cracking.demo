.class public Lcom/market2345/lm/bean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkLocUrl:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public appSize:Ljava/lang/String;

.field public checked:Z

.field public curVersionCode:I

.field public description:Ljava/lang/String;

.field public isDown:Z

.field public isUnionSoftware:Z

.field public lastestVersionCode:I

.field public packageName:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/market2345/lm/bean/AppInfo$1;

    invoke-direct {v0}, Lcom/market2345/lm/bean/AppInfo$1;-><init>()V

    sput-object v0, Lcom/market2345/lm/bean/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getApkLocUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->apkLocUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVersionCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/market2345/lm/bean/AppInfo;->curVersionCode:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLastestVersionCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/market2345/lm/bean/AppInfo;->lastestVersionCode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/market2345/lm/bean/AppInfo;->isDown:Z

    return v0
.end method

.method public isUnionSoftware()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/market2345/lm/bean/AppInfo;->isUnionSoftware:Z

    return v0
.end method

.method public setApkLocUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkLocUrl"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->apkLocUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkUrl"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->apkUrl:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 149
    return-void
.end method

.method public setAppIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIconUrl"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->appIconUrl:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->appName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSize"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->appSize:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCurVersionCode(I)V
    .locals 0
    .param p1, "curVersionCode"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/market2345/lm/bean/AppInfo;->curVersionCode:I

    .line 99
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->description:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setDown(Z)V
    .locals 0
    .param p1, "isDown"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/market2345/lm/bean/AppInfo;->isDown:Z

    .line 169
    return-void
.end method

.method public setLastestVersionCode(I)V
    .locals 0
    .param p1, "lastestVersionCode"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/market2345/lm/bean/AppInfo;->lastestVersionCode:I

    .line 89
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUnionSoftware(Z)V
    .locals 0
    .param p1, "isUnionSoftware"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/market2345/lm/bean/AppInfo;->isUnionSoftware:Z

    .line 159
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/market2345/lm/bean/AppInfo;->versionName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->appSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastestVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/market2345/lm/bean/AppInfo;->lastestVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/market2345/lm/bean/AppInfo;->curVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->apkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkLocUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->apkLocUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->appIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/lm/bean/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUnionSoftware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/market2345/lm/bean/AppInfo;->isUnionSoftware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/market2345/lm/bean/AppInfo;->isDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lcom/market2345/lm/bean/AppInfo;->lastestVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/market2345/lm/bean/AppInfo;->curVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->apkLocUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/market2345/lm/bean/AppInfo;->isUnionSoftware:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 199
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/market2345/lm/bean/AppInfo;->isDown:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 200
    iget-object v0, p0, Lcom/market2345/lm/bean/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    return-void
.end method
