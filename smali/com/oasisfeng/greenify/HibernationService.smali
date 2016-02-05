.class public Lcom/oasisfeng/greenify/HibernationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lbwn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "HyberSvc"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/HibernationService;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Lcay;->a(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->a(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method private a(Ljava/util/Collection;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method private a(Ljava/util/List;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v6

    .line 39
    if-eqz v6, :cond_4

    const/4 v0, 0x2

    :goto_1
    move v2, v0

    move-object v5, p1

    .line 43
    :goto_2
    if-nez p4, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationService;->a:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    const-string v0, "HyberSvc"

    const-string v5, "Device is back to interactive, abort the pending hibernation."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v5, "HyberSvc"

    const-string v6, "Failed to hibernate."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_3
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.oasisfeng.greenify.HIBERNATION_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    :cond_2
    if-eqz p2, :cond_8

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationService;->a:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 64
    :goto_4
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 65
    if-eqz v0, :cond_3

    const v0, 0x7f0800fb

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v3, v7}, Lbxd;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v0, v5}, Lcom/oasisfeng/greenify/HibernationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/oasisfeng/greenify/HibernationService;->a(Ljava/lang/String;I)V

    .line 66
    :cond_3
    new-instance v1, Lcbs;

    invoke-direct {v1, p0}, Lcbs;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcbs;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    move v0, v1

    .line 39
    goto :goto_1

    .line 47
    :cond_5
    if-eqz v6, :cond_7

    if-lez v2, :cond_7

    move v0, v1

    :goto_6
    :try_start_1
    invoke-static {p0, v5, v0}, Lccq;->a(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 50
    const-string v0, "HyberSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to hibernate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    if-lez v2, :cond_c

    .line 53
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v3

    .line 55
    :cond_6
    :goto_7
    :try_start_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, v2, -0x1

    if-gtz v2, :cond_d

    :goto_8
    move v2, v0

    .line 58
    goto/16 :goto_3

    :cond_7
    move v0, v4

    .line 47
    goto :goto_6

    .line 53
    :catch_1
    move-exception v0

    move-object v5, v3

    goto :goto_7

    :cond_8
    move v0, v4

    .line 63
    goto :goto_4

    .line 68
    :cond_9
    invoke-direct {p0, v3, v4, v2}, Lcom/oasisfeng/greenify/HibernationService;->a(Ljava/util/Collection;ZI)V

    goto/16 :goto_0

    .line 70
    :cond_a
    if-eqz v0, :cond_b

    const v0, 0x7f0800f4

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, p1, v6}, Lbxd;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/oasisfeng/greenify/HibernationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/oasisfeng/greenify/HibernationService;->a(Ljava/lang/String;I)V

    .line 71
    :cond_b
    invoke-direct {p0, p1, v1, v2}, Lcom/oasisfeng/greenify/HibernationService;->a(Ljava/util/Collection;ZI)V

    goto/16 :goto_0

    :cond_c
    move-object v5, v3

    goto :goto_7

    :cond_d
    move v2, v0

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto :goto_8
.end method

.method private synthetic b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationService;->setIntentRedelivery(Z)V

    .line 98
    new-instance v0, Lbwn;

    invoke-direct {v0, p0}, Lbwn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationService;->a:Lbwn;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "HyberSvc"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 106
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 29
    invoke-static {p1}, Lcaz;->b(Landroid/content/Intent;)Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcci;->d(Landroid/content/Context;)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationService;->a:Lbwn;

    invoke-virtual {v1}, Lbwn;->a()Z

    move-result v1

    .line 32
    invoke-static {p1}, Lcaz;->c(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcaz;->a(Landroid/content/Intent;)Z

    move-result v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/oasisfeng/greenify/HibernationService;->a(Ljava/util/List;ZZZ)V

    .line 33
    return-void
.end method
