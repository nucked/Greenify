.class public Lcbz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 475
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcbz;->a:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcby;
    .locals 1

    .prologue
    .line 388
    invoke-static {p0}, Lcbz;->b(Ljava/lang/String;)Lcby;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 515
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lccb;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/16 v3, 0x280

    const v8, 0x7f080055

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 420
    iget-object v0, p1, Lccb;->a:Lcby;

    .line 421
    if-eqz v0, :cond_0

    sget-object v2, Lcbv;->a:[I

    invoke-virtual {v0}, Lcby;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 467
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    const v0, 0x7f080047

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_1
    const v0, 0x7f08004f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v0, p1, Lccb;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 428
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    const v0, 0x7f080058

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    const v0, 0x7f080051

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080057

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0}, Lcbz;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_3
    iget-object v0, p1, Lccb;->b:Landroid/content/ComponentName;

    const/16 v2, 0x200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 436
    invoke-static {p0, v0}, Lcbz;->a(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    const v0, 0x7f080056

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080054

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0}, Lcbz;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 441
    :pswitch_4
    iget-object v2, p1, Lccb;->b:Landroid/content/ComponentName;

    .line 442
    if-nez v2, :cond_4

    const-string v0, ""

    goto/16 :goto_0

    .line 443
    :cond_4
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 444
    const-string v0, "com.google.android.gcm.GCMBroadcastReceiver"

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 446
    :cond_5
    const-string v0, "com.google.android.c2dm.C2DMBroadcastReceiver"

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 448
    :cond_6
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.appwidget.provider"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 449
    const v0, 0x7f080059

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 451
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 452
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 453
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 454
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 457
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080053

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3}, Lcbz;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 459
    :pswitch_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 461
    :pswitch_6
    const v0, 0x7f080052

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 463
    :pswitch_7
    const v1, 0x7f08005a

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v6

    iget-object v0, p1, Lccb;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 464
    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    iget-object v3, p1, Lccb;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lbxd;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v7

    .line 463
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    :cond_a
    iget v0, p1, Lccb;->e:I

    invoke-static {p0, v0}, Lcbz;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    sget-object v0, Lcbz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    if-nez v0, :cond_0

    sget-object v1, Lcbz;->a:Landroid/util/SparseArray;

    invoke-static {p0, p1}, Lcbz;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;JLccb;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 391
    if-nez p3, :cond_0

    const-string v3, ""

    .line 415
    :goto_0
    return-object v3

    .line 393
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lbvp;->a(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-static {p0, p3, v4}, Lcbz;->a(Landroid/content/Context;Lccb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 395
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 396
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 406
    iget v5, p3, Lccb;->e:I

    if-ltz v5, :cond_2

    iget v5, p3, Lccb;->e:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 407
    const v2, 0x7f080050

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p3, Lccb;->e:I

    invoke-static {p0, v5}, Lcbz;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 404
    :sswitch_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 411
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 414
    :catch_0
    move-exception v2

    .line 415
    const-string v3, ""

    goto :goto_0

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x7f080047 -> :sswitch_0
        0x7f080052 -> :sswitch_0
        0x7f080055 -> :sswitch_0
        0x7f080056 -> :sswitch_0
        0x7f080058 -> :sswitch_0
        0x7f080059 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)Z
    .locals 3

    .prologue
    .line 508
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 509
    invoke-virtual {v0}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 510
    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcby;
    .locals 2

    .prologue
    .line 563
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 571
    sget-object v0, Lcby;->i:Lcby;

    :goto_1
    return-object v0

    .line 563
    :sswitch_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "service"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "content provider"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "backup"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "broadcast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "direct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "GCM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 564
    :pswitch_0
    sget-object v0, Lcby;->b:Lcby;

    goto :goto_1

    .line 565
    :pswitch_1
    sget-object v0, Lcby;->c:Lcby;

    goto :goto_1

    .line 566
    :pswitch_2
    sget-object v0, Lcby;->d:Lcby;

    goto :goto_1

    .line 567
    :pswitch_3
    sget-object v0, Lcby;->e:Lcby;

    goto :goto_1

    .line 568
    :pswitch_4
    sget-object v0, Lcby;->f:Lcby;

    goto :goto_1

    .line 569
    :pswitch_5
    sget-object v0, Lcby;->g:Lcby;

    goto :goto_1

    .line 570
    :pswitch_6
    sget-object v0, Lcby;->h:Lcby;

    goto :goto_1

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_0
        -0x607e173f -> :sswitch_4
        -0x533f8a3e -> :sswitch_3
        -0x4f5e6417 -> :sswitch_5
        0x112f1 -> :sswitch_6
        0x548ba9b8 -> :sswitch_2
        0x7643c6b5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const v3, 0x7f08005e

    const/4 v0, 0x0

    .line 478
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 479
    :cond_0
    if-nez p1, :cond_1

    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    .line 480
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_2
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_3

    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 484
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 485
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_4
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lbxd;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_5
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 491
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 492
    iget v6, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-nez v6, :cond_7

    .line 489
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_7
    iget v6, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 494
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_8
    :try_start_1
    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Lbxd;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 491
    :catch_1
    move-exception v4

    goto :goto_2
.end method
