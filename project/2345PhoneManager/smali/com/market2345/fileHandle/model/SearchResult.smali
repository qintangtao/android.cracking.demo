.class public Lcom/market2345/fileHandle/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field public error:Ljava/lang/String;

.field public error_code:Ljava/lang/String;

.field public fileCount:I

.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/fileHandle/model/SearchResultFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/fileHandle/model/SearchResult;->fileList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method
