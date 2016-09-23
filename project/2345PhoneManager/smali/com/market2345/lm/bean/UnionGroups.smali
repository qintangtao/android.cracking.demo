.class public Lcom/market2345/lm/bean/UnionGroups;
.super Ljava/lang/Object;
.source "UnionGroups.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packages:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionGroups;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionGroups;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/lm/bean/UnionGroups;->packages:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionGroups;->id:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionGroups;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPackages(Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/market2345/lm/bean/UnionGroups;->packages:Ljava/lang/String;

    .line 19
    return-void
.end method
