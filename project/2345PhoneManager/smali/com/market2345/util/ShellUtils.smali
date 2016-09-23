.class public Lcom/market2345/util/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public static checkRootPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/market2345/util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    const/4 v2, 0x1

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/market2345/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/market2345/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 2
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/market2345/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/market2345/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 1
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/market2345/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/market2345/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/market2345/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;
    .locals 24
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 144
    const/4 v15, -0x1

    .line 145
    .local v15, "result":I
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 147
    :cond_0
    new-instance v21, Lcom/market2345/util/ShellUtils$CommandResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v15, v1, v2}, Lcom/market2345/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-object v21

    .line 150
    :cond_1
    const/4 v14, 0x0

    .line 151
    .local v14, "process":Ljava/lang/Process;
    const/16 v19, 0x0

    .line 152
    .local v19, "successResult":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 153
    .local v8, "errorResult":Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 154
    .local v17, "successMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 156
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 159
    .local v12, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    if-eqz p1, :cond_2

    const-string v21, "su"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 160
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .local v13, "os":Ljava/io/DataOutputStream;
    move-object/from16 v3, p0

    .local v3, "arr$":[Ljava/lang/String;
    :try_start_1
    array-length v11, v3

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_8

    aget-object v4, v3, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    .local v4, "command":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 161
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 159
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "command":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_2
    const-string v21, "sh"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 169
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "command":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 170
    const-string v21, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 195
    .end local v4    # "command":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_0
    move-exception v5

    move-object v12, v13

    .line 197
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v13    # "os":Ljava/io/DataOutputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    if-eqz v12, :cond_4

    .line 209
    :try_start_5
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 211
    :cond_4
    if-eqz v19, :cond_5

    .line 213
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 215
    :cond_5
    if-eqz v8, :cond_6

    .line 217
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 225
    :cond_6
    :goto_5
    if-eqz v14, :cond_7

    .line 227
    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V

    .line 230
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_6
    new-instance v22, Lcom/market2345/util/ShellUtils$CommandResult;

    if-nez v17, :cond_16

    const/16 v21, 0x0

    move-object/from16 v23, v21

    :goto_7
    if-nez v6, :cond_17

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v2}, Lcom/market2345/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v22

    goto :goto_0

    .line 173
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :cond_8
    :try_start_6
    const-string v21, "exit\n"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I

    move-result v15

    .line 178
    if-eqz p2, :cond_e

    .line 180
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 181
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .local v18, "successMsg":Ljava/lang/StringBuilder;
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 182
    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .local v7, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_8
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 183
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .local v20, "successResult":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 185
    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .local v9, "errorResult":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "s":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 187
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 195
    .end local v16    # "s":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object v8, v9

    .end local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v19, v20

    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    goto :goto_4

    .line 189
    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :cond_9
    :goto_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 191
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_a

    .line 199
    .end local v16    # "s":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object v8, v9

    .end local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v19, v20

    .line 201
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    :goto_b
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 207
    if-eqz v12, :cond_a

    .line 209
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 211
    :cond_a
    if-eqz v19, :cond_b

    .line 213
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 215
    :cond_b
    if-eqz v8, :cond_c

    .line 217
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 225
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_c
    if-eqz v14, :cond_7

    .line 227
    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :cond_d
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object v8, v9

    .end local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v19, v20

    .line 207
    .end local v16    # "s":Ljava/lang/String;
    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    :cond_e
    if-eqz v13, :cond_f

    .line 209
    :try_start_d
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 211
    :cond_f
    if-eqz v19, :cond_10

    .line 213
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 215
    :cond_10
    if-eqz v8, :cond_11

    .line 217
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 225
    :cond_11
    :goto_d
    if-eqz v14, :cond_18

    .line 227
    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 220
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v5

    .line 222
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 220
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v5

    .line 222
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 220
    .local v5, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 222
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 205
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 207
    :goto_e
    if-eqz v12, :cond_12

    .line 209
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 211
    :cond_12
    if-eqz v19, :cond_13

    .line 213
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 215
    :cond_13
    if-eqz v8, :cond_14

    .line 217
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 225
    :cond_14
    :goto_f
    if-eqz v14, :cond_15

    .line 227
    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V

    :cond_15
    throw v21

    .line 220
    :catch_6
    move-exception v5

    .line 222
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 230
    .end local v5    # "e":Ljava/io/IOException;
    :cond_16
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    goto/16 :goto_7

    :cond_17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    .line 205
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    goto :goto_e

    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_e

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_e

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    goto :goto_e

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object v8, v9

    .end local v9    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v19, v20

    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    goto :goto_e

    .line 199
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_7
    move-exception v5

    goto/16 :goto_b

    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :catch_8
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_b

    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_b

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_b

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :catch_b
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 195
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_c
    move-exception v5

    goto/16 :goto_4

    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    :catch_e
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v12    # "os":Ljava/io/DataOutputStream;
    .end local v17    # "successMsg":Ljava/lang/StringBuilder;
    .end local v19    # "successResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v20    # "successResult":Ljava/io/BufferedReader;
    :catch_f
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    move-object v6, v7

    .end local v7    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    move-object/from16 v17, v18

    .end local v18    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "successResult":Ljava/io/BufferedReader;
    .restart local v19    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v12    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "os":Ljava/io/DataOutputStream;
    :cond_18
    move-object v12, v13

    .end local v13    # "os":Ljava/io/DataOutputStream;
    .restart local v12    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_6
.end method
