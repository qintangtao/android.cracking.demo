.class public Lcom/market2345/account/ChangePasswordActivity;
.super Lcom/market2345/account/AccountBaseActivity;
.source "ChangePasswordActivity.java"


# instance fields
.field private commitButton:Landroid/widget/Button;

.field private isNewPasswordAgainNull:Z

.field private isNewPasswordNull:Z

.field private isOldPasswordNull:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private newPasswordAgainEditText:Landroid/widget/EditText;

.field private newPasswordAgainWathcer:Landroid/text/TextWatcher;

.field private newPasswordEditText:Landroid/widget/EditText;

.field private newPasswordWatcher:Landroid/text/TextWatcher;

.field private oldPasswordEditText:Landroid/widget/EditText;

.field private oldPasswordWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/market2345/account/AccountBaseActivity;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isOldPasswordNull:Z

    .line 27
    iput-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordNull:Z

    .line 28
    iput-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordAgainNull:Z

    return-void
.end method

.method static synthetic access$002(Lcom/market2345/account/ChangePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/market2345/account/ChangePasswordActivity;->isOldPasswordNull:Z

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/account/ChangePasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/market2345/account/ChangePasswordActivity;->changeButtonStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/market2345/account/ChangePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordNull:Z

    return p1
.end method

.method static synthetic access$302(Lcom/market2345/account/ChangePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordAgainNull:Z

    return p1
.end method

.method static synthetic access$400(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->oldPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/ChangePasswordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/market2345/account/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changeButtonStatus()V
    .locals 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isOldPasswordNull:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordNull:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordAgainNull:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lcom/market2345/account/ChangePasswordController;

    invoke-direct {v0}, Lcom/market2345/account/ChangePasswordController;-><init>()V

    .line 118
    .local v0, "controller":Lcom/market2345/account/ChangePasswordController;
    invoke-virtual {p0}, Lcom/market2345/account/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/ChangePasswordActivity$5;

    invoke-direct {v2, p0}, Lcom/market2345/account/ChangePasswordActivity$5;-><init>(Lcom/market2345/account/ChangePasswordActivity;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/market2345/account/ChangePasswordController;->changePassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;)V

    .line 129
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->oldPasswordEditText:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordEditText:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainEditText:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    .line 42
    new-instance v0, Lcom/market2345/account/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/account/ChangePasswordActivity$1;-><init>(Lcom/market2345/account/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->oldPasswordWatcher:Landroid/text/TextWatcher;

    .line 59
    new-instance v0, Lcom/market2345/account/ChangePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/account/ChangePasswordActivity$2;-><init>(Lcom/market2345/account/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordWatcher:Landroid/text/TextWatcher;

    .line 76
    new-instance v0, Lcom/market2345/account/ChangePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/account/ChangePasswordActivity$3;-><init>(Lcom/market2345/account/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainWathcer:Landroid/text/TextWatcher;

    .line 93
    new-instance v0, Lcom/market2345/account/ChangePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/market2345/account/ChangePasswordActivity$4;-><init>(Lcom/market2345/account/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 110
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->oldPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/ChangePasswordActivity;->oldPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainWathcer:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity;->commitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/account/ChangePasswordActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/market2345/account/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->setContentView(I)V

    .line 33
    const-string v0, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/market2345/account/ChangePasswordActivity;->setTitleText(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/market2345/account/ChangePasswordActivity;->initView()V

    .line 35
    return-void
.end method
