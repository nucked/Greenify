.class Lcek;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lceh;


# direct methods
.method constructor <init>(Lceh;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcek;->a:Lceh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcek;->a:Lceh;

    iget-object v0, p0, Lcek;->a:Lceh;

    invoke-static {v0}, Lceh;->a(Lceh;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-static {v2, v1, v0}, Lceh;->a(Lceh;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 193
    return-void
.end method
