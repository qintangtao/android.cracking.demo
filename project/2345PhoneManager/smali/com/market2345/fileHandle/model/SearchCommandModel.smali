.class public Lcom/market2345/fileHandle/model/SearchCommandModel;
.super Ljava/lang/Object;
.source "SearchCommandModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/fileHandle/model/SearchCommandModel$CommandFile;
    }
.end annotation


# instance fields
.field public searchCount:I

.field public searchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/fileHandle/model/SearchCommandModel$CommandFile;",
            ">;"
        }
    .end annotation
.end field

.field public searchName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method
