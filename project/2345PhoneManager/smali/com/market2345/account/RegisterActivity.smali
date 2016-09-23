.class public Lcom/market2345/account/RegisterActivity;
.super Lcom/market2345/account/AccountBaseActivity;
.source "RegisterActivity.java"


# static fields
.field private static final GET_CODE_CONSTANTS:I = 0x1


# instance fields
.field private SMSCodeEditText:Landroid/widget/EditText;

.field private accountNumEditText:Landroid/widget/EditText;

.field private accountPasswordEditText:Landroid/widget/EditText;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private getCodeButton:Landroid/widget/Button;

.field private isPasswordNotNull:Z

.field private isSMSCodeNotNull:Z

.field private isUsernameNotNUll:Z

.field private mHandler:Landroid/os/Handler;

.field private mPasswordWatcher:Landroid/text/TextWatcher;

.field private mSMSCodeWatcher:Landroid/text/TextWatcher;

.field private mUsernameWatcher:Landroid/text/TextWatcher;

.field private registerButton:Landroid/widget/Button;

.field private registerController:Lcom/market2345/account/RegisterController;

.field private smsController:Lcom/market2345/account/PhoneSmsController;

.field private timePicker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/market2345/account/AccountBaseActivity;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isUsernameNotNUll:Z

    .line 38
    iput-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isPasswordNotNull:Z

    .line 39
    iput-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isSMSCodeNotNull:Z

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/market2345/account/RegisterActivity;->timePicker:I

    .line 47
    new-instance v0, Lcom/market2345/account/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterActivity$1;-><init>(Lcom/market2345/account/RegisterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/RegisterActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/market2345/account/RegisterActivity;->timePicker:I

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/account/RegisterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/market2345/account/RegisterActivity;->timePicker:I

    return p1
.end method

.method static synthetic access$010(Lcom/market2345/account/RegisterActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/market2345/account/RegisterActivity;->timePicker:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/market2345/account/RegisterActivity;->timePicker:I

    return v0
.end method

.method static synthetic access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/account/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/account/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/account/RegisterActivity;->getCode()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/account/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/account/RegisterActivity;->register()V

    return-void
.end method

.method static synthetic access$502(Lcom/market2345/account/RegisterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/market2345/account/RegisterActivity;->isUsernameNotNUll:Z

    return p1
.end method

.method static synthetic access$600(Lcom/market2345/account/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/account/RegisterActivity;->changeButtonStatus()V

    return-void
.end method

.method static synthetic access$702(Lcom/market2345/account/RegisterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/market2345/account/RegisterActivity;->isPasswordNotNull:Z

    return p1
.end method

.method static synthetic access$802(Lcom/market2345/account/RegisterActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/market2345/account/RegisterActivity;->isSMSCodeNotNull:Z

    return p1
.end method

.method private changeButtonStatus()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isPasswordNotNull:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isUsernameNotNUll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/account/RegisterActivity;->isSMSCodeNotNull:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private getCode()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->accountNumEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "userNameEdit":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {v0}, Lcom/market2345/util/AppsUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->smsController:Lcom/market2345/account/PhoneSmsController;

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Lcom/market2345/account/PhoneSmsController;

    invoke-direct {v1}, Lcom/market2345/account/PhoneSmsController;-><init>()V

    iput-object v1, p0, Lcom/market2345/account/RegisterActivity;->smsController:Lcom/market2345/account/PhoneSmsController;

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->smsController:Lcom/market2345/account/PhoneSmsController;

    new-instance v2, Lcom/market2345/account/RegisterActivity$6;

    invoke-direct {v2, p0}, Lcom/market2345/account/RegisterActivity$6;-><init>(Lcom/market2345/account/RegisterActivity;)V

    invoke-virtual {v1, v0, p0, v2}, Lcom/market2345/account/PhoneSmsController;->callSendSms(Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;)V

    .line 182
    invoke-virtual {p0}, Lcom/market2345/account/RegisterActivity;->showProgressDialog()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/market2345/account/RegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterActivity$2;-><init>(Lcom/market2345/account/RegisterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->clickListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/market2345/account/RegisterActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterActivity$3;-><init>(Lcom/market2345/account/RegisterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->mUsernameWatcher:Landroid/text/TextWatcher;

    .line 111
    new-instance v0, Lcom/market2345/account/RegisterActivity$4;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterActivity$4;-><init>(Lcom/market2345/account/RegisterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 128
    new-instance v0, Lcom/market2345/account/RegisterActivity$5;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterActivity$5;-><init>(Lcom/market2345/account/RegisterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->mSMSCodeWatcher:Landroid/text/TextWatcher;

    .line 145
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->accountNumEditText:Landroid/widget/EditText;

    .line 146
    const v0, 0x7f0900e2

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->accountPasswordEditText:Landroid/widget/EditText;

    .line 147
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->SMSCodeEditText:Landroid/widget/EditText;

    .line 148
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->registerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->accountNumEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->mUsernameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->accountPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity;->SMSCodeEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity;->mSMSCodeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    return-void
.end method

.method private register()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/market2345/account/RegisterActivity;->accountNumEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "userNameEdit":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/account/RegisterActivity;->accountPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "userPasswordEdit":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/account/RegisterActivity;->SMSCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const v3, 0x7f0b006f

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const v3, 0x7f0b006e

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 197
    const-string v3, "\u60a8\u8f93\u5165\u7684\u5bc6\u7801\u4f4d\u6570\u8fc7\u77ed"

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_3

    .line 199
    const-string v3, "\u60a8\u8f93\u5165\u7684\u5bc6\u7801\u4f4d\u6570\u8fc7\u957f"

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/market2345/account/RegisterActivity;->registerController:Lcom/market2345/account/RegisterController;

    if-nez v3, :cond_4

    .line 202
    new-instance v3, Lcom/market2345/account/RegisterController;

    invoke-direct {v3, p0}, Lcom/market2345/account/RegisterController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/market2345/account/RegisterActivity;->registerController:Lcom/market2345/account/RegisterController;

    .line 203
    :cond_4
    iget-object v3, p0, Lcom/market2345/account/RegisterActivity;->registerController:Lcom/market2345/account/RegisterController;

    new-instance v4, Lcom/market2345/account/RegisterActivity$7;

    invoke-direct {v4, p0}, Lcom/market2345/account/RegisterActivity$7;-><init>(Lcom/market2345/account/RegisterActivity;)V

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/market2345/account/RegisterController;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/RegisterController$RegisterCallBack;)V

    goto :goto_0

    .line 221
    :cond_5
    const v3, 0x7f0b006d

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/market2345/account/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/market2345/account/RegisterActivity;->initView()V

    .line 74
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/RegisterActivity;->setTitleText(Ljava/lang/String;)V

    .line 75
    return-void
.end method
