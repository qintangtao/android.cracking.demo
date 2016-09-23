.class public Lcom/market2345/detail/SelectDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/detail/SelectDialogFragment;->listener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/market2345/detail/SelectDialogFragment;->listener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;->onSelect(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->dismiss()V

    .line 54
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 37
    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 42
    .local v0, "w":I
    add-int/lit8 v0, v0, -0x1e

    .line 44
    invoke-virtual {p0}, Lcom/market2345/detail/SelectDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public setSelectedListener(Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/market2345/detail/SelectDialogFragment;->listener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    .line 58
    return-void
.end method
