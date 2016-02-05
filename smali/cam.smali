.class Lcam;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcam;->a:Lbzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcam;->a:Lbzh;

    new-instance v1, Lcbs;

    invoke-direct {v1, p1}, Lcbs;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbzh;->a(Lbzh;Lcbs;)Lcbs;

    .line 415
    return-void
.end method
