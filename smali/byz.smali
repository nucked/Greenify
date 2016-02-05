.class public Lbyz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeTrackerService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeTrackerService;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lbyz;->a:Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lbyz;->a:Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Lcom/oasisfeng/greenify/DozeTrackerService;)V

    .line 129
    return-void
.end method
