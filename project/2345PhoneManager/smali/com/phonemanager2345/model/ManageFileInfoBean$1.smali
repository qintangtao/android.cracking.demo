.class final Lcom/phonemanager2345/model/ManageFileInfoBean$1;
.super Ljava/lang/Object;
.source "ManageFileInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/model/ManageFileInfoBean;
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
        "Lcom/phonemanager2345/model/ManageFileInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/ManageFileInfoBean;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 37
    new-instance v0, Lcom/phonemanager2345/model/ManageFileInfoBean;

    invoke-direct {v0}, Lcom/phonemanager2345/model/ManageFileInfoBean;-><init>()V

    .line 38
    .local v0, "fileInfo":Lcom/phonemanager2345/model/ManageFileInfoBean;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoBean;->setFileType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoBean;->setFileName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoBean;->setParam1(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoBean;->setParam2(Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/ManageFileInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/ManageFileInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/phonemanager2345/model/ManageFileInfoBean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Lcom/phonemanager2345/model/ManageFileInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/ManageFileInfoBean$1;->newArray(I)[Lcom/phonemanager2345/model/ManageFileInfoBean;

    move-result-object v0

    return-object v0
.end method
