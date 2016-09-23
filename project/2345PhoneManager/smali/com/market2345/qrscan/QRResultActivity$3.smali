.class Lcom/market2345/qrscan/QRResultActivity$3;
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


# direct methods
.method constructor <init>(Lcom/market2345/qrscan/QRResultActivity;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/market2345/qrscan/QRResultActivity$3;->this$0:Lcom/market2345/qrscan/QRResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "wifiSettingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/market2345/qrscan/QRResultActivity$3;->this$0:Lcom/market2345/qrscan/QRResultActivity;

    invoke-virtual {v1, v0}, Lcom/market2345/qrscan/QRResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method
