.class public Lcom/market2345/messages/data/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/MessageItem$PduLoadedCallback;,
        Lcom/market2345/messages/data/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field public static ATTACHMENT_TYPE_NOT_LOADED:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mHighlight:Ljava/util/regex/Pattern;

.field mLastSendingState:Z

.field mLocked:Z

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field mMmsStatus:I

.field final mMsgId:J

.field private mPduLoadedCallback:Lcom/market2345/messages/data/MessageItem$PduLoadedCallback;

.field mReadReport:Z

.field mSubject:Ljava/lang/String;

.field mTextContentType:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "MessageItem"

    sput-object v0, Lcom/market2345/messages/data/MessageItem;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/market2345/messages/data/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "columnsMap"    # Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;
    .param p5, "highlight"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/market2345/messages/data/MessageItem;->mContext:Landroid/content/Context;

    .line 80
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/market2345/messages/data/MessageItem;->mMsgId:J

    .line 81
    iput-object p5, p0, Lcom/market2345/messages/data/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 82
    iput-object p2, p0, Lcom/market2345/messages/data/MessageItem;->mType:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/market2345/messages/data/MessageItem;->mCursor:Landroid/database/Cursor;

    .line 84
    iput-object p4, p0, Lcom/market2345/messages/data/MessageItem;->mColumnsMap:Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;

    .line 86
    const-string v6, "sms"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 87
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/market2345/messages/data/MessageItem;->mReadReport:Z

    .line 89
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 90
    .local v4, "status":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 92
    sget-object v6, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->NONE:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    .line 104
    :goto_0
    sget-object v6, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/market2345/messages/data/MessageItem;->mMsgId:J

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 106
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    .line 107
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    .line 108
    iget v6, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    invoke-static {v6}, Lcom/market2345/messages/data/TelephonyInterface$Sms;->isOutgoingFolder(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    const v6, 0x7f0b00b8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "meString":Ljava/lang/String;
    iput-object v2, p0, Lcom/market2345/messages/data/MessageItem;->mContact:Ljava/lang/String;

    .line 116
    .end local v2    # "meString":Ljava/lang/String;
    :cond_0
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mBody:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/market2345/messages/data/MessageItem;->isOutgoingMessage()Z

    move-result v6

    if-nez v6, :cond_1

    .line 121
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 122
    .local v0, "date":J
    invoke-static {p1, v0, v1}, Lcom/market2345/messages/util/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 125
    .end local v0    # "date":J
    :cond_1
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/market2345/messages/data/MessageItem;->mLocked:Z

    .line 162
    .end local v4    # "status":J
    :goto_2
    return-void

    .line 93
    .restart local v4    # "status":J
    :cond_2
    const-wide/16 v6, 0x40

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 95
    sget-object v6, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->FAILED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    goto :goto_0

    .line 96
    :cond_3
    const-wide/16 v6, 0x20

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    .line 98
    sget-object v6, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->PENDING:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    goto :goto_0

    .line 101
    :cond_4
    sget-object v6, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->RECEIVED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    goto :goto_0

    .line 125
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 127
    .end local v4    # "status":J
    :cond_6
    const-string v6, "mms"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 129
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    .line 132
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubject:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "subject":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 134
    new-instance v6, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;

    iget v7, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v3}, Lcom/market2345/messages/data/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 139
    :cond_7
    iget v6, p4, Lcom/market2345/messages/MessagesManagerImpl$ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/market2345/messages/data/MessageItem;->mLocked:Z

    .line 141
    sget-object v6, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->NONE:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    .line 142
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/market2345/messages/data/MessageItem;->mReadReport:Z

    .line 143
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mBody:Ljava/lang/String;

    .line 145
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 147
    const-string v6, ""

    iput-object v6, p0, Lcom/market2345/messages/data/MessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_2

    .line 139
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 160
    .end local v3    # "subject":Ljava/lang/String;
    :cond_9
    new-instance v6, Lcom/market2345/messages/data/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type of the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/market2345/messages/data/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private interpretFrom(Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .param p1, "from"    # Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mContact:Ljava/lang/String;

    .line 175
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/market2345/messages/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/market2345/messages/data/Contact;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/market2345/messages/data/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public isMe()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/market2345/messages/data/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-eq v4, v2, :cond_0

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 192
    .local v0, "isIncomingMms":Z
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/messages/data/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-nez v4, :cond_3

    :cond_1
    move v1, v2

    .line 195
    .local v1, "isIncomingSms":Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :goto_2
    return v2

    .end local v0    # "isIncomingMms":Z
    .end local v1    # "isIncomingSms":Z
    :cond_2
    move v0, v3

    .line 189
    goto :goto_0

    .restart local v0    # "isIncomingMms":Z
    :cond_3
    move v1, v3

    .line 192
    goto :goto_1

    .restart local v1    # "isIncomingSms":Z
    :cond_4
    move v2, v3

    .line 195
    goto :goto_2
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/market2345/messages/data/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 200
    .local v0, "isOutgoingMms":Z
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/messages/data/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_0
    move v1, v2

    .line 204
    .local v1, "isOutgoingSms":Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0    # "isOutgoingMms":Z
    .end local v1    # "isOutgoingSms":Z
    :cond_3
    move v0, v3

    .line 199
    goto :goto_0

    .restart local v0    # "isOutgoingMms":Z
    :cond_4
    move v1, v3

    .line 200
    goto :goto_1
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/market2345/messages/data/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "formattedMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/market2345/messages/data/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/market2345/messages/data/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/market2345/messages/data/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/MessageItem;->mDeliveryStatus:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
