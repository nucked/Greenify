.class public final Lbpi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lbpj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lbpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbpi;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    .line 156
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lbpi;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x39

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "RuntimeException while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with executor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Lbpi;->c:Z

    if-eqz v1, :cond_1

    .line 122
    monitor-exit p0

    .line 148
    :cond_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbpi;->c:Z

    .line 125
    iget-object v1, p0, Lbpi;->b:Lbpj;

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lbpi;->b:Lbpj;

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    if-eqz v1, :cond_2

    .line 140
    iget-object v2, v1, Lbpj;->c:Lbpj;

    .line 141
    iput-object v0, v1, Lbpj;->c:Lbpj;

    move-object v0, v1

    move-object v1, v2

    .line 143
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 144
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Lbpj;->a:Ljava/lang/Runnable;

    iget-object v2, v0, Lbpj;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lbpi;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 146
    iget-object v0, v0, Lbpj;->c:Lbpj;

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lbpi;->c:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lbpj;

    iget-object v1, p0, Lbpi;->b:Lbpj;

    invoke-direct {v0, p1, p2, v1}, Lbpj;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lbpj;)V

    iput-object v0, p0, Lbpi;->b:Lbpj;

    .line 94
    monitor-exit p0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {p1, p2}, Lbpi;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
