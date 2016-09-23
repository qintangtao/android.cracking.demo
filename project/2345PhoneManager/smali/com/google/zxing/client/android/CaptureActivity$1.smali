.class Lcom/google/zxing/client/android/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/CaptureActivity;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->this$0:Lcom/google/zxing/client/android/CaptureActivity;

    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->val$myDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 508
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity$1;->this$0:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 509
    return-void
.end method
