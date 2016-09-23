.class Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/adapter/PackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbChecked:Landroid/widget/CheckBox;

.field ivPic:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/PackageAdapter;

.field tvName:Landroid/widget/TextView;

.field tvSize:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/adapter/PackageAdapter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->this$0:Lcom/market2345/filebrowser/adapter/PackageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/adapter/PackageAdapter;Lcom/market2345/filebrowser/adapter/PackageAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/adapter/PackageAdapter;
    .param p2, "x1"    # Lcom/market2345/filebrowser/adapter/PackageAdapter$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/PackageAdapter;)V

    return-void
.end method
