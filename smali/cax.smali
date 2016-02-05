.class public Lcax;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/HibernationRestrictedService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcax;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 260
    const-string v0, "Hyber.NR"

    const-string v1, "Screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcax;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Lcom/oasisfeng/greenify/HibernationRestrictedService;J)V

    .line 262
    iget-object v0, p0, Lcax;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-virtual {v0, p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    iget-object v0, p0, Lcax;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V

    .line 264
    return-void
.end method
