.class Lcom/market2345/qrscan/QRResultActivity$2;
.super Ljava/lang/Object;
.source "QRResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/qrscan/QRResultActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/qrscan/QRResultActivity;

.field final synthetic val$container:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/market2345/qrscan/QRResultActivity;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/market2345/qrscan/QRResultActivity$2;->this$0:Lcom/market2345/qrscan/QRResultActivity;

    iput-object p2, p0, Lcom/market2345/qrscan/QRResultActivity$2;->val$container:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/market2345/qrscan/QRResultActivity$2;->val$container:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 360
    return-void
.end method
