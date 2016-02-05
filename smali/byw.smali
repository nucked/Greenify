.class public Lbyw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeService;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lbyw;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x5

    .line 129
    invoke-virtual {p0}, Lbyw;->getResultCode()I

    move-result v2

    .line 130
    iget-object v0, p0, Lbyw;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeService;->b(Lcom/oasisfeng/greenify/DozeService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 131
    const/4 v1, 0x4

    if-ne v2, v1, :cond_0

    if-nez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 134
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    iget-object v0, p0, Lbyw;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeService;->b(Lcom/oasisfeng/greenify/DozeService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 136
    if-eqz v0, :cond_1

    .line 139
    :cond_0
    if-nez v0, :cond_3

    .line 140
    if-lt v2, v3, :cond_2

    .line 141
    const-string v0, "Drowse"

    const-string v1, "Failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->n:Lcbi;

    const-string v2, "Failed"

    invoke-virtual {v0, v1, v2, v6, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 145
    :goto_2
    return-void

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lbyw;->a:Lcom/oasisfeng/greenify/DozeService;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/DozeService;->a(Lcom/oasisfeng/greenify/DozeService;I)V

    goto :goto_2

    .line 144
    :cond_3
    const-string v0, "Drowse"

    const-string v1, "Finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1
.end method
