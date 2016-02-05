.class final Lbvk;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lbvk;->a:Landroid/content/Context;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    iget-object v0, p0, Lbvk;->a:Landroid/content/Context;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbve;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2}, Lbvk;->a(Lbve;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lbvk;->a(Lbvb;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
