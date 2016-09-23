.class final Lcom/phonemanager2345/model/ManageFileInfoListBean$1;
.super Ljava/lang/Object;
.source "ManageFileInfoListBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/model/ManageFileInfoListBean;
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
        "Lcom/phonemanager2345/model/ManageFileInfoListBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/ManageFileInfoListBean;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Lcom/phonemanager2345/model/ManageFileInfoListBean;

    invoke-direct {v0}, Lcom/phonemanager2345/model/ManageFileInfoListBean;-><init>()V

    .line 37
    .local v0, "fileInfoList":Lcom/phonemanager2345/model/ManageFileInfoListBean;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->setCommand(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->access$002(Lcom/phonemanager2345/model/ManageFileInfoListBean;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 39
    # getter for: Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->access$000(Lcom/phonemanager2345/model/ManageFileInfoListBean;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/phonemanager2345/model/ManageFileInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phonemanager2345/model/ManageFileInfoListBean;->setFileCount(I)V

    .line 42
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/ManageFileInfoListBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/phonemanager2345/model/ManageFileInfoListBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/phonemanager2345/model/ManageFileInfoListBean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/phonemanager2345/model/ManageFileInfoListBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/phonemanager2345/model/ManageFileInfoListBean$1;->newArray(I)[Lcom/phonemanager2345/model/ManageFileInfoListBean;

    move-result-object v0

    return-object v0
.end method
