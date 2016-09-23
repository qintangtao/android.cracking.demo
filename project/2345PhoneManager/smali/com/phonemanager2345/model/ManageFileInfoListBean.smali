.class public Lcom/phonemanager2345/model/ManageFileInfoListBean;
.super Ljava/lang/Object;
.source "ManageFileInfoListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phonemanager2345/model/ManageFileInfoListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:Ljava/lang/String;

.field private fileCount:I

.field private fileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/ManageFileInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/phonemanager2345/model/ManageFileInfoListBean$1;

    invoke-direct {v0}, Lcom/phonemanager2345/model/ManageFileInfoListBean$1;-><init>()V

    sput-object v0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/phonemanager2345/model/ManageFileInfoListBean;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/model/ManageFileInfoListBean;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/phonemanager2345/model/ManageFileInfoListBean;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/model/ManageFileInfoListBean;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileCount:I

    return v0
.end method

.method public getFileNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/ManageFileInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->command:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFileCount(I)V
    .locals 0
    .param p1, "fileCount"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileCount:I

    .line 60
    return-void
.end method

.method public setFileNameList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/ManageFileInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "fileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/phonemanager2345/model/ManageFileInfoBean;>;"
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->command:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 26
    iget v0, p0, Lcom/phonemanager2345/model/ManageFileInfoListBean;->fileCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    return-void
.end method
