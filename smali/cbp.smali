.class public Lcbp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcbp;


# instance fields
.field private final a:Lbds;

.field private final b:Lbpn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbpn",
            "<",
            "Lbdi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcbp;

    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcbp;->c:Lcbp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lbpn;->b()Lbpn;

    move-result-object v0

    iput-object v0, p0, Lcbp;->b:Lbpn;

    .line 52
    invoke-static {p1}, Lbds;->a(Landroid/content/Context;)Lbds;

    move-result-object v0

    iput-object v0, p0, Lcbp;->a:Lbds;

    .line 54
    iget-object v0, p0, Lcbp;->a:Lbds;

    const-string v1, "GTM-KN73P2"

    const v2, 0x7f070001

    invoke-virtual {v0, v1, v2}, Lbds;->a(Ljava/lang/String;I)Laqg;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcbq;->a(Lcbp;)Laqm;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqg;->a(Laqm;)V

    .line 71
    return-void
.end method

.method public static a()Lcbp;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcbp;->c:Lcbp;

    return-object v0
.end method

.method private synthetic a(Lbdi;)V
    .locals 6

    .prologue
    .line 56
    invoke-interface {p1}, Lbdi;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTM Container error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "Config"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcbp;->b:Lbpn;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbpn;->a(Ljava/lang/Throwable;)Z

    .line 61
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->o:Lcbi;

    const-string v2, "GTMContainerLoadError"

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcbr;->a()Lbdj;

    move-result-object v0

    invoke-interface {p1, v0}, Lbdi;->a(Lbdj;)V

    .line 69
    iget-object v0, p0, Lcbp;->b:Lbpn;

    invoke-virtual {v0, p1}, Lbpn;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lbdi;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcbp;->b(Lbdi;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcbp;Lbdi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcbp;->a(Lbdi;)V

    return-void
.end method

.method private static synthetic b(Lbdi;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-interface {p0}, Lbdi;->c()Lbdc;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "Config"

    invoke-virtual {v0}, Lbdc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Loaded default container v"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded container v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcbp;->b:Lbpn;

    invoke-virtual {v0}, Lbpn;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcbp;->b:Lbpn;

    invoke-virtual {v0}, Lbpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdi;

    invoke-interface {v0}, Lbdi;->c()Lbdc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    move-object p2, v0

    .line 35
    :cond_1
    :goto_0
    return-object p2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Config read error"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcbp;->b:Lbpn;

    invoke-virtual {v0}, Lbpn;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcbp;->b:Lbpn;

    invoke-virtual {v0}, Lbpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdi;

    invoke-interface {v0}, Lbdi;->c()Lbdc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Config read error"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    .line 44
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcbp;->a:Lbds;

    invoke-virtual {v0}, Lbds;->a()Lbdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbdk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
