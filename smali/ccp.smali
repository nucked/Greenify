.class Lccp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccn;


# direct methods
.method constructor <init>(Lccn;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lccp;->a:Lccn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lccp;->a:Lccn;

    invoke-static {v0}, Lccn;->b(Lccn;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lccp;->a:Lccn;

    invoke-static {v0}, Lccn;->b(Lccn;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oasisfeng.greenify.action.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
