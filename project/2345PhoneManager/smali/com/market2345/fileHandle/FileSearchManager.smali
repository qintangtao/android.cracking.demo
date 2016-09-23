.class public Lcom/market2345/fileHandle/FileSearchManager;
.super Ljava/lang/Object;
.source "FileSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;
    }
.end annotation


# static fields
.field private static final ERRORCODE_ERROR:Ljava/lang/String; = "20002"

.field private static final ERRORCODE_SUCCESS:Ljava/lang/String; = "00001"


# instance fields
.field private fileCountLimit:I

.field private result:Lcom/market2345/fileHandle/model/SearchResult;

.field private searchCallback:Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;

.field private searchFilter:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "driver"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchFilter:[Ljava/lang/String;

    .line 186
    return-void
.end method

.method private addToResultList(Ljava/io/File;)Z
    .locals 4
    .param p1, "readFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    .line 145
    new-instance v0, Lcom/market2345/fileHandle/model/SearchResultFile;

    invoke-direct {v0}, Lcom/market2345/fileHandle/model/SearchResultFile;-><init>()V

    .line 146
    .local v0, "file":Lcom/market2345/fileHandle/model/SearchResultFile;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->fileName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "file"

    iput-object v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->fileType:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->size:J

    .line 157
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->modifyTime:J

    .line 158
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iget-object v2, v2, Lcom/market2345/fileHandle/model/SearchResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->fileCountLimit:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 164
    :cond_0
    :goto_1
    return v1

    .line 154
    :cond_1
    const-string v2, "dir"

    iput-object v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->fileType:Ljava/lang/String;

    .line 155
    const-wide/16 v2, 0x1000

    iput-wide v2, v0, Lcom/market2345/fileHandle/model/SearchResultFile;->size:J

    goto :goto_0

    .line 161
    :cond_2
    iget v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->fileCountLimit:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iget-object v2, v2, Lcom/market2345/fileHandle/model/SearchResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/market2345/fileHandle/FileSearchManager;->fileCountLimit:I

    if-lt v2, v3, :cond_0

    .line 164
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "searchName"    # Ljava/lang/String;
    .param p2, "folderPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 64
    const/4 v1, 0x1

    .line 65
    .local v1, "bol":Z
    const/4 v6, 0x0

    .line 68
    .local v6, "tempName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 71
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is not a folder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/market2345/fileHandle/FileSearchManager;->setError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v7, v1

    .line 140
    :cond_2
    :goto_1
    return v7

    .line 77
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v8, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchFilter:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchFilter:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "filelist":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 96
    const/4 v4, 0x0

    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 98
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "readFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-direct {p0, p1, v6}, Lcom/market2345/fileHandle/FileSearchManager;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 102
    invoke-direct {p0, v5}, Lcom/market2345/fileHandle/FileSearchManager;->addToResultList(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 104
    const/4 v1, 0x0

    .line 105
    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 110
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/market2345/fileHandle/FileSearchManager;->doSearch(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private setError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iput-object p1, v0, Lcom/market2345/fileHandle/model/SearchResult;->error:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    const-string v1, "20002"

    iput-object v1, v0, Lcom/market2345/fileHandle/model/SearchResult;->error_code:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public search(Lcom/market2345/fileHandle/model/SearchCommandModel;)V
    .locals 4
    .param p1, "commandModel"    # Lcom/market2345/fileHandle/model/SearchCommandModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v2, p1, Lcom/market2345/fileHandle/model/SearchCommandModel;->searchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 33
    iget v2, p1, Lcom/market2345/fileHandle/model/SearchCommandModel;->searchCount:I

    iput v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->fileCountLimit:I

    .line 34
    iget v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->fileCountLimit:I

    if-eqz v2, :cond_2

    .line 36
    new-instance v2, Lcom/market2345/fileHandle/model/SearchResult;

    invoke-direct {v2}, Lcom/market2345/fileHandle/model/SearchResult;-><init>()V

    iput-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    .line 37
    iget-object v2, p1, Lcom/market2345/fileHandle/model/SearchCommandModel;->searchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    iget-object v3, p1, Lcom/market2345/fileHandle/model/SearchCommandModel;->searchName:Ljava/lang/String;

    iget-object v2, p1, Lcom/market2345/fileHandle/model/SearchCommandModel;->searchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/fileHandle/model/SearchCommandModel$CommandFile;

    iget-object v2, v2, Lcom/market2345/fileHandle/model/SearchCommandModel$CommandFile;->directory:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/market2345/fileHandle/FileSearchManager;->doSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchCallback:Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;

    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iget-object v2, v2, Lcom/market2345/fileHandle/model/SearchResult;->error_code:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    const-string v3, "00001"

    iput-object v3, v2, Lcom/market2345/fileHandle/model/SearchResult;->error_code:Ljava/lang/String;

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iget-object v3, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    iget-object v3, v3, Lcom/market2345/fileHandle/model/SearchResult;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/market2345/fileHandle/model/SearchResult;->fileCount:I

    .line 51
    iget-object v2, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchCallback:Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;

    iget-object v3, p0, Lcom/market2345/fileHandle/FileSearchManager;->result:Lcom/market2345/fileHandle/model/SearchResult;

    invoke-interface {v2, v3}, Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;->onSearchOver(Lcom/market2345/fileHandle/model/SearchResult;)V

    .line 55
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void

    .line 38
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSearchCallback(Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;)V
    .locals 0
    .param p1, "searchCallback"    # Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/market2345/fileHandle/FileSearchManager;->searchCallback:Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;

    .line 60
    return-void
.end method
