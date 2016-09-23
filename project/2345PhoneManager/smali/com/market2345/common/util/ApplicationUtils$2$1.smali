.class Lcom/market2345/common/util/ApplicationUtils$2$1;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/common/util/ApplicationUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/common/util/ApplicationUtils$2;


# direct methods
.method constructor <init>(Lcom/market2345/common/util/ApplicationUtils$2;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/market2345/common/util/ApplicationUtils$2$1;->this$0:Lcom/market2345/common/util/ApplicationUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/market2345/common/util/ApplicationUtils$2$1;->this$0:Lcom/market2345/common/util/ApplicationUtils$2;

    iget-object v1, v1, Lcom/market2345/common/util/ApplicationUtils$2;->val$activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1069
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1070
    return-void
.end method
