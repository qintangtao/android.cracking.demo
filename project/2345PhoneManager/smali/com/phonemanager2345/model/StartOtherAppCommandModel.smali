.class public Lcom/phonemanager2345/model/StartOtherAppCommandModel;
.super Ljava/lang/Object;
.source "StartOtherAppCommandModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public component:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public extradata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/StartOtherAppCommandModel$MapValue;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
