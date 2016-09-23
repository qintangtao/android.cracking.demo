.class Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstallManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/InstallManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstalledAppAdapter"
.end annotation


# static fields
.field private static final INSTALL_APPS_COUNT:I = 0x0

.field private static final INSTALL_APPS_ITEM:I = 0x1

.field private static final TYPE_COUT:I = 0x2


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/market2345/manager/InstallManagerActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/market2345/manager/InstallManagerActivity;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/InstalledApp;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/InstalledApp;>;"
    iput-object p1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    .line 195
    iput-object p3, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    .line 196
    iput p4, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->type:I

    .line 197
    invoke-static {p2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    .line 198
    .local v0, "session":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 199
    return-void
.end method

.method static synthetic access$300(Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method private showAlertDialog(Lcom/market2345/model/InstalledApp;)V
    .locals 9
    .param p1, "app"    # Lcom/market2345/model/InstalledApp;

    .prologue
    const/4 v2, 0x0

    .line 357
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    const v4, 0x7f03004a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 360
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 361
    const v2, 0x7f09021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 362
    .local v8, "tv_message":Landroid/widget/TextView;
    const-string v2, "\u8be5\u5e94\u7528\u4e0d\u5b58\u5728"

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v2, 0x7f09021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 364
    .local v6, "btnSure":Landroid/widget/Button;
    const-string v2, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v2, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter$1;-><init>(Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;Landroid/app/AlertDialog;Lcom/market2345/model/InstalledApp;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 378
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/InstalledApp;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    if-lez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->getItem(I)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->getItemViewType(I)I

    move-result v8

    if-nez v8, :cond_2

    .line 249
    iget-object v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    const v9, 0x7f03008d

    invoke-static {v8, p2, p3, v9, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/market2345/common/util/BaseAdapterHelper;

    move-result-object v3

    .line 263
    .local v3, "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    const-wide/16 v4, 0x0

    .line 264
    .local v4, "appsSize":J
    iget-object v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 265
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    iget-wide v8, v0, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    add-long/2addr v4, v8

    .line 266
    goto :goto_0

    .line 269
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    :cond_0
    iget v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->type:I

    if-nez v8, :cond_1

    .line 270
    iget-object v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    const v9, 0x7f0b0095

    invoke-virtual {v8, v9}, Lcom/market2345/manager/InstallManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "appsCount":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    :goto_1
    const v8, 0x7f0902fa

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 279
    invoke-virtual {v3}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v8

    .line 306
    .end local v2    # "appsCount":Ljava/lang/String;
    .end local v4    # "appsSize":J
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v8

    .line 274
    .restart local v4    # "appsSize":J
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    const v9, 0x7f0b0098

    invoke-virtual {v8, v9}, Lcom/market2345/manager/InstallManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "appsCount":Ljava/lang/String;
    goto :goto_1

    .line 282
    .end local v2    # "appsCount":Ljava/lang/String;
    .end local v3    # "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    .end local v4    # "appsSize":J
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    const v9, 0x7f03007e

    invoke-static {v8, p2, p3, v9, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/market2345/common/util/BaseAdapterHelper;

    move-result-object v3

    .line 285
    .restart local v3    # "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    invoke-virtual {p0, p1}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->getItem(I)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 287
    .restart local v0    # "app":Lcom/market2345/model/InstalledApp;
    const v8, 0x7f0902af

    iget-object v9, v0, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 289
    iget-wide v8, v0, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "appSize":Ljava/lang/String;
    iget-object v8, v0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-static {v9}, Lcom/market2345/common/util/Utils;->getTwelveLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_3
    const v8, 0x7f0902b0

    invoke-virtual {v3, v8, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 295
    const v8, 0x7f0901d0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installedApp://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/market2345/common/util/BaseAdapterHelper;->setImageUrl(ILjava/lang/String;)Landroid/widget/ImageView;

    .line 298
    iget v8, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->type:I

    if-nez v8, :cond_4

    .line 299
    const v8, 0x7f0902ad

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    move-result-object v7

    .line 303
    .local v7, "view":Landroid/view/View;
    :goto_3
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v3}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v8

    goto/16 :goto_2

    .line 301
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    const v8, 0x7f0902ad

    const/16 v9, 0x8

    invoke-virtual {v3, v8, v9}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "view":Landroid/view/View;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 333
    .local v6, "tagObj":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 334
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 335
    .local v5, "position":I
    invoke-virtual {p0, v5}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->getItem(I)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 336
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 338
    .local v4, "packageURI":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 340
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v7, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_1

    .line 342
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DELETE"

    invoke-direct {v2, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-virtual {v7, v2}, Lcom/market2345/manager/InstallManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageURI":Landroid/net/Uri;
    .end local v5    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v0    # "app":Lcom/market2345/model/InstalledApp;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packageURI":Landroid/net/Uri;
    .restart local v5    # "position":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->showAlertDialog(Lcom/market2345/model/InstalledApp;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v0}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->showAlertDialog(Lcom/market2345/model/InstalledApp;)V

    goto :goto_0
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 312
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 313
    check-cast v0, Landroid/util/Pair;

    .line 314
    .local v0, "a":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->type:I

    if-nez v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v2}, Lcom/market2345/manager/InstallManagerActivity;->access$200(Lcom/market2345/manager/InstallManagerActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    invoke-virtual {v1}, Lcom/market2345/manager/InstallManagerActivity;->setInstalledCount()V

    .line 328
    .end local v0    # "a":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void

    .line 321
    .restart local v0    # "a":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->apps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;->this$0:Lcom/market2345/manager/InstallManagerActivity;

    # getter for: Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v2}, Lcom/market2345/manager/InstallManagerActivity;->access$200(Lcom/market2345/manager/InstallManagerActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
