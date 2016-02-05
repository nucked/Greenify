.class public Lcav;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/HibernationRestrictedService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 148
    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const-string v1, "Hyber.NR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Lcom/oasisfeng/greenify/HibernationRestrictedService;I)I

    .line 153
    iget-object v1, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    iget-object v0, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const-string v0, "Hyber.NR"

    const-string v1, "All done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Lcci;

    move-result-object v0

    invoke-virtual {v0}, Lcci;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcav;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    goto :goto_0
.end method
