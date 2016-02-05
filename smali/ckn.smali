.class public Lckn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    sput-object v2, Lckn;->a:Ljava/lang/Boolean;

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Lckn;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    const-string v0, "su"

    .line 427
    if-eqz p1, :cond_0

    invoke-static {}, Lckn;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-static {v4}, Lckn;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v5}, Lckn;->a(Z)Ljava/lang/String;

    move-result-object v2

    .line 433
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "SUPERSU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xbe

    if-lt v1, v2, :cond_0

    .line 437
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s --context %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    if-lez p0, :cond_1

    .line 444
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s %d"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized a(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 356
    const-class v3, Lckn;

    monitor-enter v3

    if-eqz p0, :cond_0

    move v2, v0

    .line 357
    :cond_0
    :try_start_0
    sget-object v0, Lckn;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 360
    if-eqz p0, :cond_3

    const-string v0, "su -V"

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "exit"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcka;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_5

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    if-nez p0, :cond_4

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 387
    :goto_2
    sget-object v1, Lckn;->b:[Ljava/lang/String;

    aput-object v0, v1, v2

    .line 389
    :cond_2
    sget-object v0, Lckn;->b:[Ljava/lang/String;

    aget-object v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 360
    :cond_3
    :try_start_1
    const-string v0, "su -v"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :cond_4
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    const-string v0, "su"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcka;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lcka;->a:[Ljava/lang/String;

    invoke-static {v0}, Lckn;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 331
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcka;->a(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 400
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 401
    if-ltz v0, :cond_0

    .line 402
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 406
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 407
    if-ltz v0, :cond_1

    .line 408
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 411
    :cond_1
    const-string v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    const-class v4, Lckn;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lckn;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 472
    const/4 v1, 0x0

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v0, v5, :cond_6

    .line 478
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v0, "/sys/fs/selinux/enforce"

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 483
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v6, 0x31

    if-ne v0, v6, :cond_3

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 485
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 493
    :goto_1
    if-nez v0, :cond_0

    .line 494
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 498
    :cond_0
    :goto_3
    if-nez v0, :cond_1

    .line 499
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 502
    :cond_1
    sput-object v0, Lckn;->a:Ljava/lang/Boolean;

    .line 504
    :cond_2
    sget-object v0, Lckn;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    monitor-exit v4

    return v0

    :cond_3
    move v0, v3

    .line 483
    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 487
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 494
    goto :goto_2

    .line 471
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 487
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method
