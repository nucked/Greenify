.class Lbxv;
.super Lbyi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;ZZ)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lbxv;->a:Lbxt;

    invoke-direct {p0, p1, p2, p3}, Lbyi;-><init>(Lbxt;ZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v1, 0x1

    const v7, 0x7f080095

    const/16 v6, 0x20

    .line 585
    const-string v0, "package:x.y.z"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 588
    iget-object v0, p0, Lbxv;->a:Lbxt;

    invoke-virtual {v0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lccg;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lccg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 589
    :goto_0
    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x35

    const v5, 0x7f08009c

    invoke-static {v0, v3, v4, v5, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 591
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x33

    const v4, 0x7f08009c

    invoke-static {v0, v2, v3, v4, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 593
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 594
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.UMS_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x21

    const v5, 0x7f080094

    invoke-static {v2, v3, v4, v5, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 595
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x21

    const v5, 0x7f080094

    invoke-static {v2, v3, v4, v5, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 596
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.UMS_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 597
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 598
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 599
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 600
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 601
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v6, v7, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 602
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x1f

    const v5, 0x7f080096

    invoke-static {v2, v3, v4, v5, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 603
    iget-object v2, p0, Lbxv;->a:Lbxt;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v3, 0x1f

    const v4, 0x7f080096

    invoke-static {v2, v0, v3, v4, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 605
    const/16 v0, 0xe

    new-instance v2, Lbxw;

    invoke-direct {v2, p0, p1}, Lbxw;-><init>(Lbxv;Ljava/util/Map;)V

    invoke-static {v0, v2}, Lbvo;->a(ILjava/lang/Runnable;)V

    .line 609
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.NEW_PICTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "image/jpg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x15

    const v4, 0x7f08009a

    invoke-static {v0, v2, v3, v4, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 611
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080099

    invoke-static {v0, v2, v9, v3, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 612
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080098

    invoke-static {v0, v2, v9, v3, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 615
    :cond_1
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080093

    invoke-static {v0, v2, v8, v3, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 616
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x7f08010e

    invoke-static {v0, v2, v8, v3, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 617
    iget-object v0, p0, Lbxv;->a:Lbxt;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x7f08009b

    invoke-static {v0, v2, v1, v3, p1}, Lbxt;->a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V

    .line 618
    return-void

    .line 588
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
