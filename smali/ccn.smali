.class public Lccn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Landroid/content/Context;

.field private volatile c:Landroid/content/SharedPreferences;

.field private volatile d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccn;-><init>(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lccp;

    invoke-direct {v0, p0}, Lccp;-><init>(Lccn;)V

    iput-object v0, p0, Lccn;->a:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lccn;->b:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lccn;->f()V

    .line 41
    if-eqz p2, :cond_0

    new-instance v0, Lcco;

    invoke-direct {v0, p0}, Lcco;-><init>(Lccn;)V

    iput-object v0, p0, Lccn;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.oasisfeng.greenify.action.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lccn;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lccn;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lccq;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 83
    :cond_2
    return-object p1
.end method

.method static synthetic a(Lccn;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lccn;->f()V

    return-void
.end method

.method static synthetic b(Lccn;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lccn;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 138
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lccn;->b:Landroid/content/Context;

    const-string v1, "greenfied_apps"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lbxk;->a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccn;->c:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lccn;->b:Landroid/content/Context;

    invoke-static {v0}, Lccq;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccn;->e:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lccn;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccn;->d:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lccn;->e:Z

    iget-object v1, p0, Lccn;->b:Landroid/content/Context;

    invoke-static {v1}, Lccq;->a(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lccn;->f()V

    .line 103
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lccn;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/oasisfeng/greenify/GreenifyApplication;->a(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lccn;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccn;->b:Landroid/content/Context;

    iget-object v1, p0, Lccn;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccn;->f:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method public a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_0
    :try_start_1
    invoke-static {p2}, Lccn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_2
    iget-object v1, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to commit change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    invoke-direct {p0}, Lccn;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 53
    if-eqz p2, :cond_1

    iget-object v0, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":always"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    invoke-direct {p0}, Lccn;->h()V

    .line 55
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":always"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lccn;->c:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":always"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lccn;->g()V

    .line 92
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lccn;->g()V

    .line 97
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    monitor-exit p0

    return v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v2, p0, Lccn;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    iget-object v2, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lccn;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lccn;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
