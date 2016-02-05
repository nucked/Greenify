.class Lcco;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccn;


# direct methods
.method constructor <init>(Lccn;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcco;->a:Lccn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "pid"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcco;->a:Lccn;

    invoke-static {v0}, Lccn;->a(Lccn;)V

    goto :goto_0
.end method
