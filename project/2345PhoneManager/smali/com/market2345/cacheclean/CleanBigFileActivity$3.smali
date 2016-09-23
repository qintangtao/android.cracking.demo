.class Lcom/market2345/cacheclean/CleanBigFileActivity$3;
.super Ljava/lang/Object;
.source "CleanBigFileActivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanBigFileActivity;->showTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

.field final synthetic val$alertDialog:Lcom/market2345/cacheclean/CleanAlertDialog;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanBigFileActivity;Lcom/market2345/cacheclean/CleanAlertDialog;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$3;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    iput-object p2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$3;->val$alertDialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$3;->this$0:Lcom/market2345/cacheclean/CleanBigFileActivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->delect()V

    .line 444
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity$3;->val$alertDialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->dismiss()V

    .line 445
    return-void
.end method
