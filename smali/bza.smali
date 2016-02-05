.class public Lbza;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeTrackerService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeTrackerService;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbza;->a:Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lbza;->a:Lcom/oasisfeng/greenify/DozeTrackerService;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Lcom/oasisfeng/greenify/DozeTrackerService;Z)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
