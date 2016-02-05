.class public Lbyr;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/CleanerService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lbyr;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lbyr;->a:Lcom/oasisfeng/greenify/CleanerService;

    iget-wide v2, v2, Lcom/oasisfeng/greenify/CleanerService;->a:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb2d05e00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 175
    const-string v0, "Cleaner"

    const-string v1, "Screen off by us, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lbyr;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->b(Lcom/oasisfeng/greenify/CleanerService;)Z

    goto :goto_0
.end method
