.class public Lcom/market2345/messages/MessagesManagerImpl;
.super Ljava/lang/Object;
.source "MessagesManagerImpl.java"

# interfaces
.implements Lcom/market2345/messages/MessagesManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/MessagesManagerImpl$1;,
        Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;,
        Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;
    }
.end annotation


# static fields
.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xe

.field static final COLUMN_MMS_DATE_SENT:I = 0xf

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x13

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x15

.field static final COLUMN_MMS_LOCKED:I = 0x16

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x12

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x11

.field static final COLUMN_MMS_READ:I = 0x10

.field static final COLUMN_MMS_READ_REPORT:I = 0x14

.field static final COLUMN_MMS_STATUS:I = 0x17

.field static final COLUMN_MMS_SUBJECT:I = 0xc

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xd

.field static final COLUMN_MMS_TEXT_ONLY:I = 0x18

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_DATE_SENT:I = 0x6

.field static final COLUMN_SMS_ERROR_CODE:I = 0xb

.field static final COLUMN_SMS_LOCKED:I = 0xa

.field static final COLUMN_SMS_READ:I = 0x7

.field static final COLUMN_SMS_STATUS:I = 0x9

.field static final COLUMN_SMS_TYPE:I = 0x8

.field static final COLUMN_THREAD_ID:I = 0x2

