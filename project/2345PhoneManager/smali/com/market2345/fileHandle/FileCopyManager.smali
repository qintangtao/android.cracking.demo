.class public Lcom/market2345/fileHandle/FileCopyManager;
.super Ljava/lang/Object;
.source "FileCopyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;
    }
.end annotation


# static fields
.field private static final ERRORCODE_ERROR:Ljava/lang/String; = "20002"

.field private static final ERRORCODE_SPACEFULLERROR:Ljava/lang/String; = "30003"

.field private static final ERRORCODE_SUCCESS:Ljava/lang/String; = "00001"


# instance fields
.field public schedule:Lcom/market2345/fileHandle/model/CopySchedule;

.field public scheduleListener:Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method private checkToFile(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 259
    const/4 v1, 0x1

    .line 260
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "parent":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 262
    .local v5, "pointIndex":I
    if-lez v5, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "last":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    new-instance p1, Ljava/io/File;

    .end local p1    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local p1    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "last":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 272
    .restart local v3    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    new-instance p1, Ljava/io/File;

    .end local p1    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local p1    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_2
    return-object p1

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "file create error"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "20002"

    invoke-direct {p0, v6, v7, v8}, Lcom/market2345/fileHandle/FileCopyManager;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    const/4 p1, 0x0

    goto :goto_2
.end method

.method private checkToFolder(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "parent":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    new-instance p1, Ljava/io/File;

    .end local p1    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local p1    # "file":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-object p1
.end method

.method private doCopyDir(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z
    .locals 3
    .param p1, "fileNames"    # Lcom/market2345/fileHandle/model/CopyFilesFromCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "copyOver":Z
    iget-object v1, p1, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;->srcFile:Ljava/lang/String;

    iget-object v2, p1, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;->destFile:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/market2345/fileHandle/FileCopyManager;->folderCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/market2345/fileHandle/FileCopyManager;->scheduleCallback()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method private doCopyFile(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z
    .locals 6
    .param p1, "fileNames"    # Lcom/market2345/fileHandle/model/CopyFilesFromCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "copyOver":Z
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;->srcFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "from":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;->destFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/market2345/fileHandle/FileCopyManager;->checkToFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 87
    .local v2, "to":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0, v1, v2}, Lcom/market2345/fileHandle/FileCopyManager;->fileByteCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-direct {p0}, Lcom/market2345/fileHandle/FileCopyManager;->scheduleCallback()V

    .line 95
    :cond_0
    return v0
.end method

.method private doCopyLocal(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z
    .locals 5
    .param p1, "fileNames"    # Lcom/market2345/fileHandle/model/CopyFilesFromCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "copyOver":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;->srcFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/market2345/fileHandle/FileCopyManager;->doCopyFile(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/market2345/fileHandle/FileCopyManager;->doCopyDir(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "illegal file type ,must be file or dir"

    const/4 v3, 0x0

    const-string v4, "20002"

    invoke-direct {p0, v2, v3, v4}, Lcom/market2345/fileHandle/FileCopyManager;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fileByteCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 20
    .param p1, "inFile"    # Ljava/io/File;
    .param p2, "outFile"    # Ljava/io/File;

    .prologue
    .line 163
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    invoke-virtual {v14}, Lcom/market2345/fileHandle/model/CopySchedule;->initialize()V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/market2345/fileHandle/model/CopySchedule;->fileName:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/market2345/fileHandle/model/CopySchedule;->totalSize:J

    .line 166
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 167
    .local v6, "freeSpace":J
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 168
    .local v9, "in":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 169
    .local v10, "out":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 171
    .local v2, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 173
    .local v12, "start":J
    :cond_0
    :goto_0
    invoke-virtual {v9, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "i":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_2

    .line 175
    const-wide/16 v14, 0x400

    sub-long/2addr v6, v14

    .line 176
    const-wide/16 v14, 0x400

    cmp-long v14, v6, v14

    if-gtz v14, :cond_1

    .line 177
    new-instance v14, Lcom/market2345/fileHandle/exception/SpaceIsFullException;

    invoke-direct {v14}, Lcom/market2345/fileHandle/exception/SpaceIsFullException;-><init>()V

    throw v14
    :try_end_0
    .catch Lcom/market2345/fileHandle/exception/SpaceIsFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v2    # "bytes":[B
    .end local v6    # "freeSpace":J
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "start":J
    :catch_0
    move-exception v11

    .line 194
    .local v11, "sio":Lcom/market2345/fileHandle/exception/SpaceIsFullException;
    const-string v14, "space is full"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const-string v16, "30003"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/market2345/fileHandle/FileCopyManager;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v14, 0x0

    .line 202
    .end local v11    # "sio":Lcom/market2345/fileHandle/exception/SpaceIsFullException;
    :goto_1
    return v14

    .line 179
    .restart local v2    # "bytes":[B
    .restart local v6    # "freeSpace":J
    .restart local v8    # "i":I
    .restart local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "start":J
    :cond_1
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v10, v2, v14, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 180
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    iget-wide v0, v14, Lcom/market2345/fileHandle/model/CopySchedule;->deltaSize:J

    move-wide/from16 v16, v0

    int-to-long v0, v8

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/market2345/fileHandle/model/CopySchedule;->deltaSize:J

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 183
    .local v4, "end":J
    sub-long v14, v4, v12

    const-wide/16 v16, 0x64

    cmp-long v14, v14, v16

    if-ltz v14, :cond_0

    .line 185
    move-wide v12, v4

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/market2345/fileHandle/FileCopyManager;->scheduleCallback()V
    :try_end_1
    .catch Lcom/market2345/fileHandle/exception/SpaceIsFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 197
    .end local v2    # "bytes":[B
    .end local v4    # "end":J
    .end local v6    # "freeSpace":J
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "start":J
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "file copy error"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const-string v16, "20002"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/market2345/fileHandle/FileCopyManager;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v14, 0x0

    goto :goto_1

    .line 190
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "bytes":[B
    .restart local v6    # "freeSpace":J
    .restart local v8    # "i":I
    .restart local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "start":J
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 191
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Lcom/market2345/fileHandle/exception/SpaceIsFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    const/4 v14, 0x1

    goto :goto_1
.end method

.method private fileChannelCopy(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p1, "s"    # Ljava/io/File;
    .param p2, "t"    # Ljava/io/File;

    .prologue
    .line 209
    const/4 v7, 0x0

    .line 210
    .local v7, "fi":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 211
    .local v9, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 212
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 215
    .local v6, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .local v8, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .local v10, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 218
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 219
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 230
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 231
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 241
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 234
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 239
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 230
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 231
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 234
    :catch_2
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 229
    :goto_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 230
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 231
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 237
    :goto_3
    throw v2

    .line 234
    :catch_3
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .line 221
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private folderCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, "bol":Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, "srcFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "file":[Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/market2345/fileHandle/FileCopyManager;->checkToFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 122
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v5    # "temp":Ljava/io/File;
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/market2345/fileHandle/FileCopyManager;->checkToFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/market2345/fileHandle/FileCopyManager;->fileByteCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/market2345/fileHandle/FileCopyManager;->scheduleCallback()V

    .line 120
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "temp":Ljava/io/File;
    goto :goto_1

    .line 138
    :cond_2
    const/4 v0, 0x0

    .line 156
    .end local v3    # "i":I
    .end local v5    # "temp":Ljava/io/File;
    :cond_3
    :goto_2
    return v0

    .line 143
    .restart local v3    # "i":I
    .restart local v5    # "temp":Ljava/io/File;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/market2345/fileHandle/FileCopyManager;->folderCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    goto :goto_2

    .line 152
    .end local v3    # "i":I
    .end local v5    # "temp":Ljava/io/File;
    :cond_5
    const/4 v0, 0x0

    .line 153
    const-string v6, "folder make error"

    const-string v7, "20002"

    invoke-direct {p0, v6, p2, v7}, Lcom/market2345/fileHandle/FileCopyManager;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private scheduleCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/market2345/fileHandle/FileCopyManager;->scheduleListener:Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/market2345/fileHandle/FileCopyManager;->scheduleListener:Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;

    iget-object v1, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    invoke-interface {v0, v1}, Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;->callbackSchedule(Lcom/market2345/fileHandle/model/CopySchedule;)V

    .line 310
    :cond_0
    return-void
.end method

.method private setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    iput-object p1, v0, Lcom/market2345/fileHandle/model/CopySchedule;->error:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    iput-object p3, v0, Lcom/market2345/fileHandle/model/CopySchedule;->error_code:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    iput-object p2, v0, Lcom/market2345/fileHandle/model/CopySchedule;->fileName:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public doCopy(Lcom/market2345/fileHandle/model/CopyCommandModel;)V
    .locals 4
    .param p1, "command"    # Lcom/market2345/fileHandle/model/CopyCommandModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v2, Lcom/market2345/fileHandle/model/CopySchedule;

    iget-object v3, p1, Lcom/market2345/fileHandle/model/CopyCommandModel;->command:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/market2345/fileHandle/model/CopySchedule;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    .line 41
    iget-object v2, p1, Lcom/market2345/fileHandle/model/CopyCommandModel;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 42
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 44
    iget-object v2, p1, Lcom/market2345/fileHandle/model/CopyCommandModel;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/fileHandle/model/CopyFilesFromCommand;

    invoke-direct {p0, v2}, Lcom/market2345/fileHandle/FileCopyManager;->doCopyLocal(Lcom/market2345/fileHandle/model/CopyFilesFromCommand;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/market2345/fileHandle/model/CopySchedule;->taskFinish:Z

    .line 52
    invoke-direct {p0}, Lcom/market2345/fileHandle/FileCopyManager;->scheduleCallback()V

    .line 53
    return-void

    .line 48
    :cond_1
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/market2345/fileHandle/FileCopyManager;->schedule:Lcom/market2345/fileHandle/model/CopySchedule;

    const-string v3, "00001"

    iput-object v3, v2, Lcom/market2345/fileHandle/model/CopySchedule;->error_code:Ljava/lang/String;

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScheduleListener(Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;)V
    .locals 0
    .param p1, "scheduleListener"    # Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/market2345/fileHandle/FileCopyManager;->scheduleListener:Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;

    .line 36
    return-void
.end method
