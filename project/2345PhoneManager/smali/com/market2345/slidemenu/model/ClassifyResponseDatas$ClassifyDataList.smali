.class public Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;
.super Ljava/lang/Object;
.source "ClassifyResponseDatas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassifyDataList"
.end annotation


# instance fields
.field public game:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyItemData;",
            ">;"
        }
    .end annotation
.end field

.field public hot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyItemData;",
            ">;"
        }
    .end annotation
.end field

.field public soft:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/model/ClassifyResponseDatas;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;->this$0:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
