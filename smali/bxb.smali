.class final Lbxb;
.super Lg;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lbxc;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lbxc;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbxb;->a:Landroid/net/Uri;

    iput-object p2, p0, Lbxb;->b:Lbxc;

    invoke-direct {p0}, Lg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Lb;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "WebContent"

    const-string v1, "Warming up Chrome custom tabs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lb;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2, v2}, Lb;->a(La;)Li;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbxb;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Li;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 43
    :cond_0
    iget-object v1, p0, Lbxb;->b:Lbxc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbxb;->b:Lbxc;

    invoke-interface {v1, v0}, Lbxc;->a(Li;)V

    .line 45
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
