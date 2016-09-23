.class public Lcom/market2345/contacts/modle/People2345;
.super Ljava/lang/Object;
.source "People2345.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/contacts/modle/People2345$MyAccount;,
        Lcom/market2345/contacts/modle/People2345$MyPhone;,
        Lcom/market2345/contacts/modle/People2345$MyOrganization;,
        Lcom/market2345/contacts/modle/People2345$MyDisplayname;,
        Lcom/market2345/contacts/modle/People2345$MyNote;,
        Lcom/market2345/contacts/modle/People2345$MyIm;,
        Lcom/market2345/contacts/modle/People2345$MyGroup;,
        Lcom/market2345/contacts/modle/People2345$MyEmail;,
        Lcom/market2345/contacts/modle/People2345$MyAddress;,
        Lcom/market2345/contacts/modle/People2345$BaseData;
    }
.end annotation


# static fields
.field public static final ACCOUNTKEY:Ljava/lang/String; = "account"

.field public static final HEADKEY:Ljava/lang/String; = "headid"

.field public static final IDKEY:Ljava/lang/String; = "id"

.field public static final LOOKUPKEY:Ljava/lang/String; = "lookup"

.field public static final NAMEKEY:Ljava/lang/String; = "name"

.field public static final NOTEKEY:Ljava/lang/String; = "note"

.field public static final PHONENUMBERKEY:Ljava/lang/String; = "number"

.field public static final TYPEKEY:Ljava/lang/String; = "type"

.field public static final VALUEKEY:Ljava/lang/String; = "value"


# instance fields
.field public account:Lcom/market2345/contacts/modle/People2345$MyAccount;

.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyAddress;",
            ">;"
        }
    .end annotation
.end field

.field public displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

.field public emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyEmail;",
            ">;"
        }
    .end annotation
.end field

.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public headId:Ljava/lang/String;

.field public ims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyIm;",
            ">;"
        }
    .end annotation
.end field

.field public lookUp:Ljava/lang/String;

.field public note:Lcom/market2345/contacts/modle/People2345$MyNote;

.field public organizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyOrganization;",
            ">;"
        }
    .end annotation
.end field

.field public phoneNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/contacts/modle/People2345$MyPhone;",
            ">;"
        }
    .end annotation
.end field

.field public rawId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    invoke-direct {v0}, Lcom/market2345/contacts/modle/People2345$MyDisplayname;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->groups:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method public toJSON()Lcom/google/gson/JsonObject;
    .locals 11

    .prologue
    .line 68
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 70
    .local v8, "rootObj":Lcom/google/gson/JsonObject;
    const-string v9, "name"

    iget-object v10, p0, Lcom/market2345/contacts/modle/People2345;->displayname:Lcom/market2345/contacts/modle/People2345$MyDisplayname;

    invoke-virtual {v2, v10}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 71
    const-string v9, "lookup"

    iget-object v10, p0, Lcom/market2345/contacts/modle/People2345;->lookUp:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v9, "id"

    iget-object v10, p0, Lcom/market2345/contacts/modle/People2345;->rawId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v10, "account"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    if-nez v9, :cond_0

    const-string v9, ""

    :goto_0
    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v9, "note"

    iget-object v10, p0, Lcom/market2345/contacts/modle/People2345;->note:Lcom/market2345/contacts/modle/People2345$MyNote;

    invoke-virtual {v2, v10}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 75
    const-string v9, "headid"

    iget-object v10, p0, Lcom/market2345/contacts/modle/People2345;->headId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v7, Lcom/google/gson/JsonArray;

    invoke-direct {v7}, Lcom/google/gson/JsonArray;-><init>()V

    .line 78
    .local v7, "phoneArray":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 79
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 80
    .local v5, "obj":Lcom/google/gson/JsonObject;
    const-string v10, "type"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyPhone;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->type:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v10, "value"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyPhone;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->phoneNum:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v10, "id"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->phoneNums:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyPhone;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyPhone;->rowId:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v3    # "i":I
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v7    # "phoneArray":Lcom/google/gson/JsonArray;
    :cond_0
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->account:Lcom/market2345/contacts/modle/People2345$MyAccount;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyAccount;->type:Ljava/lang/String;

    goto :goto_0

    .line 85
    .restart local v3    # "i":I
    .restart local v7    # "phoneArray":Lcom/google/gson/JsonArray;
    :cond_1
    const-string v9, "number"

    invoke-virtual {v8, v9, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 87
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 88
    .local v1, "emailsArray":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 89
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 90
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    const-string v10, "type"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyEmail;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyEmail;->type:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v10, "value"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyEmail;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyEmail;->email:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v10, "id"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyEmail;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyEmail;->rowId:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    :cond_2
    const-string v9, "email"

    invoke-virtual {v8, v9, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 97
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 98
    .local v4, "imArray":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 100
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 101
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    const-string v10, "type"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyIm;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyIm;->type:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v10, "value"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyIm;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyIm;->imNum:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v10, "id"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->ims:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyIm;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyIm;->rowId:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 106
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    :cond_3
    const-string v9, "im"

    invoke-virtual {v8, v9, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 108
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 109
    .local v0, "addressArray":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    :goto_4
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 111
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 112
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    const-string v10, "type"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyAddress;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyAddress;->type:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v10, "value"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyAddress;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v10, "id"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyAddress;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyAddress;->rowId:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 117
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    :cond_4
    const-string v9, "address"

    invoke-virtual {v8, v9, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 119
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    .line 120
    .local v6, "organizationArray":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    :goto_5
    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 122
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 124
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    const-string v10, "value"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyOrganization;->company:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v10, "id"

    iget-object v9, p0, Lcom/market2345/contacts/modle/People2345;->organizations:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/contacts/modle/People2345$MyOrganization;

    iget-object v9, v9, Lcom/market2345/contacts/modle/People2345$MyOrganization;->rowId:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 128
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    :cond_5
    const-string v9, "organization"

    invoke-virtual {v8, v9, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 130
    return-object v8
.end method
