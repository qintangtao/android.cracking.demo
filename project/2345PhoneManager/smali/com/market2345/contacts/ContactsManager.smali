.class public interface abstract Lcom/market2345/contacts/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# virtual methods
.method public abstract addContact(Lcom/market2345/contacts/modle/People2345;)I
.end method

.method public abstract deleteContact(Lcom/market2345/contacts/modle/People2345;)I
.end method

.method public abstract getAccounts()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContacts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContactsCount()I
.end method

.method public abstract getGroups()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract groupOperation(Lcom/market2345/contacts/modle/People2345$MyGroup;)I
.end method

.method public abstract openDisplayPhoto(J)Lcom/market2345/contacts/modle/HeadIcon;
.end method

.method public abstract searchContact(I)Lcom/market2345/contacts/modle/People2345;
.end method

.method public abstract searchContactNameByPersionId(I)Ljava/lang/String;
.end method

.method public abstract searchContactNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateContact(Lcom/market2345/contacts/modle/People2345;)I
.end method
