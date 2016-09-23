.class public Lcom/phonemanager2345/model/FileInfoListBean;
.super Ljava/lang/Object;
.source "FileInfoListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phonemanager2345/model/FileInfoListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileCount:I

.field private fileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/FileInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/phonemanager2345/model/FileInfoListBean$1;

    invoke-direct {v0}, Lcom/phonemanager2345/model/FileInfoListBean$1;-><init>()V

    sput-object v0, Lcom/phonemanager2345/model/FileInfoListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/phonemanager2345/model/FileInfoListBean;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/model/FileInfoListBean;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/phonemanager2345/model/FileInfoListBean;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/model/FileInfoListBean;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileInfoList:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileCount:I

    return v0
.end method

.method public getFileInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/FileInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFileCount(I)V
    .locals 0
    .param p1, "fileCount"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileCount:I

    .line 66
    return-void
.end method

.method public setFileInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/FileInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "fileInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/phonemanager2345/model/FileInfoBean;>;"
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileInfoList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    iget v0, p0, Lcom/phonemanager2345/model/FileInfoListBean;->fileCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void
.end method
