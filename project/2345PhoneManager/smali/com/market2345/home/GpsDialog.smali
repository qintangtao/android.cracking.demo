.class public Lcom/market2345/home/GpsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "GpsDialog.java"


# static fields
.field public static final CHECK_KEY:Ljava/lang/String; = "gpschecked"


# instance fields
.field private buttonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/market2345/home/GpsDialog$1;

    invoke-direct {v0, p0}, Lcom/market2345/home/GpsDialog$1;-><init>(Lcom/market2345/home/GpsDialog;)V

    iput-object v0, p0, Lcom/market2345/home/GpsDialog;->buttonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    const v1, 0x7f0c0012

    invoke-virtual {p0, v0, v1}, Lcom/market2345/home/GpsDialog;->setStyle(II)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/home/GpsDialog;->setCancelable(Z)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/home/GpsDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/home/GpsDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-object v0
.end method

.method public shouldShow(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "gpschecked"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
