.class Lcom/market2345/qrscan/QRResultActivity$4;
.super Ljava/lang/Object;
.source "QRResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/qrscan/QRResultActivity;->alertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/qrscan/QRResultActivity;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/qrscan/QRResultActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/market2345/qrscan/QRResultActivity$4;->this$0:Lcom/market2345/qrscan/QRResultActivity;

    iput-object p2, p0, Lcom/market2345/qrscan/QRResultActivity$4;->val$myDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/market2345/qrscan/QRResultActivity$4;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 405
    return-void
.end method
