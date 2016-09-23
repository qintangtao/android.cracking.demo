.class final Lcom/market2345/base/log/LogWritter$1;
.super Ljava/lang/Thread;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/base/log/LogWritter;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$pFileName:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$wpath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/market2345/base/log/LogWritter$1;->val$wpath:Ljava/lang/String;

    iput-object p2, p0, Lcom/market2345/base/log/LogWritter$1;->val$pFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/market2345/base/log/LogWritter$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/base/log/LogWritter$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 92
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 93
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 94
    const/4 v10, 0x0

    .line 95
    .local v10, "output":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/base/log/LogWritter$1;->val$wpath:Ljava/lang/String;

    .line 96
    .local v12, "path":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 97
    sget-object v15, Lcom/market2345/base/log/LogWritter;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-object v12, Lcom/market2345/base/log/LogWritter;->SDCARD_PATH:Ljava/lang/String;

    .line 104
    :cond_2
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v8, "logFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_3

    .line 127
    if-eqz v10, :cond_0

    .line 128
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v5

    .line 131
    .local v5, "ee":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v5    # "ee":Ljava/io/IOException;
    :cond_3
    const/4 v7, 0x0

    .line 109
    .local v7, "fileName":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/base/log/LogWritter$1;->val$pFileName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 110
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v13, "time":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 112
    const-string v15, "%Y_%m_%d"

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "dateStr":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "xlog_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .end local v3    # "dateStr":Ljava/lang/String;
    .end local v13    # "time":Landroid/text/format/Time;
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v6, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v11, v6, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .local v11, "output":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v15, Lcom/market2345/base/log/LogWritter;->simpleDateFormatInSS:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "xtime":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/base/log/LogWritter$1;->val$tag:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/base/log/LogWritter$1;->val$msg:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "msgdata":Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v11, :cond_4

    .line 128
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v10, v11

    .line 132
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 115
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "msgdata":Ljava/lang/String;
    .end local v14    # "xtime":Ljava/lang/String;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/market2345/base/log/LogWritter$1;->val$pFileName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 130
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "msgdata":Ljava/lang/String;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v14    # "xtime":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 131
    .restart local v5    # "ee":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .line 133
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 123
    .end local v5    # "ee":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "logFile":Ljava/io/File;
    .end local v9    # "msgdata":Ljava/lang/String;
    .end local v14    # "xtime":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    if-eqz v10, :cond_0

    .line 128
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 130
    :catch_3
    move-exception v5

    .line 131
    .restart local v5    # "ee":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ee":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 127
    :goto_3
    if-eqz v10, :cond_6

    .line 128
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 132
    :cond_6
    :goto_4
    throw v15

    .line 130
    :catch_4
    move-exception v5

    .line 131
    .restart local v5    # "ee":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 126
    .end local v5    # "ee":Ljava/io/IOException;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "logFile":Ljava/io/File;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 123
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
