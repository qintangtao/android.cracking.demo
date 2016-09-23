.class public Lcom/market2345/messages/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/market2345/messages/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static blockingGetByUris([Landroid/os/Parcelable;)Lcom/market2345/messages/data/ContactList;
    .locals 10
    .param p0, "uris"    # [Landroid/os/Parcelable;

    .prologue
    .line 49
    new-instance v5, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v5}, Lcom/market2345/messages/data/ContactList;-><init>()V

    .line 50
    .local v5, "list":Lcom/market2345/messages/data/ContactList;
    if-eqz p0, :cond_2

    array-length v8, p0

    if-lez v8, :cond_2

    .line 51
    move-object v0, p0

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .local v6, "p":Landroid/os/Parcelable;
    move-object v7, v6

    .line 52
    check-cast v7, Landroid/net/Uri;

    .line 53
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, "tel"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/market2345/messages/data/Contact;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v1

    .line 55
    .local v1, "contact":Lcom/market2345/messages/data/Contact;
    invoke-virtual {v5, v1}, Lcom/market2345/messages/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v1    # "contact":Lcom/market2345/messages/data/Contact;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v6    # "p":Landroid/os/Parcelable;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {p0}, Lcom/market2345/messages/data/Contact;->getByPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/Contact;>;"
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v5, v2}, Lcom/market2345/messages/data/ContactList;->addAll(Ljava/util/Collection;)Z

    .line 63
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v2    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/Contact;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-object v5
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/market2345/messages/data/ContactList;
    .locals 6
    .param p0, "spaceSepIds"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z

    .prologue
    .line 71
    new-instance v3, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v3}, Lcom/market2345/messages/data/ContactList;-><init>()V

    .line 72
    .local v3, "list":Lcom/market2345/messages/data/ContactList;
    invoke-static {p0}, Lcom/market2345/messages/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/RecipientIdCache$Entry;

    .line 73
    .local v1, "entry":Lcom/market2345/messages/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/market2345/messages/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    iget-object v4, v1, Lcom/market2345/messages/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/market2345/messages/data/Contact;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v0

    .line 75
    .local v0, "contact":Lcom/market2345/messages/data/Contact;
    iget-wide v4, v1, Lcom/market2345/messages/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/market2345/messages/data/Contact;->setRecipientId(J)V

    .line 76
    invoke-virtual {v3, v0}, Lcom/market2345/messages/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "contact":Lcom/market2345/messages/data/Contact;
    .end local v1    # "entry":Lcom/market2345/messages/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/Iterable;Z)Lcom/market2345/messages/data/ContactList;
    .locals 4
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/market2345/messages/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "numbers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v1}, Lcom/market2345/messages/data/ContactList;-><init>()V

    .line 17
    .local v1, "list":Lcom/market2345/messages/data/ContactList;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19
    invoke-static {v2, p1}, Lcom/market2345/messages/data/Contact;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/market2345/messages/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/ContactList;
    .locals 7
    .param p0, "semiSepNumbers"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z
    .param p2, "replaceNumber"    # Z

    .prologue
    .line 28
    new-instance v4, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v4}, Lcom/market2345/messages/data/ContactList;-><init>()V

    .line 29
    .local v4, "list":Lcom/market2345/messages/data/ContactList;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 30
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 31
    invoke-static {v5, p1}, Lcom/market2345/messages/data/Contact;->get(Ljava/lang/String;Z)Lcom/market2345/messages/data/Contact;

    move-result-object v1

    .line 32
    .local v1, "contact":Lcom/market2345/messages/data/Contact;
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {v1, v5}, Lcom/market2345/messages/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {v4, v1}, Lcom/market2345/messages/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v1    # "contact":Lcom/market2345/messages/data/Contact;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v5    # "number":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "Messages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ContactList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method


# virtual methods
.method public containsEmail()Z
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    .line 114
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 118
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 153
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/market2345/messages/data/ContactList;

    move-object v4, v0

    .line 156
    .local v4, "other":Lcom/market2345/messages/data/ContactList;
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 169
    .end local v4    # "other":Lcom/market2345/messages/data/ContactList;
    :goto_0
    return v5

    .line 161
    .restart local v4    # "other":Lcom/market2345/messages/data/ContactList;
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/Contact;

    .line 162
    .local v1, "c":Lcom/market2345/messages/data/Contact;
    invoke-virtual {v4, v1}, Lcom/market2345/messages/data/ContactList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 167
    .end local v1    # "c":Lcom/market2345/messages/data/Contact;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/market2345/messages/data/ContactList;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 92
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    .line 94
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 95
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 96
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formatNamesAndNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 101
    .local v4, "nans":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 102
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    .line 103
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 104
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 105
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .param p1, "scrubForMmsAddress"    # Z

    .prologue
    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    .line 129
    .local v0, "c":Lcom/market2345/messages/data/Contact;
    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "number":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 143
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "c":Lcom/market2345/messages/data/Contact;
    .end local v2    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getPresenceResId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/Contact;

    invoke-virtual {v0}, Lcom/market2345/messages/data/Contact;->getPresenceResId()I

    move-result v0

    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/market2345/messages/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
