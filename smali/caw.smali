.class public Lcaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/HibernationRestrictedService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "Hyber.NR"

    const-string v1, "Hibernation automator seems not working."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->d(Lcom/oasisfeng/greenify/HibernationRestrictedService;)I

    .line 181
    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->e(Lcom/oasisfeng/greenify/HibernationRestrictedService;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcaw;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    goto :goto_0
.end method