.field static final PROJECTION:[Ljava/lang/String;

.field private static SMS_Projection:[Ljava/lang/String;


# instance fields
.field private contacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "subject"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/MessagesManagerImpl;->SMS_Projection:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "text_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/MessagesManagerImpl;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

    invoke-direct {v0}, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/messages/MessagesManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/messages/MessagesManagerImpl$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/messages/MessagesManagerImpl;-><init>()V

    return-void
.end method

.method private changeReadStatus(Landroid/net/Uri;[JZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J
    .param p3, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p2, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "read"

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 556
    .local v0, "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 559
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 560
    invoke-virtual {p0, p2}, Lcom/market2345/messages/MessagesManagerImpl;->searchMessagesByThreadIds([J)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 567
    .end local v2    # "i":I
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_2
    return-object v4

    .line 561
    .restart local v2    # "i":I
    .restart local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 567
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private deleteMessages(Landroid/net/Uri;[J)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J

    .prologue
    .line 529
    const/4 v4, -0x1

    .line 530
    .local v4, "result":I
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_0

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p2, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 535
    .local v0, "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    const/4 v4, 0x1

    .line 546
    .end local v2    # "i":I
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    return v4

    .line 540
    .restart local v2    # "i":I
    .restart local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private exportMessages(Ljava/lang/String;[J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 571
    const/4 v8, 0x0

    .line 572
    .local v8, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 574
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v0, 0xc

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "status"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "body"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "service_center"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "subject"

    aput-object v1, v2, v0

    .line 577
    .local v2, "projection":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v10, "sb":Ljava/lang/StringBuffer;
    const-string v0, "("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p2

    if-ge v7, v0, :cond_1

    .line 580
    aget-wide v0, p2, v7

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 581
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 582
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 585
    :cond_1
    const-string v0, ") "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 587
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/market2345/messages/MessagesManagerImpl;->parseCursorToMessages(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v8

    .line 630
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "i":I
    .end local v9    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    return-object v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/messages/MessagesManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    # getter for: Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->manager:Lcom/market2345/messages/MessagesManagerImpl;
    invoke-static {}, Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->access$100()Lcom/market2345/messages/MessagesManagerImpl;

    move-result-object v0

    invoke-direct {v0}, Lcom/market2345/messages/MessagesManagerImpl;->isNew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    # getter for: Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->manager:Lcom/market2345/messages/MessagesManagerImpl;
    invoke-static {}, Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->access$100()Lcom/market2345/messages/MessagesManagerImpl;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/market2345/messages/MessagesManagerImpl;->initInstance(Landroid/content/Context;)V

    .line 177
    :cond_0
    # getter for: Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->manager:Lcom/market2345/messages/MessagesManagerImpl;
    invoke-static {}, Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->access$100()Lcom/market2345/messages/MessagesManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private getNotNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 461
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private initInstance(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    .line 165
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    .line 166
    return-void
.end method

.method private isNew()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCursorToMessages(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 26
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const-string v23, "janan"

    const-string v24, "\u88ab\u8c03\u7528"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v21, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 470
    .local v5, "date":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 471
    .local v6, "fmtDateTime":Ljava/text/DateFormat;
    if-eqz p1, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 473
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    .line 475
    :cond_0
    const-string v23, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 476
    .local v10, "index_Id":I
    const-string v23, "thread_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 477
    .local v17, "index_ThreadID":I
    const-string v23, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 478
    .local v7, "index_Address":I
    const-string v23, "person"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 479
    .local v11, "index_Person":I
    const-string v23, "date"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 480
    .local v9, "index_Date":I
    const-string v23, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 481
    .local v12, "index_Protocol":I
    const-string v23, "read"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 482
    .local v13, "index_Read":I
    const-string v23, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 483
    .local v15, "index_Status":I
    const-string v23, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 484
    .local v18, "index_Type":I
    const-string v23, "body"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 485
    .local v8, "index_Body":I
    const-string v23, "service_center"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 486
    .local v14, "index_Service_Center":I
    const-string v23, "subject"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 487
    .local v16, "index_Subject":I
    new-instance v4, Lcom/market2345/contacts/ContactsContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/market2345/contacts/ContactsContext;-><init>(Landroid/content/Context;)V

    .line 488
    .local v4, "cContext":Lcom/market2345/contacts/ContactsContext;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 490
    :try_start_0
    new-instance v20, Lcom/market2345/messages/data/MessageItemTmp;

    invoke-direct/range {v20 .. v20}, Lcom/market2345/messages/data/MessageItemTmp;-><init>()V

    .line 491
    .local v20, "message":Lcom/market2345/messages/data/MessageItemTmp;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/market2345/messages/data/MessageItemTmp;->id:J

    .line 492
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->threadID:I

    .line 493
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    .line 494
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->person:I

    .line 495
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/market2345/messages/data/MessageItemTmp;->date:J

    .line 496
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/market2345/messages/data/MessageItemTmp;->date:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 497
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->dateFormat:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->protocal:I

    .line 499
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->read:I

    .line 500
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->status:I

    .line 501
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->type:I

    .line 503
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->body:Ljava/lang/String;

    .line 504
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 505
    .local v22, "service_cen":Ljava/lang/String;
    if-nez v22, :cond_1

    const-string v22, ""

    .end local v22    # "service_cen":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->service_center:Ljava/lang/String;

    .line 506
    const/16 v19, 0x0

    .line 507
    .local v19, "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 508
    invoke-virtual {v4}, Lcom/market2345/contacts/ContactsContext;->getContactsManger()Lcom/market2345/contacts/ContactsManager;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/market2345/contacts/ContactsManager;->searchContactNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v19, :cond_3

    const-string v23, ""

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :goto_2
    if-nez v19, :cond_2

    const-string v19, ""

    .end local v19    # "localName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->name:Ljava/lang/String;

    .line 514
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/market2345/messages/data/MessageItemTmp;->subject:Ljava/lang/String;

    .line 515
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 517
    .end local v20    # "message":Lcom/market2345/messages/data/MessageItemTmp;
    :catch_0
    move-exception v23

    goto/16 :goto_0

    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "message":Lcom/market2345/messages/data/MessageItemTmp;
    :cond_3
    move-object/from16 v23, v19

    .line 509
    goto :goto_1

    .line 511
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "localName":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v19    # "localName":Ljava/lang/String;
    goto :goto_2

    .line 522
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "message":Lcom/market2345/messages/data/MessageItemTmp;
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 524
    .end local v4    # "cContext":Lcom/market2345/contacts/ContactsContext;
    .end local v7    # "index_Address":I
    .end local v8    # "index_Body":I
    .end local v9    # "index_Date":I
    .end local v10    # "index_Id":I
    .end local v11    # "index_Person":I
    .end local v12    # "index_Protocol":I
    .end local v13    # "index_Read":I
    .end local v14    # "index_Service_Center":I
    .end local v15    # "index_Status":I
    .end local v16    # "index_Subject":I
    .end local v17    # "index_ThreadID":I
    .end local v18    # "index_Type":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/messages/MessagesManagerImpl;->contacts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 525
    return-object v21
.end method


# virtual methods
.method public changeConversationToRead([J)Ljava/util/ArrayList;
    .locals 2
    .param p1, "threadIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/market2345/messages/MessagesManagerImpl;->changeReadStatus(Landroid/net/Uri;[JZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public changeSmsToRead([J)Ljava/util/ArrayList;
    .locals 2
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/market2345/messages/MessagesManagerImpl;->changeReadStatus(Landroid/net/Uri;[JZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public deleteConversation([J)I
    .locals 1
    .param p1, "threadIds"    # [J

    .prologue
    .line 386
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/market2345/messages/MessagesManagerImpl;->deleteMessages(Landroid/net/Uri;[J)I

    move-result v0

    return v0
.end method

.method public deleteMessage([J)I
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 380
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/market2345/messages/MessagesManagerImpl;->deleteMessages(Landroid/net/Uri;[J)I

    move-result v0

    return v0
.end method

.method public getAllConversation()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v7, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Conversation;>;"
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 49
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/market2345/messages/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/market2345/messages/data/Conversation;

    move-result-object v6

    .line 51
    .local v6, "conv":Lcom/market2345/messages/data/Conversation;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v6    # "conv":Lcom/market2345/messages/data/Conversation;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 54
    return-object v7
.end method

.method public getAllMessage()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "janan"

    const-string v1, "\u88ab\u8c03\u7528111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/market2345/messages/MessagesManagerImpl;->SMS_Projection:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market2345/messages/data/TelephonyInterface$Sms;->query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/messages/MessagesManagerImpl;->parseCursorToMessages(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 416
    const/4 v6, -0x1

    .line 419
    .local v6, "count":I
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 420
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 423
    :cond_0
    return v6
.end method

.method public getMessagesInConversation(J)Ljava/util/ArrayList;
    .locals 1
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagesInConversation(Lcom/market2345/messages/data/Conversation;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "conv"    # Lcom/market2345/messages/data/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/messages/data/Conversation;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItem;>;"
    invoke-virtual {p1}, Lcom/market2345/messages/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, "conversationUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-object v9

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/market2345/messages/MessagesManagerImpl;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 74
    .local v5, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerImpl;->mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

    iget v0, v0, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "type":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/market2345/messages/data/MessageItem;

    iget-object v3, p0, Lcom/market2345/messages/MessagesManagerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/market2345/messages/MessagesManagerImpl;->mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/market2345/messages/data/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;Ljava/util/regex/Pattern;)V

    .line 79
    .local v2, "item":Lcom/market2345/messages/data/MessageItem;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/market2345/messages/data/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    .end local v2    # "item":Lcom/market2345/messages/data/MessageItem;
    :catch_0
    move-exception v8

    .line 81
    .local v8, "e":Lcom/market2345/messages/data/mms/MmsException;
    invoke-virtual {v8}, Lcom/market2345/messages/data/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v4    # "type":Ljava/lang/String;
    .end local v8    # "e":Lcom/market2345/messages/data/mms/MmsException;
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public insertMessages(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/MessageItemTmp;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 435
    .local v5, "size":I
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 436
    .local v1, "fmtDateTime":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 437
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/MessageItemTmp;

    .line 438
    .local v3, "message":Lcom/market2345/messages/data/MessageItemTmp;
    iget-object v7, v3, Lcom/market2345/messages/data/MessageItemTmp;->dateFormat:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 439
    iget-object v7, v3, Lcom/market2345/messages/data/MessageItemTmp;->dateFormat:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->date:J

    .line 441
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "address"

    iget-object v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->address:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/market2345/messages/MessagesManagerImpl;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v7, "body"

    iget-object v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->body:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/market2345/messages/MessagesManagerImpl;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v7, "date"

    iget-wide v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->date:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    const-string v7, "subject"

    iget-object v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->subject:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v7, "read"

    iget v8, v3, Lcom/market2345/messages/data/MessageItemTmp;->read:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v7, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 449
    .local v0, "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x2d

    if-le v7, v8, :cond_1

    .line 451
    iget-object v7, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 452
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 436
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "message":Lcom/market2345/messages/data/MessageItemTmp;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v7, p0, Lcom/market2345/messages/MessagesManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 458
    .end local v1    # "fmtDateTime":Ljava/text/DateFormat;
    .end local v2    # "i":I
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "size":I
    :cond_3
    return-void
.end method

.method public searchMessageByIds([J)Ljava/util/ArrayList;
    .locals 1
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "_id"

    invoke-direct {p0, v0, p1}, Lcom/market2345/messages/MessagesManagerImpl;->exportMessages(Ljava/lang/String;[J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public searchMessagesByThreadIds([J)Ljava/util/ArrayList;
    .locals 1
    .param p1, "threadIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    const-string v0, "thread_id"

    invoke-direct {p0, v0, p1}, Lcom/market2345/messages/MessagesManagerImpl;->exportMessages(Ljava/lang/String;[J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
