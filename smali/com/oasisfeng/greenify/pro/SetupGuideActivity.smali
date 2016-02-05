.class public Lcom/oasisfeng/greenify/pro/SetupGuideActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v0, v2

    .line 56
    goto :goto_1

    :cond_2
    move v1, v2

    .line 57
    goto :goto_2
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0}, Lccz;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 62
    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.installer"

    invoke-virtual {v0, v1}, Lbxd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    .line 66
    :cond_0
    invoke-static {}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    .line 69
    :cond_1
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    .line 70
    :cond_2
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.installer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://repo.xposed.info/module/de.robv.android.xposed.installer"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method private static c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 78
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 79
    const-string v5, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->b()V

    .line 24
    iget v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->finish()V

    .line 42
    :goto_0
    return-void

    .line 29
    :cond_0
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcfi;->a(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {p0}, Lcfj;->a(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 35
    const v1, 0x7f0f008e

    invoke-virtual {p0, v1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f0f008f

    invoke-virtual {p0, v1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-static {p0}, Lcfk;->a(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 46
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->b()V

    .line 47
    iget v0, p0, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->a()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    return-void
.end method
