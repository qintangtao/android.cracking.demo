.class Lcom/market2345/customview/StickyLayout$1$1;
.super Ljava/lang/Object;
.source "StickyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/customview/StickyLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/customview/StickyLayout$1;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/market2345/customview/StickyLayout$1;I)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/market2345/customview/StickyLayout$1$1;->this$1:Lcom/market2345/customview/StickyLayout$1;

    iput p2, p0, Lcom/market2345/customview/StickyLayout$1$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/market2345/customview/StickyLayout$1$1;->this$1:Lcom/market2345/customview/StickyLayout$1;

    iget-object v0, v0, Lcom/market2345/customview/StickyLayout$1;->this$0:Lcom/market2345/customview/StickyLayout;

    iget v1, p0, Lcom/market2345/customview/StickyLayout$1$1;->val$height:I

    invoke-virtual {v0, v1}, Lcom/market2345/customview/StickyLayout;->setHeaderHeight(I)V

    .line 238
    return-void
.end method
