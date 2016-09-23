.class Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WifiReceivedFilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/wificonn/WifiReceivedFilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private action:Landroid/widget/TextView;

.field private fileName:Landroid/widget/TextView;

.field private fileSize:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;


# direct methods
.method private constructor <init>(Lcom/market2345/wificonn/WifiReceivedFilesAdapter;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->this$0:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/wificonn/WifiReceivedFilesAdapter;Lcom/market2345/wificonn/WifiReceivedFilesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter;
    .param p2, "x1"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;-><init>(Lcom/market2345/wificonn/WifiReceivedFilesAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;

    return-object p1
.end method
