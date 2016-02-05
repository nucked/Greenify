.class public Lbvw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lbvw;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/SharedPreferences;",
            "Lbvy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbvw;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lbvx;

    invoke-direct {v0, p0}, Lbvx;-><init>(Lbvw;)V

    iput-object v0, p0, Lbvw;->a:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbvw;->c:Ljava/util/Map;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbvw;->b:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lbvw;->b:Landroid/content/Context;

    iget-object v1, p0, Lbvw;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oasisfeng.android.content.ACTION_SHARED_PREFS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method static synthetic a(Lbvw;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbvw;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lbvw;->d:Lbvw;

    if-nez v0, :cond_1

    sget-object v1, Lbvw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lbvw;->d:Lbvw;

    if-nez v0, :cond_0

    new-instance v0, Lbvw;

    invoke-direct {v0, p0}, Lbvw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbvw;->d:Lbvw;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lbvw;->d:Lbvw;

    invoke-direct {v0, p0, p1, p2}, Lbvw;->b(Landroid/content/Context;Ljava/lang/String;I)Lbvy;

    move-result-object v0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;I)Lbvy;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lbvw;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvy;

    .line 47
    if-nez v0, :cond_0

    .line 49
    const-string v0, "MPSharedPrefs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking shared preferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lbvy;

    invoke-direct {v0, p0, p2, v1}, Lbvy;-><init>(Lbvw;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 51
    iget-object v2, p0, Lbvw;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lbvw;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbvw;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lbvw;->b:Landroid/content/Context;

    iget-object v1, p0, Lbvw;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
