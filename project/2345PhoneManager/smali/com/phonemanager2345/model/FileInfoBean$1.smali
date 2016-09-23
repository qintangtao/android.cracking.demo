.class final Lcom/phonemanager2345/model/FileInfoBean$1;
.super Ljava/lang/Object;
.source "FileInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/model/FileInfoBean;
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
        "Lcom/phonemanager2345/model/FileInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/FileInfoBean;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 41
    new-instance v0, Lcom/phonemanager2345/model/FileInfoBean;

    invoke-direct {v0}, Lcom/phonemanager2345/model/FileInfoBean;-><init>()V

    .line 42
    .local v0, "fileInfo":Lcom/phonemanager2345/model/FileInfoBean;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phonemanager2345/model/FileInfoBean;->setFileName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phonemanager2345/model/FileInfoBean;->setFileType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phonemanager2345/model/FileInfoBean;->setFileSize(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/phonemanager2345/model/FileInfoBean;->setModifyTime(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    new-array v1, v2, [Z

    .line 47
    .local v1, "subDirs":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 48
    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/phonemanager2345/model/FileInfoBean;->setSubDir(Z)V

    .line 50
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/FileInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/FileInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/phonemanager2345/model/FileInfoBean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 56
    new-array v0, p1, [Lcom/phonemanager2345/model/FileInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/FileInfoBean$1;->newArray(I)[Lcom/phonemanager2345/model/FileInfoBean;

    move-result-object v0

    return-object v0
.end method
