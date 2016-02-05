.class public Lb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lm;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lb;->a:Lm;

    .line 41
    iput-object p2, p0, Lb;->b:Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lg;)Z
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(La;)Li;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 89
    new-instance v1, Lc;

    invoke-direct {v1, p0, p1}, Lc;-><init>(Lb;La;)V

    .line 102
    :try_start_0
    iget-object v2, p0, Lb;->a:Lm;

    invoke-interface {v2, v1}, Lm;->a(Lj;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Li;

    iget-object v2, p0, Lb;->a:Lm;

    iget-object v3, p0, Lb;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Li;-><init>(Lm;Lj;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lb;->a:Lm;

    invoke-interface {v0, p1, p2}, Lm;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 73
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method
