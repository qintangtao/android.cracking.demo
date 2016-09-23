.class public final Lcom/market2345/contacts/modle/People2345$MyGroup;
.super Lcom/market2345/contacts/modle/People2345$BaseData;
.source "People2345.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/contacts/modle/People2345;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyGroup"
.end annotation


# instance fields
.field public error_code:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/market2345/contacts/modle/People2345$BaseData;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/market2345/contacts/modle/People2345$MyGroup;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/market2345/contacts/modle/People2345$MyGroup;

    invoke-direct {v0}, Lcom/market2345/contacts/modle/People2345$MyGroup;-><init>()V

    .line 257
    .local v0, "group":Lcom/market2345/contacts/modle/People2345$MyGroup;
    iget-object v1, p0, Lcom/market2345/contacts/modle/People2345$MyGroup;->rowId:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/contacts/modle/People2345$MyGroup;->rowId:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/contacts/modle/People2345$MyGroup;->title:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/contacts/modle/People2345$MyGroup;->id:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/market2345/contacts/modle/People2345$MyGroup;->doType:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/contacts/modle/People2345$MyGroup;->doType:Ljava/lang/String;

    .line 261
    return-object v0
.end method
