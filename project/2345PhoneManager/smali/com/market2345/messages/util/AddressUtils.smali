.class public Lcom/market2345/messages/util/AddressUtils;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddressUtils"

.field private static mPhoneNumberUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 26
    .local v11, "msgId":Ljava/lang/String;
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 28
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v6, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v2, v5

    const-string v3, "charset"

    aput-object v3, v2, v12

    const-string v3, "type=137"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 36
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 38
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, "from":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {v10}, Lcom/market2345/messages/data/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 43
    .local v7, "bytes":[B
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 44
    .local v8, "charset":I
    new-instance v0, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;

    invoke-direct {v0, v8, v7}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    .end local v7    # "bytes":[B
    .end local v8    # "charset":I
    .end local v10    # "from":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
