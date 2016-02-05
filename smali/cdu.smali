.class public Lcdu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "gib.xml"

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/content/Context;

.field private final g:Lcdz;

.field private final h:Landroid/content/SharedPreferences;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcdu;->a:Ljava/util/List;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcdu;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Lcdv;

    invoke-direct {v0, p0}, Lcdv;-><init>(Lcdu;)V

    iput-object v0, p0, Lcdu;->e:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Lcdz;

    invoke-static {}, Lcdu;->c()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcdz;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcdu;->g:Lcdz;

    .line 499
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcdu;->j:Landroid/os/Handler;

    .line 488
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only supported since Android 4.4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iput-object p1, p0, Lcdu;->f:Landroid/content/Context;

    .line 490
    iget-object v0, p0, Lcdu;->f:Landroid/content/Context;

    const-string v1, "blocker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    .line 491
    iput-object p2, p0, Lcdu;->i:Ljava/util/Set;

    .line 492
    return-void
.end method

.method private a(Landroid/content/IntentFilter;Landroid/content/Intent;Z)Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;
    .locals 3

    .prologue
    .line 177
    if-nez p1, :cond_1

    new-instance v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;-><init>(ZLandroid/content/ComponentName;)V

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcdu;->a(Ljava/util/Iterator;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lbnc;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcdu;->a(Ljava/util/Iterator;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcdu;->a(Ljava/util/Iterator;Ljava/lang/Object;)V

    .line 186
    return-object v0

    .line 177
    :cond_1
    new-instance v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;-><init>(Landroid/content/IntentFilter;ZLandroid/content/ComponentName;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lcdu;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcdu;->i:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/content/pm/ComponentInfo;Lcea;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-static {p1}, Lcom/oasisfeng/greenify/utils/PackageManagerExt;->a(Landroid/content/pm/ComponentInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 389
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-lez v1, :cond_3

    .line 390
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcdu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    :cond_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 395
    :goto_2
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 396
    iget-object v4, p2, Lcea;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 397
    :cond_4
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v2

    .line 398
    :goto_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 399
    iget-object v4, p2, Lcea;->c:Lbof;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcdx;

    invoke-direct {v6, p0, v0}, Lcdx;-><init>(Lcdu;Landroid/content/IntentFilter;)V

    invoke-interface {v4, v5, v6}, Lbof;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 400
    :cond_5
    iget-object v1, p2, Lcea;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_6
    return-void
.end method

.method private static a(Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lbkv;->a()Lbku;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0}, Lbnc;->a(Ljava/util/Iterator;Lbku;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lbkv;->a(Ljava/lang/Object;)Lbku;

    move-result-object v0

    invoke-static {v0}, Lbkv;->a(Lbku;)Lbku;

    move-result-object v0

    goto :goto_1
.end method

.method private a(I)Z
    .locals 3

    .prologue
    .line 117
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    .line 119
    :cond_1
    sget-object v1, Lcdu;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcdu;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p1}, Lcdu;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 124
    sget-object v1, Lcdu;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 125
    :try_start_1
    sget-object v2, Lcdu;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    invoke-static {}, Lcdu;->c()Ljava/io/File;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcdu;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v1, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 426
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chown system:system "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 701 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo \\<rules /\\>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 430
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chcon u:object_r:cache_file:s0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 426
    invoke-static {v4}, Lcdj;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 432
    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 435
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v3, Lcbi;->g:Lcbi;

    const-string v4, "InstallError.Dir"

    invoke-static {v10}, Lbkm;->a(C)Lbkm;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-nez v4, :cond_3

    .line 439
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v3, Lcbi;->g:Lcbi;

    const-string v4, "InstallError.DirPriv"

    invoke-static {v10}, Lbkm;->a(C)Lbkm;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0

    .line 443
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 444
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v3, Lcbi;->g:Lcbi;

    const-string v4, "InstallError.File"

    invoke-static {v10}, Lbkm;->a(C)Lbkm;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_5

    .line 449
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v3, Lcbi;->g:Lcbi;

    const-string v4, "InstallError.FilePriv"

    invoke-static {v10}, Lbkm;->a(C)Lbkm;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0

    .line 453
    :cond_5
    invoke-static {v3}, Lcdu;->e(Ljava/lang/String;)I

    move-result v2

    .line 454
    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_7

    .line 457
    const/16 v2, 0x1a0

    invoke-static {v3, v2, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    if-eqz v2, :cond_6

    .line 458
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v4, Lcbi;->g:Lcbi;

    const-string v5, "InstallError.FilePerm.1"

    invoke-virtual {v2, v4, v5, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 460
    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 640 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_6
    :goto_1
    move v0, v1

    .line 471
    goto/16 :goto_0

    .line 464
    :cond_7
    const/16 v2, 0x1a4

    invoke-static {v3, v2, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    if-eqz v2, :cond_8

    .line 465
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v4, Lcbi;->g:Lcbi;

    const-string v5, "InstallError.FilePerm.2"

    invoke-virtual {v2, v4, v5, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 467
    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    :cond_8
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->g:Lcbi;

    const-string v3, "InstallError.FileGroup"

    invoke-virtual {v0, v2, v3, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_1
.end method

.method private b()Z
    .locals 15

    .prologue
    const/16 v14, 0x40

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    iget-boolean v0, p0, Lcdu;->d:Z

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return v3

    .line 210
    :cond_0
    iput-boolean v2, p0, Lcdu;->d:Z

    .line 211
    iget-object v0, p0, Lcdu;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 213
    iget-object v0, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v4, p0, Lcdu;->i:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    iget-object v4, p0, Lcdu;->g:Lcdz;

    iget-object v4, v4, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    instance-of v4, v1, Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 232
    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 234
    invoke-virtual {p0, v0}, Lcdu;->d(Ljava/lang/String;)Lcdr;

    move-result-object v9

    .line 237
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 243
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v4, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 264
    const-string v4, "Blocker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :catch_0
    move-exception v4

    .line 239
    const-string v4, "Blocker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad blocked entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :sswitch_0
    const-string v12, "P:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v4, v3

    goto :goto_2

    :sswitch_1
    const-string v12, "S:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v4, v2

    goto :goto_2

    :sswitch_2
    const-string v12, "B:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v4, v5

    goto :goto_2

    :pswitch_0
    move v1, v2

    .line 247
    :goto_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v6, v4, v14}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 248
    if-nez v4, :cond_4

    .line 249
    const-string v1, "Blocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not valid any more: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    :cond_4
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_5

    .line 253
    const-string v11, "Blocker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service intent without component: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    :cond_5
    iget-object v9, v9, Lcdr;->c:Ljava/util/Set;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-direct {p0, v4, v10, v1}, Lcdu;->a(Landroid/content/IntentFilter;Landroid/content/Intent;Z)Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_4

    .line 259
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 260
    invoke-virtual {v6, v1, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 262
    iget-object v11, v9, Lcdr;->b:Ljava/util/Set;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-direct {p0, v1, v10, v2}, Lcdu;->a(Landroid/content/IntentFilter;Landroid/content/Intent;Z)Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move v3, v2

    .line 268
    goto/16 :goto_0

    :pswitch_2
    move v1, v3

    goto/16 :goto_3

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x838 -> :sswitch_2
        0x9ea -> :sswitch_0
        0xa47 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcdu;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 134
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    move v2, v1

    .line 137
    :goto_0
    if-nez v4, :cond_2

    .line 142
    :cond_0
    :goto_1
    return v0

    .line 135
    :cond_1
    const/16 v1, 0x81

    move v2, v1

    goto :goto_0

    .line 138
    :cond_2
    array-length v5, v4

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 139
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 140
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v2

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 141
    :catch_0
    move-exception v6

    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static c()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 413
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v2, "getSystemSecureDirectory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 414
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbxe; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    new-instance v2, Ljava/io/File;

    const-string v1, "ifw"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    new-instance v1, Ljava/io/File;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-gt v0, v3, :cond_0

    const-string v0, "ifw.xml"

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    :goto_2
    const-string v2, "Blocker"

    const-string v3, "Incompatible ROM"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    const-string v3, "Environment.getSystemSecureDirectory()"

    invoke-virtual {v2, v3, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    move-object v0, v1

    .line 418
    goto :goto_1

    .line 421
    :cond_0
    sget-object v0, Lcdu;->b:Ljava/lang/String;

    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static e(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 476
    :try_start_0
    const-string v0, "libcore.io.Libcore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stat"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "st_gid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 484
    :goto_0
    return v0

    .line 479
    :catch_0
    move-exception v0

    .line 483
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcdy;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcdu;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcdu;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcdu;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcdu;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcdu;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 350
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    const/16 v1, 0x26

    :try_start_0
    invoke-static {v3, v0, v1}, Lcom/oasisfeng/greenify/utils/PackageManagerExt;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 359
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v6, v5

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    .line 365
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v8, :cond_1

    .line 364
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :catch_0
    move-exception v1

    .line 356
    :goto_3
    const-string v5, "Blocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " due to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_2

    .line 367
    iget-object v8, p0, Lcdu;->g:Lcdz;

    iget-object v8, v8, Lcdz;->a:Ljava/util/HashSet;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_2
    iget-object v8, p0, Lcdu;->g:Lcdz;

    iget-object v8, v8, Lcdz;->b:Lcea;

    invoke-direct {p0, v7, v8, v2}, Lcdu;->a(Landroid/content/pm/ComponentInfo;Lcea;Z)V

    goto :goto_2

    .line 372
    :cond_3
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v5, v1

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_0

    aget-object v6, v1, v0

    .line 373
    iget-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v7, :cond_4

    .line 372
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 374
    :cond_4
    iget-object v7, p0, Lcdu;->g:Lcdz;

    iget-object v7, v7, Lcdz;->c:Lcea;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcdu;->a(Landroid/content/pm/ComponentInfo;Lcea;Z)V

    goto :goto_5

    .line 378
    :cond_5
    const-string v0, "Blocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->c:Lcea;

    iget-object v2, v2, Lcea;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiver actions, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->c:Lcea;

    iget-object v2, v2, Lcea;->c:Lbof;

    .line 379
    invoke-interface {v2}, Lbof;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiver schemed actions, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->c:Lcea;

    iget-object v2, v2, Lcea;->d:Ljava/util/List;

    .line 380
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiver intent filters, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->b:Lcea;

    iget-object v2, v2, Lcea;->a:Ljava/util/HashSet;

    .line 381
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service actions, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->b:Lcea;

    iget-object v2, v2, Lcea;->c:Lbof;

    .line 382
    invoke-interface {v2}, Lbof;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service schemed actions, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->b:Lcea;

    iget-object v2, v2, Lcea;->d:Ljava/util/List;

    .line 383
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service intent filters and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcdu;->g:Lcdz;

    iget-object v2, v2, Lcdz;->a:Ljava/util/HashSet;

    .line 384
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service components"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 353
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 355
    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method

.method public a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcdu;->f:Landroid/content/Context;

    invoke-static {v0}, Lcdu;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 328
    invoke-direct {p0}, Lcdu;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->c:Lcea;

    invoke-virtual {v0}, Lcea;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->b:Lcea;

    invoke-virtual {v0}, Lcea;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0, p1}, Lcdu;->a(Ljava/lang/Iterable;)V

    .line 335
    const-string v4, "Blocker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking rules built in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcdu;->g:Lcdz;

    invoke-virtual {v2}, Lcdz;->a()V

    .line 340
    const-string v2, "Blocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rules saved in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 343
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "SaveRules"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/Intent;IZ)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {p0, v4}, Lcdu;->d(Ljava/lang/String;)Lcdr;

    move-result-object v5

    .line 90
    invoke-direct {p0, p4}, Lcdu;->a(I)Z

    move-result v6

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v8, 0x40

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 94
    if-nez v1, :cond_1

    .line 95
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->p:Lcbi;

    const-string v4, "Unresolved.Service"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5, v0}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v2, v3

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    if-eqz p5, :cond_0

    .line 100
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v6, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v8, v7, v1}, Lcdu;->a(Landroid/content/IntentFilter;Landroid/content/Intent;Z)Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    move-result-object v1

    .line 101
    iget-object v5, v5, Lcdr;->c:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :try_start_0
    iget-object v1, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_2
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 108
    :cond_2
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_4

    const-string v0, "P:"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-virtual {p0}, Lcdu;->a()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 100
    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 109
    :cond_4
    const-string v0, "S:"

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;IZ)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcdu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 150
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    :cond_1
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v4, Lcbi;->p:Lcbi;

    const-string v5, "Unresolved.Broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    if-nez p5, :cond_3

    move v0, v2

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0, p2}, Lcdu;->d(Ljava/lang/String;)Lcdr;

    move-result-object v5

    .line 159
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 160
    iget-object v6, v5, Lcdr;->b:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p3, v2}, Lcdu;->a(Landroid/content/IntentFilter;Landroid/content/Intent;Z)Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    invoke-virtual {p0}, Lcdu;->a()V

    move v0, v2

    .line 172
    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcdu;->b()Z

    .line 202
    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcdu;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    invoke-virtual {p0}, Lcdu;->a()V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcdr;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcdu;->b()Z

    .line 301
    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdr;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcdr;
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcdu;->b()Z

    .line 306
    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v0, v0, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdr;

    .line 307
    if-nez v0, :cond_0

    iget-object v0, p0, Lcdu;->g:Lcdz;

    iget-object v1, v0, Lcdz;->d:Ljava/util/Map;

    new-instance v0, Lcdr;

    invoke-direct {v0, p1}, Lcdr;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    return-object v0
.end method
