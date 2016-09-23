.class Lcom/market2345/contacts/ContactsManagerImpl;
.super Ljava/lang/Object;
.source "ContactsManagerImpl.java"

# interfaces
.implements Lcom/market2345/contacts/ContactsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/contacts/ContactsManagerImpl$1;,
        Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;
    }
.end annotation


# instance fields
.field private allAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/contacts/modle/People2345$MyAccount;",
            ">;"
        }
    .end annotation
.end field

.field private allGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/contacts/modle/People2345$MyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private contactsCount:I

.field private currentAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/contacts/modle/People2345$MyAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private people:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345;",
            ">;"
        }
    .end annotation
.end field

.field private peopleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/contacts/modle/People2345;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->people:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->currentAccounts:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->contactsCount:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/contacts/ContactsManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/contacts/ContactsManagerImpl$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/market2345/contacts/ContactsManagerImpl;-><init>()V

    return-void
.end method

.method private deleteContact(Lcom/market2345/contacts/modle/People2345;Ljava/lang/String;)I
    .locals 14
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 844
    const/4 v10, -0x1

    .line 845
    .local v10, "id":I
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const-string v3, "lookup=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v13, p1, Lcom/market2345/contacts/modle/People2345;->lookUp:Ljava/lang/String;

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 850
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v11, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 856
    .local v6, "ID":J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 861
    .local v12, "results":[Landroid/content/ContentProviderResult;
    long-to-int v10, v6

    .line 868
    .end local v12    # "results":[Landroid/content/ContentProviderResult;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 871
    .end local v6    # "ID":J
    :cond_1
    return v10

    .line 864
    .restart local v6    # "ID":J
    :catch_0
    move-exception v9

    .line 866
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I
    .locals 11
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    .line 933
    const/4 v1, -0x1

    .line 934
    .local v1, "id":I
    iget-object v6, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 935
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "deleted"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 940
    .local v2, "operation1":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :try_start_0
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 944
    .local v5, "results":[Landroid/content/ContentProviderResult;
    iget-object v6, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 951
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :goto_0
    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAllContacts()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 509
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->people:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 510
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 511
    invoke-direct {p0}, Lcom/market2345/contacts/ContactsManagerImpl;->initGroups()V

    .line 512
    invoke-direct {p0, v4}, Lcom/market2345/contacts/ContactsManagerImpl;->initAccounts(Z)V

    .line 513
    const/16 v0, 0x13

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const-string v0, "data1"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data5"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data6"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "data8"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data9"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "data11"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "data12"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "data13"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "data15"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "lookup"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 515
    .local v2, "detailsProjection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mimetype"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 516
    .local v6, "dataCursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 520
    .local v9, "mp":Lcom/market2345/contacts/modle/People2345;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    new-instance v9, Lcom/market2345/contacts/modle/People2345;

    .end local v9    # "mp":Lcom/market2345/contacts/modle/People2345;
    invoke-direct {v9}, Lcom/market2345/contacts/modle/People2345;-><init>()V

    .line 523
    .restart local v9    # "mp":Lcom/market2345/contacts/modle/People2345;
    iput-object v7, v9, Lcom/market2345/contacts/modle/People2345;->lookUp:Ljava/lang/String;

    .line 524
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :goto_1
    invoke-direct {p0, v6, v9}, Lcom/market2345/contacts/ContactsManagerImpl;->writeValueToPeople(Landroid/database/Cursor;Lcom/market2345/contacts/modle/People2345;)V

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mp":Lcom/market2345/contacts/modle/People2345;
    check-cast v9, Lcom/market2345/contacts/modle/People2345;

    .restart local v9    # "mp":Lcom/market2345/contacts/modle/People2345;
    goto :goto_1

    .line 534
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "mp":Lcom/market2345/contacts/modle/People2345;
    :cond_1
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->peopleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    .line 535
    .local v8, "mapValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/contacts/modle/People2345;>;"
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->people:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/market2345/contacts/ContactsManager;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 106
    # getter for: Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->manager:Lcom/market2345/contacts/ContactsManagerImpl;
    invoke-static {}, Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->access$100()Lcom/market2345/contacts/ContactsManagerImpl;

    move-result-object v0

    invoke-direct {v0}, Lcom/market2345/contacts/ContactsManagerImpl;->isNew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    # getter for: Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->manager:Lcom/market2345/contacts/ContactsManagerImpl;
    invoke-static {}, Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->access$100()Lcom/market2345/contacts/ContactsManagerImpl;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/market2345/contacts/ContactsManagerImpl;->initInstance(Landroid/content/Context;)V

    .line 110
    :cond_0
    # getter for: Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->manager:Lcom/market2345/contacts/ContactsManagerImpl;
    invoke-static {}, Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->access$100()Lcom/market2345/contacts/ContactsManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .param p1, "data"    # Lcom/market2345/contacts/modle/People2345$BaseData;
    .param p2, "rawContactId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 332
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    const-string v1, "add"

    iget-object v2, p1, Lcom/market2345/contacts/modle/People2345$BaseData;->doType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "delete"

    iget-object v2, p1, Lcom/market2345/contacts/modle/People2345$BaseData;->doType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id=?"

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p1, Lcom/market2345/contacts/modle/People2345$BaseData;->rowId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_3
    const-string v1, "update"

    iget-object v2, p1, Lcom/market2345/contacts/modle/People2345$BaseData;->doType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id=?"

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p1, Lcom/market2345/contacts/modle/People2345$BaseData;->rowId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private initAccounts(Z)V
    .locals 11
    .param p1, "isParse"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_type"

    aput-object v0, v2, v8

    const-string v0, "account_name"

    aput-object v0, v2, v9

    const-string v0, "contact_id"

    aput-object v0, v2, v10

    .line 306
    .local v2, "accounts":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "deleted=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 307
    .local v7, "accountsCur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->contactsCount:I

    .line 308
    if-eqz p1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 311
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->currentAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 312
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v6, Lcom/market2345/contacts/modle/People2345$MyAccount;

    invoke-direct {v6}, Lcom/market2345/contacts/modle/People2345$MyAccount;-><init>()V

    .line 315
    .local v6, "account":Lcom/market2345/contacts/modle/People2345$MyAccount;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/market2345/contacts/modle/People2345$MyAccount;->type:Ljava/lang/String;

    .line 316
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/market2345/contacts/modle/People2345$MyAccount;->typeId:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->currentAccounts:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/market2345/contacts/modle/People2345$MyAccount;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->currentAccounts:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/market2345/contacts/modle/People2345$MyAccount;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    .end local v6    # "account":Lcom/market2345/contacts/modle/People2345$MyAccount;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 325
    return-void
.end method

.method private initGroups()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 290
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 291
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v9

    .line 292
    .local v2, "groups":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "deleted=?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 293
    .local v7, "groupsCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v6, Lcom/market2345/contacts/modle/People2345$MyGroup;

    invoke-direct {v6}, Lcom/market2345/contacts/modle/People2345$MyGroup;-><init>()V

    .line 296
    .local v6, "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    .line 297
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v6    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 301
    return-void
.end method

.method private initInstance(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    .line 94
    return-void
.end method

.method private insertContact(Lcom/market2345/contacts/modle/People2345;)I
    .locals 23
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;

    .prologue
    .line 696
    const/4 v7, -0x1

    .line 697
    .local v7, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 698
    .local v18, "resolver":Landroid/content/ContentResolver;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v17, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "account_name"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    .line 702
    .local v9, "operation1":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/name"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->displayname:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 708
    .local v10, "operation2":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 711
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyPhone;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 715
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyPhone;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyPhone;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 717
    const-string v21, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyPhone;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 724
    :goto_1
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 725
    .local v11, "operation3":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 721
    .end local v11    # "operation3":Landroid/content/ContentProviderOperation;
    :cond_0
    const-string v20, "data2"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 722
    const-string v21, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyPhone;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 727
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 729
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyEmail;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyEmail;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 733
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyEmail;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyEmail;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyEmail;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyEmail;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomEmailType(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 735
    const-string v21, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyEmail;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyEmail;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 742
    :goto_3
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 743
    .local v12, "operation4":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 739
    .end local v12    # "operation4":Landroid/content/ContentProviderOperation;
    :cond_2
    const-string v20, "data2"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 740
    const-string v21, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyEmail;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyEmail;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 745
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_5

    .line 747
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/im"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyIm;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyIm;->imNum:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 751
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyIm;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyIm;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyIm;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyIm;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomImType(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 753
    const-string v21, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyIm;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyIm;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 761
    :goto_5
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 762
    .local v13, "operation5":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 757
    .end local v13    # "operation5":Landroid/content/ContentProviderOperation;
    :cond_4
    const-string v20, "data2"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 758
    const-string v21, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyIm;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyIm;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5

    .line 764
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_8

    .line 766
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 767
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/market2345/contacts/ContactsManagerImpl;->initGroups()V

    .line 771
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isInLocalGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-result-object v8

    .line 772
    .local v8, "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    if-nez v8, :cond_7

    .line 774
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->insertOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-result-object v8

    .line 776
    :cond_7
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "data1"

    iget-object v0, v8, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 778
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    .line 779
    .restart local v13    # "operation5":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 781
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v8    # "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    .end local v13    # "operation5":Landroid/content/ContentProviderOperation;
    :cond_8
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_a

    .line 783
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyAddress;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->address:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 787
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyAddress;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyAddress;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomAddressType(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 789
    const-string v21, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyAddress;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 796
    :goto_8
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    .line 797
    .local v14, "operation6":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 793
    .end local v14    # "operation6":Landroid/content/ContentProviderOperation;
    :cond_9
    const-string v20, "data2"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 794
    const-string v21, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyAddress;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_8

    .line 799
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 801
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/organization"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->company:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data4"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 806
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomOrganization(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 808
    const-string v21, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->typeId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 815
    :goto_a
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    .line 816
    .local v15, "operation7":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 812
    .end local v15    # "operation7":Landroid/content/ContentProviderOperation;
    :cond_b
    const-string v20, "data2"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 813
    const-string v21, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyOrganization;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_a

    .line 818
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 820
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "raw_contact_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/note"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    const-string v21, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyNote;->info:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 826
    .local v16, "operation8":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v16    # "operation8":Landroid/content/ContentProviderOperation;
    :cond_d
    :try_start_0
    const-string v20, "com.android.contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v19

    .line 833
    .local v19, "results":[Landroid/content/ContentProviderResult;
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 839
    .end local v19    # "results":[Landroid/content/ContentProviderResult;
    :goto_b
    return v7

    .line 835
    :catch_0
    move-exception v5

    .line 837
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private insertOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)Lcom/market2345/contacts/modle/People2345$MyGroup;
    .locals 9
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    .line 913
    :try_start_0
    iget-object v6, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 914
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "title"

    iget-object v8, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 916
    .local v2, "operation1":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 918
    .local v5, "results":[Landroid/content/ContentProviderResult;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 919
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    .line 920
    iget-object v6, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    .end local v1    # "id":I
    .end local v2    # "operation1":Landroid/content/ContentProviderOperation;
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    .end local p1    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :goto_0
    return-object p1

    .line 923
    .restart local p1    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private isCustomAddressType(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "addressType"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 995
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomEmailType(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "emailType"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 990
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomImType(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "imType"    # Ljava/lang/Integer;

    .prologue
    .line 1000
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomOrganization(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "organizationType"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "phoneType"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 985
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isICSABOVE()Z
    .locals 2

    .prologue
    .line 1015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLocalGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)Lcom/market2345/contacts/modle/People2345$MyGroup;
    .locals 5
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    .line 876
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 878
    iget-object v3, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 879
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/contacts/modle/People2345$MyGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/contacts/modle/People2345$MyGroup;

    .line 881
    .local v0, "groupLocal":Lcom/market2345/contacts/modle/People2345$MyGroup;
    iget-object v3, v0, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    .end local v0    # "groupLocal":Lcom/market2345/contacts/modle/People2345$MyGroup;
    .end local v1    # "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/contacts/modle/People2345$MyGroup;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNew()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStringNotNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 980
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private operateGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I
    .locals 4
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    .line 890
    const/4 v0, -0x1

    .line 891
    .local v0, "id":I
    const-string v2, "add"

    iget-object v3, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->doType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    invoke-direct {p0, p1}, Lcom/market2345/contacts/ContactsManagerImpl;->insertOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-result-object v1

    .line 894
    .local v1, "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 905
    .end local v1    # "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :cond_0
    :goto_0
    return v0

    .line 894
    .restart local v1    # "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :cond_1
    iget-object v2, v1, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 896
    .end local v1    # "mg":Lcom/market2345/contacts/modle/People2345$MyGroup;
    :cond_2
    const-string v2, "delete"

    iget-object v3, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->doType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 898
    invoke-direct {p0, p1}, Lcom/market2345/contacts/ContactsManagerImpl;->deleteOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I

    move-result v0

    goto :goto_0

    .line 900
    :cond_3
    const-string v2, "update"

    iget-object v3, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->doType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    invoke-direct {p0, p1}, Lcom/market2345/contacts/ContactsManagerImpl;->updateOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I

    move-result v0

    goto :goto_0
.end method

.method private setHeadId(Landroid/database/Cursor;Lcom/market2345/contacts/modle/People2345;)V
    .locals 1
    .param p1, "dataCursor"    # Landroid/database/Cursor;
    .param p2, "person"    # Lcom/market2345/contacts/modle/People2345;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/market2345/contacts/ContactsManagerImpl;->isICSABOVE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/market2345/contacts/modle/People2345;->headId:Ljava/lang/String;

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/market2345/contacts/modle/People2345;->headId:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateContact(Lcom/market2345/contacts/modle/People2345;Ljava/lang/String;)I
    .locals 24
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v12, -0x1

    .line 356
    .local v12, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 357
    .local v19, "resolver":Landroid/content/ContentResolver;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v15, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 362
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 363
    .local v5, "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v5, :cond_0

    .line 368
    const-string v21, "data3"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 369
    const-string v21, "data2"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 370
    const-string v21, "data5"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 371
    const-string v21, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->displayname:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 372
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v5    # "displayBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 378
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 380
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/market2345/contacts/modle/People2345$MyPhone;

    .line 381
    .local v17, "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 382
    .local v18, "phoneBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v18, :cond_1

    .line 378
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/market2345/contacts/modle/People2345$MyPhone;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 386
    const-string v21, "data1"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->phoneNum:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 387
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isStringNotNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 389
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 391
    const-string v21, "data2"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 402
    :cond_2
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_3
    const-string v21, "data2"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 396
    const-string v21, "data3"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyPhone;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 405
    .end local v11    # "i":I
    .end local v17    # "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    .end local v18    # "phoneBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 407
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_7

    .line 409
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/contacts/modle/People2345$MyEmail;

    .line 410
    .local v7, "email":Lcom/market2345/contacts/modle/People2345$MyEmail;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 411
    .local v8, "emailBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v8, :cond_5

    .line 407
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 413
    :cond_5
    invoke-virtual {v7}, Lcom/market2345/contacts/modle/People2345$MyEmail;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 415
    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    iget-object v0, v7, Lcom/market2345/contacts/modle/People2345$MyEmail;->email:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 417
    const-string v21, "data2"

    iget-object v0, v7, Lcom/market2345/contacts/modle/People2345$MyEmail;->typeId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 420
    :cond_6
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 424
    .end local v7    # "email":Lcom/market2345/contacts/modle/People2345$MyEmail;
    .end local v8    # "emailBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 426
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    .line 428
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyGroup;

    .line 429
    .local v9, "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 430
    .local v10, "groupBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v10, :cond_8

    .line 426
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 432
    :cond_8
    invoke-virtual {v9}, Lcom/market2345/contacts/modle/People2345$MyGroup;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 434
    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    iget-object v0, v9, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    :cond_9
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 441
    .end local v9    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    .end local v10    # "groupBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "i":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 443
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_d

    .line 445
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/contacts/modle/People2345$MyAddress;

    .line 446
    .local v3, "address":Lcom/market2345/contacts/modle/People2345$MyAddress;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 447
    .local v4, "addressBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v4, :cond_b

    .line 443
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 449
    :cond_b
    invoke-virtual {v3}, Lcom/market2345/contacts/modle/People2345$MyAddress;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 451
    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    iget-object v0, v3, Lcom/market2345/contacts/modle/People2345$MyAddress;->address:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 452
    iget-object v0, v3, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->isStringNotNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 454
    const-string v21, "data2"

    iget-object v0, v3, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 458
    :cond_c
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 462
    .end local v3    # "address":Lcom/market2345/contacts/modle/People2345$MyAddress;
    .end local v4    # "addressBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "i":I
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 464
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_10

    .line 466
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    .line 467
    .local v13, "mo":Lcom/market2345/contacts/modle/People2345$MyOrganization;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 468
    .local v16, "organizationBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v16, :cond_e

    .line 464
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 470
    :cond_e
    invoke-virtual {v13}, Lcom/market2345/contacts/modle/People2345$MyOrganization;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 472
    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    iget-object v0, v13, Lcom/market2345/contacts/modle/People2345$MyOrganization;->company:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data4"

    iget-object v0, v13, Lcom/market2345/contacts/modle/People2345$MyOrganization;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data2"

    iget-object v0, v13, Lcom/market2345/contacts/modle/People2345$MyOrganization;->typeId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    :cond_f
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 481
    .end local v11    # "i":I
    .end local v13    # "mo":Lcom/market2345/contacts/modle/People2345$MyOrganization;
    .end local v16    # "organizationBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 483
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/market2345/contacts/ContactsManagerImpl;->getRightBuilder(Lcom/market2345/contacts/modle/People2345$BaseData;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 484
    .local v14, "noteBuilder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_12

    .line 486
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/market2345/contacts/modle/People2345$MyNote;->isNotDelete()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 487
    const-string v21, "mimetype"

    const-string v22, "vnd.android.cursor.item/note"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    const-string v22, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/market2345/contacts/modle/People2345$MyNote;->info:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 488
    :cond_11
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v14    # "noteBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_12
    :try_start_0
    sget-object v21, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 497
    .local v20, "results":[Landroid/content/ContentProviderResult;
    const/4 v12, 0x1

    .line 503
    .end local v20    # "results":[Landroid/content/ContentProviderResult;
    :goto_b
    return v12

    .line 499
    :catch_0
    move-exception v6

    .line 501
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private updateOneGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I
    .locals 11
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    const/4 v10, 0x0

    .line 956
    const/4 v1, -0x1

    .line 957
    .local v1, "id":I
    iget-object v6, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 958
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "title"

    iget-object v8, p1, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 963
    .local v2, "operation1":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :try_start_0
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 967
    .local v5, "results":[Landroid/content/ContentProviderResult;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 974
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :goto_0
    return v1

    .line 969
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeValueToPeople(Landroid/database/Cursor;Lcom/market2345/contacts/modle/People2345;)V
    .locals 13
    .param p1, "dataCursor"    # Landroid/database/Cursor;
    .param p2, "person"    # Lcom/market2345/contacts/modle/People2345;

    .prologue
    .line 541
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 542
    :cond_0
    new-instance v11, Ljava/lang/IllegalAccessError;

    const-string v12, "cursor\u6216\u8005MyPeople\u4e0d\u80fd\u4e3anull"

    invoke-direct {v11, v12}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v11

    .line 543
    :cond_1
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 544
    .local v6, "mimeType":Ljava/lang/String;
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 546
    new-instance v9, Lcom/market2345/contacts/modle/People2345$MyPhone;

    invoke-direct {v9}, Lcom/market2345/contacts/modle/People2345$MyPhone;-><init>()V

    .line 547
    .local v9, "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->rowId:Ljava/lang/String;

    .line 548
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->phoneNum:Ljava/lang/String;

    .line 549
    const-string v11, "data2"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 550
    .local v10, "type":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->typeId:Ljava/lang/String;

    .line 551
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 553
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->type:Ljava/lang/String;

    .line 559
    :goto_0
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    if-nez v11, :cond_2

    .line 561
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    const-string v12, "raw_contact_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    if-nez v11, :cond_2

    .line 563
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    const-string v12, "raw_contact_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/contacts/modle/People2345$MyAccount;

    iput-object v11, p2, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    .line 566
    :cond_2
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v9    # "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    .end local v10    # "type":I
    :cond_3
    :goto_1
    return-void

    .line 557
    .restart local v9    # "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    .restart local v10    # "type":I
    :cond_4
    const-string v11, "data3"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->type:Ljava/lang/String;

    goto :goto_0

    .line 569
    .end local v9    # "phone":Lcom/market2345/contacts/modle/People2345$MyPhone;
    .end local v10    # "type":I
    :cond_5
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 571
    new-instance v2, Lcom/market2345/contacts/modle/People2345$MyEmail;

    invoke-direct {v2}, Lcom/market2345/contacts/modle/People2345$MyEmail;-><init>()V

    .line 572
    .local v2, "email":Lcom/market2345/contacts/modle/People2345$MyEmail;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/market2345/contacts/modle/People2345$MyEmail;->rowId:Ljava/lang/String;

    .line 573
    const-string v11, "data2"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 574
    .restart local v10    # "type":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/market2345/contacts/modle/People2345$MyEmail;->typeId:Ljava/lang/String;

    .line 575
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomEmailType(Ljava/lang/Integer;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 577
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/market2345/contacts/modle/People2345$MyEmail;->type:Ljava/lang/String;

    .line 583
    :goto_2
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/market2345/contacts/modle/People2345$MyEmail;->email:Ljava/lang/String;

    .line 585
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    :cond_6
    const-string v11, "data3"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/market2345/contacts/modle/People2345$MyEmail;->type:Ljava/lang/String;

    goto :goto_2

    .line 587
    .end local v2    # "email":Lcom/market2345/contacts/modle/People2345$MyEmail;
    .end local v10    # "type":I
    :cond_7
    const-string v11, "vnd.android.cursor.item/im"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 589
    new-instance v5, Lcom/market2345/contacts/modle/People2345$MyIm;

    invoke-direct {v5}, Lcom/market2345/contacts/modle/People2345$MyIm;-><init>()V

    .line 590
    .local v5, "im":Lcom/market2345/contacts/modle/People2345$MyIm;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/market2345/contacts/modle/People2345$MyIm;->rowId:Ljava/lang/String;

    .line 591
    const-string v11, "data5"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 592
    .restart local v10    # "type":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/market2345/contacts/modle/People2345$MyIm;->typeId:Ljava/lang/String;

    .line 593
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomImType(Ljava/lang/Integer;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 595
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/market2345/contacts/modle/People2345$MyIm;->type:Ljava/lang/String;

    .line 601
    :goto_3
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/market2345/contacts/modle/People2345$MyIm;->imNum:Ljava/lang/String;

    .line 602
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 599
    :cond_8
    const-string v11, "data3"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/market2345/contacts/modle/People2345$MyIm;->type:Ljava/lang/String;

    goto :goto_3

    .line 604
    .end local v5    # "im":Lcom/market2345/contacts/modle/People2345$MyIm;
    .end local v10    # "type":I
    :cond_9
    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 606
    new-instance v0, Lcom/market2345/contacts/modle/People2345$MyAddress;

    invoke-direct {v0}, Lcom/market2345/contacts/modle/People2345$MyAddress;-><init>()V

    .line 607
    .local v0, "address":Lcom/market2345/contacts/modle/People2345$MyAddress;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->rowId:Ljava/lang/String;

    .line 608
    const-string v11, "data2"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 609
    .restart local v10    # "type":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->typeId:Ljava/lang/String;

    .line 610
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomAddressType(Ljava/lang/Integer;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 612
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->type:Ljava/lang/String;

    .line 618
    :goto_4
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->address:Ljava/lang/String;

    .line 619
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 616
    :cond_a
    const-string v11, "data3"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/market2345/contacts/modle/People2345$MyAddress;->type:Ljava/lang/String;

    goto :goto_4

    .line 621
    .end local v0    # "address":Lcom/market2345/contacts/modle/People2345$MyAddress;
    .end local v10    # "type":I
    :cond_b
    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 623
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 624
    .local v4, "id":I
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 626
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/contacts/modle/People2345$MyGroup;

    invoke-virtual {v11}, Lcom/market2345/contacts/modle/People2345$MyGroup;->copy()Lcom/market2345/contacts/modle/People2345$MyGroup;

    move-result-object v3

    .line 627
    .local v3, "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/market2345/contacts/modle/People2345$MyGroup;->rowId:Ljava/lang/String;

    .line 628
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 632
    .end local v3    # "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    .end local v4    # "id":I
    :cond_c
    const-string v11, "vnd.android.cursor.item/organization"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 634
    new-instance v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    invoke-direct {v7}, Lcom/market2345/contacts/modle/People2345$MyOrganization;-><init>()V

    .line 635
    .local v7, "mo":Lcom/market2345/contacts/modle/People2345$MyOrganization;
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->rowId:Ljava/lang/String;

    .line 636
    const-string v11, "data2"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 637
    .restart local v10    # "type":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->typeId:Ljava/lang/String;

    .line 638
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/market2345/contacts/ContactsManagerImpl;->isCustomOrganization(Ljava/lang/Integer;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 640
    iget-object v11, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->type:Ljava/lang/String;

    .line 646
    :goto_5
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->company:Ljava/lang/String;

    .line 648
    const-string v11, "data4"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->title:Ljava/lang/String;

    .line 650
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 644
    :cond_d
    const-string v11, "data3"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/market2345/contacts/modle/People2345$MyOrganization;->type:Ljava/lang/String;

    goto :goto_5

    .line 652
    .end local v7    # "mo":Lcom/market2345/contacts/modle/People2345$MyOrganization;
    .end local v10    # "type":I
    :cond_e
    const-string v11, "vnd.android.cursor.item/note"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 654
    new-instance v8, Lcom/market2345/contacts/modle/People2345$MyNote;

    invoke-direct {v8}, Lcom/market2345/contacts/modle/People2345$MyNote;-><init>()V

    .line 655
    .local v8, "note":Lcom/market2345/contacts/modle/People2345$MyNote;
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/market2345/contacts/modle/People2345$MyNote;->info:Ljava/lang/String;

    .line 656
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/market2345/contacts/modle/People2345$MyNote;->rowId:Ljava/lang/String;

    .line 657
    iput-object v8, p2, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    goto/16 :goto_1

    .line 659
    .end local v8    # "note":Lcom/market2345/contacts/modle/People2345$MyNote;
    :cond_f
    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 661
    const-string v11, "data1"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "currentName":Ljava/lang/String;
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    if-nez v11, :cond_10

    .line 664
    new-instance v11, Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    invoke-direct {v11}, Lcom/market2345/contacts/modle/People2345$MyDisplayname;-><init>()V

    iput-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    .line 666
    :cond_10
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    iget-object v11, v11, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->displayname:Ljava/lang/String;

    if-eqz v11, :cond_11

    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    iget-object v11, v11, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->displayname:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 668
    :cond_11
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    iput-object v1, v11, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->displayname:Ljava/lang/String;

    .line 669
    iget-object v11, p2, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    const-string v12, "_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/market2345/contacts/modle/People2345$MyDisplayname;->rowId:Ljava/lang/String;

    goto/16 :goto_1

    .line 672
    .end local v1    # "currentName":Ljava/lang/String;
    :cond_12
    const-string v11, "vnd.android.cursor.item/photo"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/market2345/contacts/ContactsManagerImpl;->setHeadId(Landroid/database/Cursor;Lcom/market2345/contacts/modle/People2345;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addContact(Lcom/market2345/contacts/modle/People2345;)I
    .locals 1
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/market2345/contacts/ContactsManagerImpl;->insertContact(Lcom/market2345/contacts/modle/People2345;)I

    move-result v0

    return v0
.end method

.method public deleteContact(Lcom/market2345/contacts/modle/People2345;)I
    .locals 1
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/contacts/ContactsManagerImpl;->deleteContact(Lcom/market2345/contacts/modle/People2345;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAccounts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/market2345/contacts/ContactsManagerImpl;->initAccounts(Z)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->currentAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/market2345/contacts/ContactsManagerImpl;->getAllContacts()V

    .line 147
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->people:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContactsCount()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/contacts/ContactsManagerImpl;->initAccounts(Z)V

    .line 206
    iget v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->contactsCount:I

    return v0
.end method

.method public getGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/market2345/contacts/ContactsManagerImpl;->initGroups()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->allGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public groupOperation(Lcom/market2345/contacts/modle/People2345$MyGroup;)I
    .locals 1
    .param p1, "group"    # Lcom/market2345/contacts/modle/People2345$MyGroup;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, -0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/contacts/ContactsManagerImpl;->operateGroup(Lcom/market2345/contacts/modle/People2345$MyGroup;)I

    move-result v0

    goto :goto_0
.end method

.method public openDisplayPhoto(J)Lcom/market2345/contacts/modle/HeadIcon;
    .locals 13
    .param p1, "photoFileId"    # J

    .prologue
    .line 253
    new-instance v11, Lcom/market2345/contacts/modle/HeadIcon;

    invoke-direct {v11}, Lcom/market2345/contacts/modle/HeadIcon;-><init>()V

    .line 254
    .local v11, "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    invoke-static {}, Lcom/market2345/contacts/ContactsManagerImpl;->isICSABOVE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 259
    .local v8, "displayPhotoUri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    .line 260
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/market2345/contacts/modle/HeadIcon;->headIconStreamSize:J

    .line 261
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, v11, Lcom/market2345/contacts/modle/HeadIcon;->headIconStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v8    # "displayPhotoUri":Landroid/net/Uri;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v11    # "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    :goto_0
    return-object v11

    .line 264
    .restart local v8    # "displayPhotoUri":Landroid/net/Uri;
    .restart local v11    # "headIcon":Lcom/market2345/contacts/modle/HeadIcon;
    :catch_0
    move-exception v9

    .line 266
    .local v9, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_0

    .line 271
    .end local v8    # "displayPhotoUri":Landroid/net/Uri;
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data15"

    aput-object v1, v2, v0

    .line 272
    .local v2, "detailsProjection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v5, "mimetype"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 273
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 278
    .local v6, "bytes":[B
    array-length v0, v6

    int-to-long v0, v0

    iput-wide v0, v11, Lcom/market2345/contacts/modle/HeadIcon;->headIconStreamSize:J

    .line 279
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, v11, Lcom/market2345/contacts/modle/HeadIcon;->headIconStream:Ljava/io/InputStream;

    goto :goto_0

    .line 283
    .end local v6    # "bytes":[B
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public searchContact(I)Lcom/market2345/contacts/modle/People2345;
    .locals 1
    .param p1, "personId"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchContactNameByPersionId(I)Ljava/lang/String;
    .locals 8
    .param p1, "personId"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    .line 168
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    .local v1, "mContacts":Landroid/net/Uri;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "mCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    return-object v7
.end method

.method public searchContactNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    const/4 v7, 0x0

    .line 187
    .local v7, "name":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/market2345/contacts/ContactsManagerImpl;->resolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    return-object v7
.end method

.method public updateContact(Lcom/market2345/contacts/modle/People2345;)I
    .locals 1
    .param p1, "p"    # Lcom/market2345/contacts/modle/People2345;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/contacts/ContactsManagerImpl;->updateContact(Lcom/market2345/contacts/modle/People2345;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
