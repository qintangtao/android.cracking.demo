.class Lcom/market2345/download/DownloadThread$2;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadThread;->doAfterDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadThread;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadThread;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 662
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v2, v4, v5}, Lcom/market2345/log/DownloadLog;->downloadEvent(IJ)V

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "root":Z
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/market2345/util/ShellUtils;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 667
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "description"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v2, "status"

    const/16 v3, 0x259

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/market2345/download/util/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eq v7, v2, :cond_1

    .line 671
    const-string v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v2, v3, v7}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z

    .line 683
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v2, v3, v0}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 685
    return-void

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v2, v3, v7}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    iget-object v2, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadThread;->access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread$2;->this$0:Lcom/market2345/download/DownloadThread;

    # getter for: Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;
    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z

    goto :goto_0
.end method
