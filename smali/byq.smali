.class public Lbyq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/CleanerService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbyq;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lbyq;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oasisfeng/greenify/CleanerService;->a:J

    .line 170
    return-void
.end method
