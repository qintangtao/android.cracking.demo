.class Lcom/market2345/cacheclean/CleanMainACtivity$2;
.super Ljava/lang/Object;
.source "CleanMainACtivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanMainACtivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanMainACtivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$2;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$2;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/market2345/cacheclean/CleanMainACtivity;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->startDeepScan(Ljava/io/File;)V

    .line 694
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 695
    return-void
.end method
