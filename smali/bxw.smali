.class Lbxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lbxv;


# direct methods
.method constructor <init>(Lbxv;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lbxw;->b:Lbxv;

    iput-object p2, p0, Lbxw;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 606
    iget-object v0, p0, Lbxw;->b:Lbxv;

    iget-object v0, v0, Lbxv;->a:Lbxt;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video/mpeg4"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x17

    const v3, 0x7f080092

    iget-object v4, p0, Lbxw;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 607
    iget-object v0, p0, Lbxw;->b:Lbxv;

    iget-object v0, v0, Lbxv;->a:Lbxt;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpg"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x15

    const v3, 0x7f08009a

    iget-object v4, p0, Lbxw;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 608
    return-void
.end method
