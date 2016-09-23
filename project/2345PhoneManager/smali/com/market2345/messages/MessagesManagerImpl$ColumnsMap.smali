.class public Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;
.super Ljava/lang/Object;
.source "MessagesManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/MessagesManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsMap"
.end annotation


# instance fields
.field public mColumnMmsDate:I

.field public mColumnMmsDateSent:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsStatus:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMmsTextOnly:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsDate:I

.field public mColumnSmsDateSent:I

.field public mColumnSmsErrorCode:I

.field public mColumnSmsLocked:I

.field public mColumnSmsRead:I

.field public mColumnSmsStatus:I

.field public mColumnSmsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgType:I

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgId:I

    .line 232
    const/4 v0, 0x3

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsAddress:I

    .line 233
    const/4 v0, 0x4

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsBody:I

    .line 234
    const/4 v0, 0x5

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsDate:I

    .line 235
    const/4 v0, 0x6

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsDateSent:I

    .line 236
    const/16 v0, 0x8

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsType:I

    .line 237
    const/16 v0, 0x9

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsStatus:I

    .line 238
    const/16 v0, 0xa

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsLocked:I

    .line 239
    const/16 v0, 0xb

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsErrorCode:I

    .line 240
    const/16 v0, 0xc

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubject:I

    .line 241
    const/16 v0, 0xd

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 242
    const/16 v0, 0x11

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsMessageType:I

    .line 243
    const/16 v0, 0x12

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsMessageBox:I

    .line 244
    const/16 v0, 0x13

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 245
    const/16 v0, 0x14

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsReadReport:I

    .line 246
    const/16 v0, 0x15

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsErrorType:I

    .line 247
    const/16 v0, 0x16

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsLocked:I

    .line 248
    const/16 v0, 0x17

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsStatus:I

    .line 249
    const/16 v0, 0x18

    iput v0, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsTextOnly:I

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    :try_start_1
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :goto_1
    :try_start_2
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsAddress:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    :goto_2
    :try_start_3
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsBody:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    :goto_3
    :try_start_4
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsDate:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 286
    :goto_4
    :try_start_5
    const-string v1, "date_sent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsDateSent:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 292
    :goto_5
    :try_start_6
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsType:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 298
    :goto_6
    :try_start_7
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsStatus:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 304
    :goto_7
    :try_start_8
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsLocked:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 310
    :goto_8
    :try_start_9
    const-string v1, "error_code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsErrorCode:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 316
    :goto_9
    :try_start_a
    const-string v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubject:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 322
    :goto_a
    :try_start_b
    const-string v1, "sub_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 328
    :goto_b
    :try_start_c
    const-string v1, "m_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 334
    :goto_c
    :try_start_d
    const-string v1, "msg_box"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 340
    :goto_d
    :try_start_e
    const-string v1, "d_rpt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 346
    :goto_e
    :try_start_f
    const-string v1, "rr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 352
    :goto_f
    :try_start_10
    const-string v1, "err_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    .line 358
    :goto_10
    :try_start_11
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsLocked:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    .line 364
    :goto_11
    :try_start_12
    const-string v1, "st"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsStatus:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    .line 370
    :goto_12
    :try_start_13
    const-string v1, "text_only"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsTextOnly:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    .line 374
    :goto_13
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 269
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 275
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 287
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 293
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 299
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 305
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 311
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 317
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 318
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 329
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 335
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v0

    .line 336
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 341
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 347
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v0

    .line 348
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 354
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 359
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v0

    .line 360
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 365
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v0

    .line 366
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 371
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method
