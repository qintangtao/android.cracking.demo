.class public final Lcom/market2345/contacts/modle/People2345$MyAddress;
.super Lcom/market2345/contacts/modle/People2345$BaseData;
.source "People2345.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/contacts/modle/People2345;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyAddress"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public typeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/market2345/contacts/modle/People2345$BaseData;-><init>()V

    return-void
.end method
