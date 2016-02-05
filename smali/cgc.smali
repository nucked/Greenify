.class Lcgc;
.super Landroid/content/IIntentReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/IIntentReceiver;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I

.field final synthetic d:Lcgb;


# direct methods
.method constructor <init>(Lcgb;Landroid/content/IIntentReceiver;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcgc;->d:Lcgb;

    iput-object p2, p0, Lcgc;->a:Landroid/content/IIntentReceiver;

    iput-object p3, p0, Lcgc;->b:Landroid/content/Intent;

    iput p4, p0, Lcgc;->c:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 96
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    new-instance v1, Lcgd;

    invoke-direct {v1, p0}, Lcgd;-><init>(Lcgc;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    new-instance v1, Lcge;

    invoke-direct {v1, p0, p2}, Lcge;-><init>(Lcgc;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcgc;->a:Landroid/content/IIntentReceiver;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcgc;->a(II)V

    .line 93
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcgc;->a:Landroid/content/IIntentReceiver;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 87
    invoke-direct {p0, p2, p7}, Lcgc;->a(II)V

    .line 88
    return-void
.end method
