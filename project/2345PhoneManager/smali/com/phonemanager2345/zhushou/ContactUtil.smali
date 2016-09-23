.class public Lcom/phonemanager2345/zhushou/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field static gson:Lcom/google/gson/Gson;

.field static parse:Lcom/google/gson/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    .line 32
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/ContactUtil;->parse:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 18
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    move/from16 v0, p0

    new-array v3, v0, [B

    .line 230
    .local v3, "buffer":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v3, v15, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 231
    sget-object v15, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-class v17, Lcom/phonemanager2345/model/ContactsAllForJson;

    invoke-virtual/range {v15 .. v17}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/ContactsAllForJson;

    .line 232
    .local v4, "c":Lcom/phonemanager2345/model/ContactsAllForJson;
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 233
    .local v11, "result":Lcom/google/gson/JsonObject;
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 234
    .local v2, "array":Lcom/google/gson/JsonArray;
    if-eqz v4, :cond_1

    .line 236
    iget-object v15, v4, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    if-eqz v15, :cond_1

    .line 238
    new-instance v5, Lcom/market2345/contacts/ContactsContext;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 239
    .local v5, "conContext":Lcom/market2345/contacts/ContactsContext;
    iget-object v15, v4, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/contacts/modle/People2345;

    .line 241
    .local v10, "people":Lcom/market2345/contacts/modle/People2345;
    invoke-virtual {v5}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/market2345/contacts/ContactsManager;->deleteContact(Lcom/market2345/contacts/modle/People2345;)I

    move-result v14

    .line 242
    .local v14, "value":I
    const/4 v15, -0x1

    if-eq v15, v14, :cond_0

    .line 244
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 245
    .local v9, "object":Lcom/google/gson/JsonObject;
    const-string v15, "id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 246
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 251
    .end local v5    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "object":Lcom/google/gson/JsonObject;
    .end local v10    # "people":Lcom/market2345/contacts/modle/People2345;
    .end local v14    # "value":I
    :cond_1
    const/4 v3, 0x0

    .line 252
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 254
    const-string v15, "ids"

    invoke-virtual {v11, v15, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 255
    invoke-static {v11}, Lcom/phonemanager2345/zhushou/ContactUtil;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 262
    :goto_1
    invoke-virtual {v11}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v8, v15

    .line 264
    .local v8, "nCount":I
    const/4 v15, 0x4

    new-array v7, v15, [B

    .line 265
    .local v7, "length":[B
    const/4 v15, 0x0

    invoke-static {v8, v7, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 266
    const/4 v15, 0x4

    new-array v13, v15, [B

    .line 267
    .local v13, "t":[B
    const/16 v15, 0xf

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 268
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 269
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 270
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 274
    const/4 v2, 0x0

    .line 276
    const/4 v11, 0x0

    .line 277
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 278
    return-void

    .line 260
    .end local v7    # "length":[B
    .end local v8    # "nCount":I
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "t":[B
    :cond_2
    const-string v15, "error_code"

    const-string v16, "20002"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAllContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 11
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 90
    new-instance v1, Lcom/market2345/contacts/ContactsContext;

    invoke-direct {v1, p3}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "conContext":Lcom/market2345/contacts/ContactsContext;
    new-instance v0, Lcom/phonemanager2345/model/ContactsAllForJson;

    invoke-direct {v0}, Lcom/phonemanager2345/model/ContactsAllForJson;-><init>()V

    .line 94
    .local v0, "all":Lcom/phonemanager2345/model/ContactsAllForJson;
    invoke-virtual {v1}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/market2345/contacts/ContactsManager;->getContacts()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/market2345/contacts/ContactsManager;->getGroups()Ljava/util/Collection;

    move-result-object v7

    iput-object v7, v0, Lcom/phonemanager2345/model/ContactsAllForJson;->groups:Ljava/util/Collection;

    .line 96
    invoke-virtual {v1}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/market2345/contacts/ContactsManager;->getAccounts()Ljava/util/Collection;

    move-result-object v7

    iput-object v7, v0, Lcom/phonemanager2345/model/ContactsAllForJson;->accounts:Ljava/util/Collection;

    .line 99
    sget-object v7, Lcom/phonemanager2345/zhushou/ContactUtil;->parse:Lcom/google/gson/JsonParser;

    sget-object v8, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v8, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 100
    .local v4, "result":Lcom/google/gson/JsonObject;
    invoke-static {v4}, Lcom/phonemanager2345/zhushou/ContactUtil;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 102
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v3, v7

    .line 105
    .local v3, "nCount":I
    new-array v2, v10, [B

    .line 106
    .local v2, "length":[B
    invoke-static {v3, v2, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 107
    new-array v6, v10, [B

    .line 108
    .local v6, "t":[B
    const/16 v7, 0xe

    invoke-static {v7, v6, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 109
    invoke-virtual {p2, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 110
    invoke-virtual {p2, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 112
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 113
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 117
    return-void
.end method

.method public static getContactsCount(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 11
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 37
    new-instance v0, Lcom/market2345/contacts/ContactsContext;

    invoke-direct {v0, p3}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "conContext":Lcom/market2345/contacts/ContactsContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"count\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/market2345/contacts/ContactsManager;->getContactsCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "countJson11":Ljava/lang/String;
    sget-object v7, Lcom/phonemanager2345/zhushou/ContactUtil;->parse:Lcom/google/gson/JsonParser;

    invoke-virtual {v7, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 41
    .local v5, "result":Lcom/google/gson/JsonObject;
    invoke-static {v5}, Lcom/phonemanager2345/zhushou/ContactUtil;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 42
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "jr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v4, v7

    .line 45
    .local v4, "nCount":I
    new-array v3, v10, [B

    .line 46
    .local v3, "length":[B
    invoke-static {v4, v3, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 47
    new-array v6, v10, [B

    .line 48
    .local v6, "t":[B
    const/16 v7, 0x13

    invoke-static {v7, v6, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 49
    invoke-virtual {p2, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 50
    invoke-virtual {p2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 52
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 53
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 54
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 55
    return-void
.end method

.method public static getContactsIcon(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 24
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    move/from16 v0, p0

    new-array v5, v0, [B

    .line 324
    .local v5, "buffer":[B
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->readFullLength(ILjava/io/BufferedInputStream;[B)V

    .line 325
    sget-object v20, Lcom/phonemanager2345/zhushou/ContactUtil;->parse:Lcom/google/gson/JsonParser;

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v20 .. v21}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 326
    .local v6, "c":Lcom/google/gson/JsonObject;
    const/4 v13, 0x0

    .line 327
    .local v13, "headid":Lcom/google/gson/JsonArray;
    const/4 v5, 0x0

    .line 328
    const/16 v20, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 329
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 330
    const-string v20, "headid"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 332
    const-string v20, "headid"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v13

    .line 333
    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 335
    const/16 v20, 0x53

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 336
    const/16 v20, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 337
    const/16 v20, 0x41

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 338
    const/16 v20, 0x54

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 339
    new-instance v4, Ljava/util/zip/Adler32;

    invoke-direct {v4}, Ljava/util/zip/Adler32;-><init>()V

    .line 340
    .local v4, "adler32":Ljava/util/zip/Adler32;
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 341
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 343
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 344
    .local v17, "object":Lcom/google/gson/JsonObject;
    const-string v20, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 346
    const-string v20, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    .line 353
    .local v15, "id":I
    :try_start_0
    new-instance v7, Lcom/market2345/contacts/ContactsContext;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 354
    .local v7, "conContext":Lcom/market2345/contacts/ContactsContext;
    invoke-virtual {v7}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v20

    int-to-long v0, v15

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/market2345/contacts/ContactsManager;->openDisplayPhoto(J)Lcom/market2345/contacts/modle/HeadIcon;

    move-result-object v12

    .line 356
    .local v12, "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_URLID:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 357
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 358
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 359
    .local v19, "temp":[B
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 360
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 361
    invoke-virtual {v4}, Ljava/util/zip/Adler32;->reset()V

    .line 364
    invoke-virtual {v4}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v10

    .line 365
    .local v10, "crc32":J
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 366
    .local v8, "crc":[B
    invoke-static {v10, v11, v8}, Lcom/phonemanager2345/zhushou/CommandHander;->swap64bitsToArray(J[B)V

    .line 367
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 369
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 370
    iget-wide v0, v12, Lcom/market2345/contacts/modle/HeadIcon;->headIconStreamSize:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 371
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 372
    const/16 v20, 0x2000

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 373
    .local v9, "datas":[B
    iget-object v0, v12, Lcom/market2345/contacts/modle/HeadIcon;->headIconStream:Ljava/io/InputStream;

    move-object/from16 v16, v0

    .line 375
    .local v16, "infd":Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, "p":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 377
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 389
    .end local v7    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v8    # "crc":[B
    .end local v9    # "datas":[B
    .end local v10    # "crc32":J
    .end local v12    # "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    .end local v16    # "infd":Ljava/io/InputStream;
    .end local v18    # "p":I
    .end local v19    # "temp":[B
    :catch_0
    move-exception v20

    .line 341
    .end local v15    # "id":I
    :cond_0
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 379
    .restart local v7    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .restart local v8    # "crc":[B
    .restart local v9    # "datas":[B
    .restart local v10    # "crc32":J
    .restart local v12    # "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    .restart local v15    # "id":I
    .restart local v16    # "infd":Ljava/io/InputStream;
    .restart local v18    # "p":I
    .restart local v19    # "temp":[B
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 385
    :catch_1
    move-exception v20

    goto :goto_2

    .line 395
    .end local v7    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v8    # "crc":[B
    .end local v9    # "datas":[B
    .end local v10    # "crc32":J
    .end local v12    # "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    .end local v15    # "id":I
    .end local v16    # "infd":Ljava/io/InputStream;
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    .end local v18    # "p":I
    .end local v19    # "temp":[B
    :cond_2
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_DONE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 396
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    .line 415
    .end local v4    # "adler32":Ljava/util/zip/Adler32;
    .end local v14    # "i":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 416
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 417
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 418
    return-void

    .line 401
    :cond_3
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 402
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_3

    .line 407
    :cond_4
    sget-object v20, Lcom/phonemanager2345/zhushou/CommandHander;->ID_FAIL:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 408
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->writeFourByte(Ljava/io/BufferedOutputStream;I)V

    goto :goto_3
.end method

.method public static operateGroup(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 12
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    new-array v0, p0, [B

    .line 284
    .local v0, "buffer":[B
    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 285
    sget-object v9, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    const-class v11, Lcom/phonemanager2345/model/ContactsGroupForJson;

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonemanager2345/model/ContactsGroupForJson;

    .line 286
    .local v1, "c":Lcom/phonemanager2345/model/ContactsGroupForJson;
    if-eqz v1, :cond_1

    iget-object v9, v1, Lcom/phonemanager2345/model/ContactsGroupForJson;->groups:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 288
    new-instance v2, Lcom/market2345/contacts/ContactsContext;

    invoke-direct {v2, p3}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 290
    .local v2, "conContext":Lcom/market2345/contacts/ContactsContext;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, v1, Lcom/phonemanager2345/model/ContactsGroupForJson;->groups:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 292
    iget-object v9, v1, Lcom/phonemanager2345/model/ContactsGroupForJson;->groups:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/contacts/modle/People2345$MyGroup;

    .line 293
    .local v3, "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    invoke-virtual {v2}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/market2345/contacts/ContactsManager;->groupOperation(Lcom/market2345/contacts/modle/People2345$MyGroup;)I

    move-result v9

    if-lez v9, :cond_0

    .line 295
    const-string v9, "00001"

    iput-object v9, v3, Lcom/market2345/contacts/modle/People2345$MyGroup;->error_code:Ljava/lang/String;

    .line 290
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_0
    const-string v9, "20002"

    iput-object v9, v3, Lcom/market2345/contacts/modle/People2345$MyGroup;->error_code:Ljava/lang/String;

    goto :goto_1

    .line 305
    .end local v2    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v3    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    .end local v4    # "i":I
    :cond_1
    sget-object v9, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v9, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v6, v9

    .line 307
    .local v6, "nCount":I
    const/4 v9, 0x4

    new-array v5, v9, [B

    .line 308
    .local v5, "length":[B
    const/4 v9, 0x0

    invoke-static {v6, v5, v9}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 309
    const/4 v9, 0x4

    new-array v8, v9, [B

    .line 310
    .local v8, "t":[B
    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 311
    invoke-virtual {p2, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 312
    invoke-virtual {p2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 313
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 314
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 315
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 316
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 318
    return-void
.end method

.method public static saveContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 18
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move/from16 v0, p0

    new-array v3, v0, [B

    .line 122
    .local v3, "buffer":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v3, v15, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 123
    sget-object v15, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-class v17, Lcom/phonemanager2345/model/ContactsAllForJson;

    invoke-virtual/range {v15 .. v17}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phonemanager2345/model/ContactsAllForJson;

    .line 124
    .local v4, "c":Lcom/phonemanager2345/model/ContactsAllForJson;
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 125
    .local v11, "result":Lcom/google/gson/JsonObject;
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 126
    .local v2, "array":Lcom/google/gson/JsonArray;
    if-eqz v4, :cond_1

    .line 128
    iget-object v15, v4, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    if-eqz v15, :cond_1

    .line 130
    new-instance v5, Lcom/market2345/contacts/ContactsContext;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 131
    .local v5, "conContext":Lcom/market2345/contacts/ContactsContext;
    iget-object v15, v4, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/contacts/modle/People2345;

    .line 133
    .local v10, "people":Lcom/market2345/contacts/modle/People2345;
    invoke-virtual {v5}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/market2345/contacts/ContactsManager;->addContact(Lcom/market2345/contacts/modle/People2345;)I

    move-result v14

    .line 134
    .local v14, "value":I
    const/4 v15, -0x1

    if-eq v15, v14, :cond_0

    .line 136
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 137
    .local v9, "object":Lcom/google/gson/JsonObject;
    const-string v15, "id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 138
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 143
    .end local v5    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "object":Lcom/google/gson/JsonObject;
    .end local v10    # "people":Lcom/market2345/contacts/modle/People2345;
    .end local v14    # "value":I
    :cond_1
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 146
    const-string v15, "ids"

    invoke-virtual {v11, v15, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 147
    invoke-static {v11}, Lcom/phonemanager2345/zhushou/ContactUtil;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 155
    :goto_1
    invoke-virtual {v11}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v8, v15

    .line 157
    .local v8, "nCount":I
    const/4 v15, 0x4

    new-array v7, v15, [B

    .line 158
    .local v7, "length":[B
    const/4 v15, 0x0

    invoke-static {v8, v7, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 159
    const/4 v15, 0x4

    new-array v13, v15, [B

    .line 160
    .local v13, "t":[B
    const/16 v15, 0xf

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 161
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 162
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 163
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 165
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 167
    const/4 v2, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 171
    return-void

    .line 152
    .end local v7    # "length":[B
    .end local v8    # "nCount":I
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "t":[B
    :cond_2
    const-string v15, "error_code"

    const-string v16, "20002"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setSuccessCode(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p0, "result"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 422
    const-string v0, "error_code"

    const-string v1, "00001"

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public static updateContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 19
    .param p0, "dataLength"    # I
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    move/from16 v0, p0

    new-array v4, v0, [B

    .line 176
    .local v4, "buffer":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p0

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 177
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 178
    .local v8, "json":Ljava/lang/String;
    sget-object v17, Lcom/phonemanager2345/zhushou/ContactUtil;->gson:Lcom/google/gson/Gson;

    const-class v18, Lcom/phonemanager2345/model/ContactsAllForJson;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phonemanager2345/model/ContactsAllForJson;

    .line 179
    .local v5, "c":Lcom/phonemanager2345/model/ContactsAllForJson;
    new-instance v13, Lcom/google/gson/JsonObject;

    invoke-direct {v13}, Lcom/google/gson/JsonObject;-><init>()V

    .line 180
    .local v13, "result":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 181
    .local v3, "array":Lcom/google/gson/JsonArray;
    if-eqz v5, :cond_1

    .line 183
    iget-object v0, v5, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 185
    new-instance v6, Lcom/market2345/contacts/ContactsContext;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 186
    .local v6, "conContext":Lcom/market2345/contacts/ContactsContext;
    iget-object v0, v5, Lcom/phonemanager2345/model/ContactsAllForJson;->contacts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/contacts/modle/People2345;

    .line 188
    .local v12, "people":Lcom/market2345/contacts/modle/People2345;
    invoke-virtual {v6}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/market2345/contacts/ContactsManager;->updateContact(Lcom/market2345/contacts/modle/People2345;)I

    move-result v16

    .line 189
    .local v16, "value":I
    const/16 v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 192
    .local v11, "object":Lcom/google/gson/JsonObject;
    const-string v17, "id"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 193
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 198
    .end local v6    # "conContext":Lcom/market2345/contacts/ContactsContext;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "object":Lcom/google/gson/JsonObject;
    .end local v12    # "people":Lcom/market2345/contacts/modle/People2345;
    .end local v16    # "value":I
    :cond_1
    const/4 v4, 0x0

    .line 199
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 201
    const-string v17, "ids"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 202
    invoke-static {v13}, Lcom/phonemanager2345/zhushou/ContactUtil;->setSuccessCode(Lcom/google/gson/JsonObject;)V

    .line 209
    :goto_1
    invoke-virtual {v13}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "s":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v10, v0

    .line 211
    .local v10, "nCount":I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v9, v0, [B

    .line 212
    .local v9, "length":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v9, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 213
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 214
    .local v15, "t":[B
    const/16 v17, 0xf

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 215
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 216
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 217
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 219
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 221
    const/4 v3, 0x0

    .line 223
    const/4 v13, 0x0

    .line 224
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 225
    return-void

    .line 207
    .end local v9    # "length":[B
    .end local v10    # "nCount":I
    .end local v14    # "s":Ljava/lang/String;
    .end local v15    # "t":[B
    :cond_2
    const-string v17, "error_code"

    const-string v18, "20002"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
