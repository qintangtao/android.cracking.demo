.class public final Lcom/google/zxing/client/android/FinishListener;
.super Ljava/lang/Object;
.source "FinishListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final activityToFinish:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activityToFinish"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/client/android/FinishListener;->activityToFinish:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method private run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/client/android/FinishListener;->activityToFinish:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/zxing/client/android/FinishListener;->run()V

    .line 41
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/zxing/client/android/FinishListener;->run()V

    .line 47
    return-void
.end method
