.class public Lcom/phonemanager2345/model/ContactsAllForJson;
.super Ljava/lang/Object;
.source "ContactsAllForJson.java"


# instance fields
.field public accounts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyAccount;",
            ">;"
        }
    .end annotation
.end field

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345;",
            ">;"
        }
    .end annotation
.end field

.field public groups:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
