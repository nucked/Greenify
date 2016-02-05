.class public Lcdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcee;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 291
    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)I

    move-result v0

    invoke-static {}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0, p3}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)V

    .line 298
    :cond_1
    :goto_0
    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0, p1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;I)I

    .line 299
    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0, p3}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    return-void

    .line 293
    :cond_2
    invoke-static {}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 294
    iget-object v0, p0, Lcdo;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0, p3}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_3
    const v0, 0x2d24c01

    if-ne p1, v0, :cond_1

    .line 296
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcbd;->a(Ljava/lang/String;)Lcbd;

    goto :goto_0
.end method
