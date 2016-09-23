.class public Lcom/phonemanager2345/model/ManageFileInfoBean;
.super Ljava/lang/Object;
.source "ManageFileInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phonemanager2345/model/ManageFileInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private param1:Ljava/lang/String;

.field private param2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/phonemanager2345/model/ManageFileInfoBean$1;

    invoke-direct {v0}, Lcom/phonemanager2345/model/ManageFileInfoBean$1;-><init>()V

    sput-object v0, Lcom/phonemanager2345/model/ManageFileInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param1:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param2:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->fileName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->fileType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0
    .param p1, "param1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param1:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0
    .param p1, "param2"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param2:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/phonemanager2345/model/ManageFileInfoBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/phonemanager2345/model/ManageFileInfoBean;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
