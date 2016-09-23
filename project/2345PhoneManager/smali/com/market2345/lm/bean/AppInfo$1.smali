.class final Lcom/market2345/lm/bean/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lm/bean/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/market2345/lm/bean/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/market2345/lm/bean/AppInfo;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    new-instance v0, Lcom/market2345/lm/bean/AppInfo;

    invoke-direct {v0}, Lcom/market2345/lm/bean/AppInfo;-><init>()V

    .line 210
    .local v0, "app":Lcom/market2345/lm/bean/AppInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setAppSize(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setLastestVersionCode(I)V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setCurVersionCode(I)V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setApkUrl(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setAppIconUrl(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setDescription(Ljava/lang/String;)V

    .line 221
    new-array v2, v5, [Z

    .line 222
    .local v2, "bUnionSoftware":[Z
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 223
    aget-boolean v3, v2, v4

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setUnionSoftware(Z)V

    .line 225
    new-array v1, v5, [Z

    .line 226
    .local v1, "bDown":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 227
    aget-boolean v3, v1, v4

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setDown(Z)V

    .line 229
    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/market2345/lm/bean/AppInfo;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 230
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/market2345/lm/bean/AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/market2345/lm/bean/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/market2345/lm/bean/AppInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 236
    new-array v0, p1, [Lcom/market2345/lm/bean/AppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/market2345/lm/bean/AppInfo$1;->newArray(I)[Lcom/market2345/lm/bean/AppInfo;

    move-result-object v0

    return-object v0
.end method
