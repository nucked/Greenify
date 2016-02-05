.class Lcag;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcag;->a:Lbzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcag;->a:Lbzh;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lbzh;->a(IILandroid/content/Intent;)V

    .line 159
    return-void
.end method
