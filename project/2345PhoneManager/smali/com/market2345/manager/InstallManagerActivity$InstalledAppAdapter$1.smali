.class Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;
.super Ljava/lang/Object;
.source "InstallManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->showAlertDialog(Lcom/market2345/model/InstalledApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

.field final synthetic val$app:Lcom/market2345/model/InstalledApp;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;Landroid/app/AlertDialog;Lcom/market2345/model/InstalledApp;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->this$1:Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

    iput-object p2, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->val$app:Lcom/market2345/model/InstalledApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 372
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->this$1:Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

    # getter for: Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->access$300(Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->val$app:Lcom/market2345/model/InstalledApp;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;->this$1:Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

    invoke-virtual {v0}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->notifyDataSetChanged()V

    .line 374
    return-void
.end method
