.class public Lbyy;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeService;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lbyy;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 220
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lbyy;->a:Lcom/oasisfeng/greenify/DozeService;

    const/4 v1, 0x0

    const-string v2, "Power disconnected"

    invoke-static {v0, v1, v2}, Lcom/oasisfeng/greenify/DozeService;->a(Lcom/oasisfeng/greenify/DozeService;ZLjava/lang/String;)V

    .line 226
    :goto_0
    iget-object v0, p0, Lbyy;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeService;->e(Lcom/oasisfeng/greenify/DozeService;)V

    .line 227
    return-void

    .line 223
    :cond_0
    const-string v0, "Drowse"

    const-string v1, "Power connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lbyy;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeService;->d(Lcom/oasisfeng/greenify/DozeService;)Lchs;

    move-result-object v0

    iget-object v1, p0, Lbyy;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v1}, Lcom/oasisfeng/greenify/DozeService;->c(Lcom/oasisfeng/greenify/DozeService;)Lcht;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchs;->a(Lcht;)V

    goto :goto_0
.end method
