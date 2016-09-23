.class public Lcom/market2345/contacts/modle/People2345$BaseData;
.super Ljava/lang/Object;
.source "People2345.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/contacts/modle/People2345;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseData"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "add"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final UPDATE:Ljava/lang/String; = "update"


# instance fields
.field public doType:Ljava/lang/String;

.field public rowId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNotDelete()Z
    .locals 2

    .prologue
    .line 220
    const-string v0, "delete"

    iget-object v1, p0, Lcom/market2345/contacts/modle/People2345$BaseData;->doType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
