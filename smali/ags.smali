.class Lags;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    instance-of v0, p0, Lags;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lags;

    invoke-direct {v0, p0}, Lags;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 34
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lags;->a:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lagt;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lagt;-><init>(Landroid/content/res/Resources;Lagv;)V

    iput-object v0, p0, Lags;->a:Landroid/content/res/Resources;

    .line 48
    :cond_0
    iget-object v0, p0, Lags;->a:Landroid/content/res/Resources;

    return-object v0
.end method
