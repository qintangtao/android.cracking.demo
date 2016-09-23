.class public Lcom/market2345/messages/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/Contact$ContactsCache;,
        Lcom/market2345/messages/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static final CONTACT_METHOD_ID_UNKNOWN:I = -0x1

.field public static final CONTACT_METHOD_TYPE_EMAIL:I = 0x2

.field public static final CONTACT_METHOD_TYPE_PHONE:I = 0x1

.field public static final CONTACT_METHOD_TYPE_SELF:I = 0x3

.field public static final CONTACT_METHOD_TYPE_UNKNOWN:I = 0x0

.field public static final CONTENT_SCHEME:Ljava/lang/String; = "content"

.field private static final SELF_ITEM_KEY:Ljava/lang/String; = "Self_Item_Key"

.field private static final TAG:Ljava/lang/String; = "Contact"

.field public static final TEL_SCHEME:Ljava/lang/String; = "tel"

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/market2345/messages/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

.field private static final sPresenceObserver:Landroid/database/ContentObserver;


# instance fields
.field private mAvatar:Landroid/graphics/drawable/BitmapDrawable;

.field private mAvatarData:[B

.field private mContactMethodId:J

.field private mContactMethodType:I

.field private mIsMe:Z

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberE164:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J

.field private mSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/market2345/messages/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/market2345/messages/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/market2345/messages/data/Contact;->sPresenceObserver:Landroid/database/ContentObserver;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/market2345/messages/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/market2345/messages/data/Contact$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/market2345/messages/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/market2345/messages/data/Contact$1;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/market2345/messages/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isMe"    # Z

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "Self_Item_Key"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/market2345/messages/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-boolean p1, p0, Lcom/market2345/messages/data/Contact;->mIsMe:Z

    .line 105
    return-void
.end method

.method synthetic constructor <init>(ZLcom/market2345/messages/data/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/market2345/messages/data/Contact$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/Contact;-><init>(Z)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/market2345/messages/data/Contact;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/market2345/messages/data/Contact;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/market2345/messages/data/Contact;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/market2345/messages/data/Contact;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/market2345/messages/data/Contact;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget v0, p0, Lcom/market2345/messages/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/market2345/messages/data/Contact;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/market2345/messages/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/market2345/messages/data/Contact;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/market2345/messages/data/Contact;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/market2345/messages/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/market2345/messages/data/Contact;)[B
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic access$1702(Lcom/market2345/messages/data/Contact;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # [B

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method static synthetic access$1800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/market2345/messages/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/market2345/messages/data/Contact;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/market2345/messages/data/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/market2345/messages/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$2200()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/market2345/messages/data/Contact;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mIsMe:Z

    return v0
.end method

.method static synthetic access$400(Lcom/market2345/messages/data/Contact;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/market2345/messages/data/Contact;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/market2345/messages/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/messages/data/Contact;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$502(Lcom/market2345/messages/data/Contact;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/market2345/messages/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$800(Lcom/market2345/messages/data/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/market2345/messages/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/market2345/messages/data/Contact;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;

    .prologue
    .line 32
    iget v0, p0, Lcom/market2345/messages/data/Contact;->mContactMethodType:I

    return v0
.end method

.method static synthetic access$902(Lcom/market2345/messages/data/Contact;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/messages/data/Contact;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/market2345/messages/data/Contact;->mContactMethodType:I

    return p1
.end method

.method public static addListener(Lcom/market2345/messages/data/Contact$UpdateListener;)V
    .locals 2
    .param p0, "l"    # Lcom/market2345/messages/data/Contact$UpdateListener;

    .prologue
    .line 291
    sget-object v1, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact$ContactsCache;->dump()V

    .line 366
    return-void
.end method

.method public static dumpListeners()V
    .locals 8

    .prologue
    .line 303
    sget-object v5, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v5

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "i":I
    :try_start_0
    const-string v4, "Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Contact] dumpListeners; size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v4, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/Contact$UpdateListener;

    .line 307
    .local v3, "listener":Lcom/market2345/messages/data/Contact$UpdateListener;
    const-string v4, "Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :try_start_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .line 308
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 309
    .end local v3    # "listener":Lcom/market2345/messages/data/Contact$UpdateListener;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    return-void

    .line 309
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "i":I
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberE164"    # Ljava/lang/String;

    .prologue
    .line 205
    move-object v0, p1

    .line 206
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/messages/data/TelephonyInterface$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z

    .prologue
    .line 153
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    invoke-virtual {v0, p0, p1}, Lcom/market2345/messages/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public static getByPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 1
    .param p0, "uris"    # [Landroid/os/Parcelable;
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
    .line 165
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    invoke-virtual {v0, p0}, Lcom/market2345/messages/data/Contact$ContactsCache;->getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMe(Z)Lcom/market2345/messages/data/Contact;
    .locals 1
    .param p0, "canBlock"    # Z

    .prologue
    .line 157
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    invoke-virtual {v0, p0}, Lcom/market2345/messages/data/Contact$ContactsCache;->getMe(Z)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    new-instance v0, Lcom/market2345/messages/data/Contact$ContactsCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/messages/data/Contact$ContactsCache;-><init>(Landroid/content/Context;Lcom/market2345/messages/data/Contact$1;)V

    sput-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    .line 352
    invoke-static {p0}, Lcom/market2345/messages/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 362
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    .line 109
    iput-object p2, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 111
    iput-boolean v2, p0, Lcom/market2345/messages/data/Contact;->mNumberIsModified:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J

    .line 114
    iput v2, p0, Lcom/market2345/messages/data/Contact;->mPresenceResId:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mIsStale:Z

    .line 116
    iput-boolean v2, p0, Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z

    .line 117
    return-void
.end method

.method public static invalidateCache()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "invalidateCache"

    invoke-static {v0}, Lcom/market2345/messages/data/Contact;->log(Ljava/lang/String;)V

    .line 180
    :cond_0
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact$ContactsCache;->invalidate()V

    .line 181
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1175
    const-string v0, "Contact"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void
.end method

.method public static varargs logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "format"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x7

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 131
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 133
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    array-length v6, v4

    if-le v6, v5, :cond_1

    .line 141
    .local v5, "stop":I
    :goto_0
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 142
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v6, v1, 0x1

    if-eq v6, v5, :cond_0

    .line 145
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    .end local v1    # "i":I
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v5    # "stop":I
    :cond_1
    array-length v5, v4

    goto :goto_0

    .line 149
    .restart local v1    # "i":I
    .restart local v5    # "stop":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/messages/data/Contact;->mNumberE164:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/market2345/messages/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public static removeListener(Lcom/market2345/messages/data/Contact$UpdateListener;)V
    .locals 2
    .param p0, "l"    # Lcom/market2345/messages/data/Contact$UpdateListener;

    .prologue
    .line 297
    sget-object v1, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 298
    :try_start_0
    sget-object v0, Lcom/market2345/messages/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultValue"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mAvatarData:[B

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mAvatarData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/market2345/messages/data/Contact;->mAvatarData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 346
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/market2345/messages/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p2    # "defaultValue":Landroid/graphics/drawable/Drawable;
    :cond_1
    monitor-exit p0

    return-object p2

    .line 340
    .restart local p2    # "defaultValue":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getContactMethodId()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    return-wide v0
.end method

.method public getContactMethodType()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/market2345/messages/data/Contact;->mContactMethodType:I

    return v0
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPhoneUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/market2345/messages/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 335
    :goto_0
    monitor-exit p0

    return-object v1

    .line 332
    :cond_0
    :try_start_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 333
    .local v0, "ub":Landroid/net/Uri$Builder;
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 334
    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 329
    .end local v0    # "ub":Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/market2345/messages/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPresenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSendToVoicemail()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/market2345/messages/data/TelephonyInterface$Mms;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mIsMe:Z

    return v0
.end method

.method public isNumberModified()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized reload()V
    .locals 3

    .prologue
    .line 219
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mIsStale:Z

    .line 220
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromCache()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/market2345/messages/data/Contact;->sContactCache:Lcom/market2345/messages/data/Contact$ContactsCache;

    # invokes: Lcom/market2345/messages/data/Contact$ContactsCache;->remove(Lcom/market2345/messages/data/Contact;)V
    invoke-static {v0, p0}, Lcom/market2345/messages/data/Contact$ContactsCache;->access$100(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V

    .line 162
    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/market2345/messages/data/Contact;->mNumberIsModified:Z

    .line 248
    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/market2345/messages/data/TelephonyInterface$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/market2345/messages/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/market2345/messages/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    const-string v1, "{ number=%s, name=%s, nameAndNumber=%s, label=%s, person_id=%d, hash=%d method_id=%d }"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNumber:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mName:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNameAndNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/market2345/messages/data/Contact;->mLabel:Ljava/lang/String;

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/market2345/messages/data/Contact;->mPersonId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/market2345/messages/data/Contact;->mContactMethodId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1

    :cond_2
    const-string v0, "null"

    goto :goto_2

    :cond_3
    const-string v0, "null"

    goto :goto_3
.end method
