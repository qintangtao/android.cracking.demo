.class Lcom/market2345/messages/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

.field private static final CONTACT_ID_COLUMN:I = 0x4

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x5

.field private static final CONTACT_STATUS_COLUMN:I = 0x6

.field private static final EMAIL_CONTACT_ID_COLUMN:I = 0x3

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x4

.field private static final EMAIL_ID_COLUMN:I = 0x0

.field private static final EMAIL_NAME_COLUMN:I = 0x1

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_SEND_TO_VOICEMAIL_COLUMN:I = 0x5

.field private static final EMAIL_STATUS_COLUMN:I = 0x2

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NORMALIZED_NUMBER:I = 0x7

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final SELF_ID_COLUMN:I = 0x0

.field private static final SELF_NAME_COLUMN:I = 0x1

.field private static final SELF_PROJECTION:[Ljava/lang/String;

.field private static final SEND_TO_VOICEMAIL:I = 0x8

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field static final STATIC_KEY_BUFFER_MAXIMUM_LENGTH:I = 0x5

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 410
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 432
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    .line 441
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 446
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1087
    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mTaskQueue:Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;

    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 467
    iput-object p1, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/market2345/messages/data/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/market2345/messages/data/Contact$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact$ContactsCache;
    .param p1, "x1"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->remove(Lcom/market2345/messages/data/Contact;)V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact$ContactsCache;
    .param p1, "x1"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->updateContact(Lcom/market2345/messages/data/Contact;)V

    return-void
.end method

.method private contactChanged(Lcom/market2345/messages/data/Contact;Lcom/market2345/messages/data/Contact;)Z
    .locals 12
    .param p1, "orig"    # Lcom/market2345/messages/data/Contact;
    .param p2, "newContactData"    # Lcom/market2345/messages/data/Contact;

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 659
    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$900(Lcom/market2345/messages/data/Contact;)I

    move-result v6

    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$900(Lcom/market2345/messages/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v4

    .line 663
    :cond_1
    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodId:J
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1000(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v6

    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodId:J
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1000(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 667
    # getter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1100(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v6

    # getter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1100(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 668
    const-string v5, "Messages:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    const-string v5, "Contact"

    const-string v6, "person id changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    :cond_2
    # getter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1200(Lcom/market2345/messages/data/Contact;)I

    move-result v6

    # getter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1200(Lcom/market2345/messages/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 675
    const-string v5, "Messages:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    const-string v5, "Contact"

    const-string v6, "presence changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 681
    :cond_3
    # getter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1300(Lcom/market2345/messages/data/Contact;)Z

    move-result v6

    # getter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1300(Lcom/market2345/messages/data/Contact;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 685
    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/market2345/messages/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/messages/data/Contact;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "oldName":Ljava/lang/String;
    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/market2345/messages/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/messages/data/Contact;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 688
    const-string v6, "Messages:contact"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    const-string v6, "Contact"

    const-string v7, "name changed: %s -> %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v5

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :cond_4
    # getter for: Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1600(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/market2345/messages/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/messages/data/Contact;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "oldLabel":Ljava/lang/String;
    # getter for: Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1600(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/market2345/messages/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/messages/data/Contact;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "newLabel":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 697
    const-string v6, "Messages:contact"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    const-string v6, "Contact"

    const-string v7, "label changed: %s -> %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v5

    aput-object v0, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_5
    # getter for: Lcom/market2345/messages/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1700(Lcom/market2345/messages/data/Contact;)[B

    move-result-object v6

    # getter for: Lcom/market2345/messages/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/market2345/messages/data/Contact;->access$1700(Lcom/market2345/messages/data/Contact;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 704
    const-string v5, "Messages:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 705
    const-string v5, "Contact"

    const-string v6, "avatar changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 710
    goto/16 :goto_0
.end method

.method private fillPhoneTypeContact(Lcom/market2345/messages/data/Contact;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "contact"    # Lcom/market2345/messages/data/Contact;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 904
    monitor-enter p1

    .line 905
    const/4 v3, 0x1

    :try_start_0
    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$902(Lcom/market2345/messages/data/Contact;I)I

    .line 906
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodId:J
    invoke-static {p1, v4, v5}, Lcom/market2345/messages/data/Contact;->access$1002(Lcom/market2345/messages/data/Contact;J)J

    .line 907
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$1602(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$1402(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    # setter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/market2345/messages/data/Contact;->access$1102(Lcom/market2345/messages/data/Contact;J)J

    .line 910
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/market2345/messages/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v3

    # setter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$1202(Lcom/market2345/messages/data/Contact;I)I

    .line 912
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$1802(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/market2345/messages/data/Contact;->access$2002(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 914
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    # setter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v1}, Lcom/market2345/messages/data/Contact;->access$1302(Lcom/market2345/messages/data/Contact;Z)Z

    .line 915
    const-string v1, "Messages:contact"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillPhoneTypeContact: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1200(Lcom/market2345/messages/data/Contact;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SendToVoicemail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1300(Lcom/market2345/messages/data/Contact;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 920
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->loadAvatarData(Lcom/market2345/messages/data/Contact;)[B

    move-result-object v0

    .line 923
    .local v0, "data":[B
    monitor-enter p1

    .line 924
    :try_start_1
    # setter for: Lcom/market2345/messages/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/market2345/messages/data/Contact;->access$1702(Lcom/market2345/messages/data/Contact;[B)[B

    .line 925
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 926
    return-void

    .end local v0    # "data":[B
    :cond_1
    move v1, v2

    .line 914
    goto :goto_0

    .line 920
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 925
    .restart local v0    # "data":[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private fillSelfContact(Lcom/market2345/messages/data/Contact;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "contact"    # Lcom/market2345/messages/data/Contact;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 944
    return-void
.end method

.method private get(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/Contact;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isMe"    # Z
    .param p3, "canBlock"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 536
    const-string v4, "Messages:contact"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 537
    const-string v4, "Contact"

    const-string v5, "get(%s, %s, %s)"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/market2345/messages/data/Contact;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    const-string p1, ""

    .line 549
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/market2345/messages/data/Contact$ContactsCache;->internalGet(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v1

    .line 550
    .local v1, "contact":Lcom/market2345/messages/data/Contact;
    const/4 v2, 0x0

    .line 552
    .local v2, "r":Ljava/lang/Runnable;
    monitor-enter v1

    .line 555
    :goto_0
    if-eqz p3, :cond_2

    :try_start_0
    # getter for: Lcom/market2345/messages/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$400(Lcom/market2345/messages/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v4

    goto :goto_0

    .line 565
    :cond_2
    :try_start_2
    # getter for: Lcom/market2345/messages/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$500(Lcom/market2345/messages/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    # getter for: Lcom/market2345/messages/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$400(Lcom/market2345/messages/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 566
    const/4 v4, 0x0

    # setter for: Lcom/market2345/messages/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/market2345/messages/data/Contact;->access$502(Lcom/market2345/messages/data/Contact;Z)Z

    .line 568
    const-string v4, "Messages:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "async update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/market2345/messages/data/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canBlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/market2345/messages/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$500(Lcom/market2345/messages/data/Contact;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 573
    :cond_3
    move-object v0, v1

    .line 574
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    new-instance v3, Lcom/market2345/messages/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/market2345/messages/data/Contact$ContactsCache$1;-><init>(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    .end local v2    # "r":Ljava/lang/Runnable;
    .local v3, "r":Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    # setter for: Lcom/market2345/messages/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/market2345/messages/data/Contact;->access$402(Lcom/market2345/messages/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 587
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    .end local v3    # "r":Ljava/lang/Runnable;
    .restart local v2    # "r":Ljava/lang/Runnable;
    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 590
    if-eqz v2, :cond_5

    .line 591
    if-eqz p3, :cond_6

    .line 592
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 597
    :cond_5
    :goto_1
    return-object v1

    .line 587
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 594
    :cond_6
    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 587
    .end local v2    # "r":Ljava/lang/Runnable;
    .restart local v0    # "c":Lcom/market2345/messages/data/Contact;
    .restart local v3    # "r":Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "r":Ljava/lang/Runnable;
    .restart local v2    # "r":Ljava/lang/Runnable;
    goto :goto_2
.end method

.method private getContactInfo(Lcom/market2345/messages/data/Contact;)Lcom/market2345/messages/data/Contact;
    .locals 3
    .param p1, "c"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 773
    # getter for: Lcom/market2345/messages/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$2300(Lcom/market2345/messages/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForSelf()Lcom/market2345/messages/data/Contact;

    move-result-object v0

    .line 788
    :cond_0
    :goto_0
    return-object v0

    .line 775
    :cond_1
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/messages/data/TelephonyInterface$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 776
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 777
    :cond_2
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 779
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    .line 780
    .local v0, "contact":Lcom/market2345/messages/data/Contact;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->existsInDatabase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 787
    .end local v0    # "contact":Lcom/market2345/messages/data/Contact;
    :cond_3
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "strippedNumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1004
    new-instance v0, Lcom/market2345/messages/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V

    .line 1005
    .local v0, "entry":Lcom/market2345/messages/data/Contact;
    const/4 v1, 0x2

    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {v0, v1}, Lcom/market2345/messages/data/Contact;->access$902(Lcom/market2345/messages/data/Contact;I)I

    .line 1054
    return-object v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/market2345/messages/data/Contact;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 832
    new-instance v0, Lcom/market2345/messages/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V

    .line 833
    .local v0, "entry":Lcom/market2345/messages/data/Contact;
    const/4 v1, 0x1

    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {v0, v1}, Lcom/market2345/messages/data/Contact;->access$902(Lcom/market2345/messages/data/Contact;I)I

    .line 835
    const-string v1, "Messages:contact"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber: number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 872
    :cond_0
    return-object v0
.end method

.method private getContactInfoForSelf()Lcom/market2345/messages/data/Contact;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 879
    new-instance v7, Lcom/market2345/messages/data/Contact;

    const/4 v0, 0x1

    invoke-direct {v7, v0, v3}, Lcom/market2345/messages/data/Contact;-><init>(ZLcom/market2345/messages/data/Contact$1;)V

    .line 880
    .local v7, "entry":Lcom/market2345/messages/data/Contact;
    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {v7, v1}, Lcom/market2345/messages/data/Contact;->access$902(Lcom/market2345/messages/data/Contact;I)I

    .line 882
    const-string v0, "Messages:contact"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "getContactInfoForSelf"

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 888
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactInfoForSelf() returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-object v7

    .line 894
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-direct {p0, v7, v6}, Lcom/market2345/messages/data/Contact$ContactsCache;->fillSelfContact(Lcom/market2345/messages/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 993
    if-eqz p1, :cond_0

    .line 994
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalGet(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;
    .locals 8
    .param p1, "numberOrEmail"    # Ljava/lang/String;
    .param p2, "isMe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1090
    monitor-enter p0

    .line 1093
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/market2345/messages/data/TelephonyInterface$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/market2345/messages/util/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1095
    .local v3, "isNotRegularPhoneNumber":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1098
    .local v4, "key":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1099
    .local v1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    if-eqz v1, :cond_5

    .line 1100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1101
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 1102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    .line 1103
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    if-eqz v3, :cond_3

    .line 1104
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1105
    monitor-exit p0

    .line 1122
    .end local v2    # "i":I
    .end local v5    # "length":I
    :goto_3
    return-object v0

    .line 1093
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1095
    .restart local v3    # "isNotRegularPhoneNumber":Z
    :cond_2
    sget-object v6, Lcom/market2345/messages/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/market2345/messages/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1108
    .restart local v0    # "c":Lcom/market2345/messages/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    :cond_3
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1109
    monitor-exit p0

    goto :goto_3

    .line 1123
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .end local v2    # "i":I
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1101
    .restart local v0    # "c":Lcom/market2345/messages/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isNotRegularPhoneNumber":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1114
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    .end local v2    # "i":I
    .end local v5    # "length":I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    iget-object v6, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_6
    if-eqz p2, :cond_7

    new-instance v0, Lcom/market2345/messages/data/Contact;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/market2345/messages/data/Contact;-><init>(ZLcom/market2345/messages/data/Contact$1;)V

    .line 1121
    .restart local v0    # "c":Lcom/market2345/messages/data/Contact;
    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    monitor-exit p0

    goto :goto_3

    .line 1118
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    :cond_7
    new-instance v0, Lcom/market2345/messages/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 811
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "keyBuffer"    # Ljava/nio/CharBuffer;

    .prologue
    .line 1061
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1062
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1064
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1065
    .local v1, "position":I
    const/4 v2, 0x0

    .line 1066
    .local v2, "resultCount":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1067
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1068
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1070
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1075
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1076
    if-lez v2, :cond_2

    .line 1077
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1080
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/market2345/messages/data/Contact;)[B
    .locals 8
    .param p1, "entry"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 953
    const/4 v2, 0x0

    .line 955
    .local v2, "data":[B
    # getter for: Lcom/market2345/messages/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$2300(Lcom/market2345/messages/data/Contact;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1100(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    # getter for: Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1900(Lcom/market2345/messages/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 956
    :cond_1
    const/4 v3, 0x0

    .line 988
    :goto_0
    return-object v3

    .line 959
    :cond_2
    const-string v3, "Messages:contact"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAvatarData: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 965
    :cond_3
    # getter for: Lcom/market2345/messages/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$2300(Lcom/market2345/messages/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 969
    .local v1, "contactUri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 973
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 974
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    .line 975
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :cond_4
    if-eqz v0, :cond_5

    .line 982
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_2
    move-object v3, v2

    .line 988
    goto :goto_0

    .line 965
    .end local v0    # "avatarDataStream":Ljava/io/InputStream;
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$1100(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 977
    .restart local v0    # "avatarDataStream":Ljava/io/InputStream;
    .restart local v1    # "contactUri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 981
    if-eqz v0, :cond_5

    .line 982
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 984
    :catch_1
    move-exception v3

    goto :goto_2

    .line 980
    :catchall_0
    move-exception v3

    .line 981
    if-eqz v0, :cond_7

    .line 982
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 985
    :cond_7
    :goto_3
    throw v3

    .line 984
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method private remove(Lcom/market2345/messages/data/Contact;)V
    .locals 0
    .param p1, "contact"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 1171
    return-void
.end method

.method private updateContact(Lcom/market2345/messages/data/Contact;)V
    .locals 7
    .param p1, "c"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 767
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfo(Lcom/market2345/messages/data/Contact;)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    .line 719
    .local v0, "entry":Lcom/market2345/messages/data/Contact;
    monitor-enter p1

    .line 720
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/market2345/messages/data/Contact$ContactsCache;->contactChanged(Lcom/market2345/messages/data/Contact;Lcom/market2345/messages/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 721
    const-string v4, "Messages:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContact: contact changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/market2345/messages/data/Contact;->access$000(Ljava/lang/String;)V

    .line 725
    :cond_1
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$802(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    # getter for: Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1600(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1602(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    # getter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1100(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/market2345/messages/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/market2345/messages/data/Contact;->access$1102(Lcom/market2345/messages/data/Contact;J)J

    .line 728
    # getter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1200(Lcom/market2345/messages/data/Contact;)I

    move-result v4

    # setter for: Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1202(Lcom/market2345/messages/data/Contact;I)I

    .line 729
    # getter for: Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1802(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 730
    # getter for: Lcom/market2345/messages/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1700(Lcom/market2345/messages/data/Contact;)[B

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1702(Lcom/market2345/messages/data/Contact;[B)[B

    .line 731
    # getter for: Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1900(Lcom/market2345/messages/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1902(Lcom/market2345/messages/data/Contact;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 732
    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodId:J
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1000(Lcom/market2345/messages/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodId:J
    invoke-static {p1, v4, v5}, Lcom/market2345/messages/data/Contact;->access$1002(Lcom/market2345/messages/data/Contact;J)J

    .line 733
    # getter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$900(Lcom/market2345/messages/data/Contact;)I

    move-result v4

    # setter for: Lcom/market2345/messages/data/Contact;->mContactMethodType:I
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$902(Lcom/market2345/messages/data/Contact;I)I

    .line 734
    # getter for: Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$2000(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$2002(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    # getter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1402(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    # getter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->access$1300(Lcom/market2345/messages/data/Contact;)Z

    move-result v4

    # setter for: Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$1302(Lcom/market2345/messages/data/Contact;Z)Z

    .line 738
    # invokes: Lcom/market2345/messages/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$2100(Lcom/market2345/messages/data/Contact;)V

    .line 746
    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 751
    # getter for: Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/market2345/messages/data/Contact;->access$2200()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :try_start_1
    # getter for: Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/market2345/messages/data/Contact;->access$2200()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 753
    .local v2, "iterator":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/market2345/messages/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 754
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/Contact$UpdateListener;

    .line 755
    .local v3, "l":Lcom/market2345/messages/data/Contact$UpdateListener;
    const-string v4, "Messages:contact"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 756
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_2
    invoke-interface {v3, p1}, Lcom/market2345/messages/data/Contact$UpdateListener;->onUpdate(Lcom/market2345/messages/data/Contact;)V

    goto :goto_1

    .line 766
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iterator":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/market2345/messages/data/Contact$UpdateListener;>;"
    .end local v3    # "l":Lcom/market2345/messages/data/Contact$UpdateListener;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 753
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .line 762
    :cond_3
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 763
    const/4 v4, 0x0

    :try_start_5
    # setter for: Lcom/market2345/messages/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/market2345/messages/data/Contact;->access$402(Lcom/market2345/messages/data/Contact;Z)Z

    .line 764
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 765
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 766
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 765
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method dump()V
    .locals 8

    .prologue
    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    const-string v5, "Contact"

    const-string v6, "**** Contact cache dump ****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v5, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 474
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 475
    .local v0, "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/Contact;

    .line 476
    .local v1, "c":Lcom/market2345/messages/data/Contact;
    const-string v5, "Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/market2345/messages/data/Contact;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v0    # "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .end local v1    # "c":Lcom/market2345/messages/data/Contact;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    return-void
.end method

.method public get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "canBlock"    # Z

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/market2345/messages/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 18
    .param p1, "uris"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_0

    .line 607
    const/4 v9, 0x0

    .line 651
    :goto_0
    return-object v9

    .line 609
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v13, "idSetBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    .line 611
    .local v11, "first":Z
    move-object/from16 v7, p1

    .local v7, "arr$":[Landroid/os/Parcelable;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_3

    aget-object v15, v7, v12

    .local v15, "p":Landroid/os/Parcelable;
    move-object/from16 v16, v15

    .line 612
    check-cast v16, Landroid/net/Uri;

    .line 613
    .local v16, "uri":Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    if-eqz v11, :cond_2

    .line 615
    const/4 v11, 0x0

    .line 616
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 618
    :cond_2
    const/16 v1, 0x2c

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 623
    .end local v15    # "p":Landroid/os/Parcelable;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v11, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 624
    :cond_4
    const/4 v8, 0x0

    .line 625
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/market2345/messages/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/market2345/messages/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 631
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 632
    const/4 v9, 0x0

    goto :goto_0

    .line 635
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/Contact;>;"
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 639
    new-instance v10, Lcom/market2345/messages/data/Contact;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v10, v1, v2, v3}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V

    .line 641
    .local v10, "entry":Lcom/market2345/messages/data/Contact;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/market2345/messages/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/market2345/messages/data/Contact;Landroid/database/Cursor;)V

    .line 642
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v17, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    # getter for: Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/market2345/messages/data/Contact;->access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/market2345/messages/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/market2345/messages/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 649
    .end local v10    # "entry":Lcom/market2345/messages/data/Contact;
    .end local v17    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getMe(Z)Lcom/market2345/messages/data/Contact;
    .locals 2
    .param p1, "canBlock"    # Z

    .prologue
    .line 528
    const-string v0, "Self_Item_Key"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method invalidate()V
    .locals 5

    .prologue
    .line 1129
    monitor-enter p0

    .line 1130
    :try_start_0
    iget-object v4, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1131
    .local v0, "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/Contact;

    .line 1132
    .local v1, "c":Lcom/market2345/messages/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1133
    const/4 v4, 0x1

    :try_start_1
    # setter for: Lcom/market2345/messages/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/market2345/messages/data/Contact;->access$502(Lcom/market2345/messages/data/Contact;Z)Z

    .line 1134
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1137
    .end local v0    # "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/messages/data/Contact;>;"
    .end local v1    # "c":Lcom/market2345/messages/data/Contact;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1138
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache;->mTaskQueue:Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method
