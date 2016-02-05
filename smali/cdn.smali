.class public Lcdn;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcdn;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    iget-object v1, p0, Lcdn;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)[Ljava/util/Set;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "com.oasisfeng.greenify.action.PACKAGE_HIBERNATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 273
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {p1, v0}, Lccq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcdn;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fc097e4 -> :sswitch_2
        -0x2d2ad030 -> :sswitch_4
        -0x1242bfba -> :sswitch_3
        0xa480416 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
