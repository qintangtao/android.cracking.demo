.class public Lcom/phonemanager2345/model/FileInfoBean;
.super Ljava/lang/Object;
.source "FileInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phonemanager2345/model/FileInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private modifyTime:Ljava/lang/String;

.field private subDir:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/phonemanager2345/model/FileInfoBean$1;

    invoke-direct {v0}, Lcom/phonemanager2345/model/FileInfoBean$1;-><init>()V

    sput-object v0, Lcom/phonemanager2345/model/FileInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->modifyTime:Ljava/lang/String;

    return-object v0
.end method

.method public isSubDir()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->subDir:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileSize"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileSize:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setModifyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifyTime"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/phonemanager2345/model/FileInfoBean;->modifyTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSubDir(Z)V
    .locals 0
    .param p1, "subDir"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/phonemanager2345/model/FileInfoBean;->subDir:Z

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->fileSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/phonemanager2345/model/FileInfoBean;->modifyTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/phonemanager2345/model/FileInfoBean;->subDir:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 33
    return-void
.end method
