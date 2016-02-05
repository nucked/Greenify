.class public Lcom/oasisfeng/greenify/engine/WakeupMonitor;
.super Lbxm;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final q:I


# instance fields
.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Lceb;

.field private e:Lccn;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcbs;

.field private h:I

.field private i:Ljava/lang/String;

.field private final j:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcdp;",
            ">;"
        }
    .end annotation
.end field

.field private final k:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcdp;",
            ">;"
        }
    .end annotation
.end field

.field private final l:[Lbof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lbof",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/os/Handler;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "ifw_intent_matched"

    invoke-static {v0}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a:I

    .line 64
    const-string v0, "am_proc_start"

    invoke-static {v0}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b:I

    .line 320
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    sput v0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 57
    invoke-direct {p0}, Lbxm;-><init>()V

    .line 263
    new-instance v0, Lcdn;

    invoke-direct {v0, p0}, Lcdn;-><init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v0, Lceb;

    new-array v1, v4, [I

    const/4 v2, 0x0

    sget v3, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b:I

    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x2d24c01

    aput v3, v1, v2

    new-instance v2, Lcdo;

    invoke-direct {v2, p0}, Lcdo;-><init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V

    invoke-direct {v0, v1, v2}, Lceb;-><init>([ILcee;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d:Lceb;

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    .line 307
    new-array v0, v4, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    .line 309
    new-array v0, v4, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    .line 311
    new-array v0, v4, [Lbof;

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    .line 313
    new-array v0, v4, [Ljava/util/HashSet;

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->m:[Ljava/util/Set;

    .line 316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->n:Landroid/util/SparseArray;

    .line 317
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->o:Landroid/os/Handler;

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->p:J

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->h:I

    return p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->p:J

    .line 91
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 93
    if-le v0, v9, :cond_0

    add-int/lit8 v0, v0, 0x3

    const/4 v3, 0x4

    invoke-static {v1, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_0
    const/16 v0, 0x8

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    invoke-virtual {p0, v1, v9}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v6}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {p0, v1, v7}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {p0, v1, v8}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    .line 101
    if-ne v4, v9, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    move v1, v0

    .line 104
    :goto_1
    new-instance v3, Lcdp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    invoke-direct {v3, v10, v11, v1}, Lcdp;-><init>(JI)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    :cond_3
    if-nez v7, :cond_4

    if-eqz v8, :cond_5

    .line 108
    :cond_4
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_5
    :goto_2
    iput-object v0, v3, Lcdp;->c:Landroid/content/Intent;

    .line 114
    if-nez v5, :cond_9

    .line 115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    aget-object v1, v1, v4

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->m:[Ljava/util/Set;

    aget-object v1, v1, v4

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 127
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    aget-object v0, v0, v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lbof;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    :cond_6
    const/16 v0, 0x3e8

    move v1, v0

    goto :goto_1

    .line 109
    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 110
    :cond_8
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 122
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    aget-object v0, v0, v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lbof;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 132
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    aget-object v0, v0, v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lbof;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 138
    :cond_9
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 139
    if-nez v0, :cond_b

    .line 140
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_a

    new-array v0, v2, [Ljava/lang/String;

    .line 143
    :cond_a
    iget-object v6, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->n:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    :cond_b
    const/16 v1, 0x2f

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 146
    array-length v7, v0

    move v1, v2

    :goto_6
    if-ge v1, v7, :cond_c

    aget-object v2, v0, v1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 147
    :cond_c
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    aget-object v0, v0, v4

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)Z
    .locals 4

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->p:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    aget-object v0, v0, p1

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)[Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->m:[Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 164
    const-string v0, ","

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 171
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    sget v2, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->q:I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 234
    :cond_0
    :goto_1
    return-void

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    add-int/lit8 v2, v0, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 175
    const-string v2, "added application"

    if-eq v11, v2, :cond_0

    const-string v2, "restart"

    if-eq v11, v2, :cond_0

    const-string v2, "link fail"

    if-eq v11, v2, :cond_0

    const-string v2, "bind fail"

    if-eq v11, v2, :cond_0

    const-string v2, "on-hold"

    if-eq v11, v2, :cond_0

    const-string v2, ""

    if-eq v11, v2, :cond_0

    const-string v2, "preferred application"

    if-eq v11, v2, :cond_0

    .line 177
    add-int/lit8 v0, v0, 0x5

    aget-object v2, v1, v0

    .line 178
    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 179
    array-length v1, v0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    .line 180
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->p:Lcbi;

    const-string v2, "Unrecog evt args"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_1

    .line 183
    :cond_3
    const/4 v1, 0x0

    aget-object v6, v0, v1

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .line 185
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "activity"

    if-ne v11, v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0xf4240

    mul-long/2addr v4, v8

    .line 194
    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdp;

    .line 196
    if-eqz v0, :cond_5

    iget-wide v8, v0, Lcdp;->a:J

    sub-long/2addr v4, v8

    const-wide v8, 0x2540be400L

    cmp-long v3, v4, v8

    if-lez v3, :cond_13

    .line 197
    :cond_5
    iget-object v3, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lbof;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    iget-object v5, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    aget-object v5, v5, v1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdp;

    .line 199
    if-eqz v3, :cond_6

    iget-wide v8, v0, Lcdp;->a:J

    iget-wide v12, v3, Lcdp;->a:J

    cmp-long v5, v8, v12

    if-lez v5, :cond_12

    :cond_6
    :goto_4
    move-object v3, v0

    .line 200
    goto :goto_3

    .line 191
    :cond_7
    const-string v0, "broadcast"

    if-ne v11, v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    const-string v0, "service"

    if-ne v11, v0, :cond_9

    const/4 v0, 0x2

    move v1, v0

    goto :goto_2

    :cond_9
    const/4 v0, -0x1

    move v1, v0

    goto :goto_2

    :cond_a
    move-object v7, v3

    .line 202
    :goto_5
    if-nez v7, :cond_b

    invoke-direct {p0, v1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waker.NoMatch."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    :cond_b
    move-object v0, v7

    .line 217
    :goto_6
    iget-object v5, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->g:Lcbs;

    if-eqz v0, :cond_10

    iget v9, v0, Lcdp;->b:I

    :goto_7
    if-eqz v0, :cond_11

    iget-object v10, v0, Lcdp;->c:Landroid/content/Intent;

    :goto_8
    move-object v7, v11

    move-object v8, v2

    invoke-virtual/range {v5 .. v10}, Lcbs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Z

    .line 218
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 204
    :cond_c
    if-nez v1, :cond_d

    .line 205
    new-instance v0, Lcdp;

    const/4 v1, -0x1

    invoke-direct {v0, v4, v5, v1}, Lcdp;-><init>(JI)V

    goto :goto_6

    .line 207
    :cond_d
    const-string v0, "backup"

    if-ne v11, v0, :cond_e

    .line 208
    new-instance v0, Lcdp;

    const/16 v1, 0x3e8

    invoke-direct {v0, v4, v5, v1}, Lcdp;-><init>(JI)V

    goto :goto_6

    .line 210
    :cond_e
    const-string v0, "content provider"

    if-ne v11, v0, :cond_f

    .line 211
    new-instance v0, Lcdp;

    const/4 v1, -0x1

    invoke-direct {v0, v4, v5, v1}, Lcdp;-><init>(JI)V

    goto :goto_6

    .line 213
    :cond_f
    const/4 v0, 0x0

    .line 214
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waker.Unsupported."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    goto :goto_6

    .line 217
    :cond_10
    const/4 v9, -0x1

    goto :goto_7

    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    :cond_12
    move-object v0, v3

    goto/16 :goto_4

    :cond_13
    move-object v7, v0

    goto :goto_5
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 73
    :cond_0
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oasisfeng.greenify.wakeup_tracker"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_LOGS"

    .line 75
    invoke-static {p0, v0}, Lis;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->h:I

    return v0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->i:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    invoke-static {p0, p1}, Lccq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a:I

    return v0
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b:I

    return v0
.end method

.method public static synthetic e(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->g()V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d:Lceb;

    invoke-virtual {v0, p0}, Lceb;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic f(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f()V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e:Lccn;

    invoke-virtual {v0}, Lccn;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v0

    invoke-static {p0}, Lcdm;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Lbku;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmn;->a(Lbku;)Lbmn;

    move-result-object v0

    iget-object v1, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lbmn;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 85
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d:Lceb;

    invoke-virtual {v0, p0}, Lceb;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    aget-object v0, p1, p2

    check-cast v0, Ljava/lang/String;

    .line 243
    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcdk;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "WakeupMonitorInitializer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e:Lccn;

    invoke-virtual {v0}, Lccn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v0, Lccn;

    invoke-direct {v0, p0}, Lccn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e:Lccn;

    .line 248
    new-instance v0, Lcbs;

    invoke-direct {v0, p0}, Lcbs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->g:Lcbs;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v2, "com.oasisfeng.greenify.action.PACKAGE_HIBERNATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move v0, v1

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->j:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->k:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 259
    :goto_2
    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->l:[Lbof;

    invoke-static {}, Lbmp;->j()Lbmp;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->m:[Ljava/util/Set;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->m:[Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 261
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e:Lccn;

    invoke-virtual {v0}, Lccn;->a()V

    .line 284
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcdl;->a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 286
    return-void
.end method
