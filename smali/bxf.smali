.class public abstract Lbxf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lbxf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbxf;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbxf;->a:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static a(Lei;Lbxh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lei;",
            "Lbxh",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lbxi;

    new-instance v2, Lbxg;

    invoke-direct {v2, v0}, Lbxg;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-direct {v1, v2, p1}, Lbxi;-><init>(Lbxj;Lbxh;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    :try_start_0
    const-class v2, Landroid/os/AsyncTask;

    const-string v3, "setDefaultExecutor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/concurrent/Executor;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v2

    .line 89
    :try_start_1
    const-class v2, Landroid/os/AsyncTask;

    const-string v3, "sDefaultExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v2

    .line 95
    :try_start_2
    const-class v2, Landroid/os/AsyncTask;

    const-string v3, "sExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v0

    .line 100
    sget-object v0, Lbxf;->b:Ljava/lang/String;

    const-string v2, "Failed to install as default executor of AsyncTask."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 101
    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TResult;)V"
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method protected final varargs a(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[TProgress;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method protected b(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TResult;)V"
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method protected final onCancelled()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lbxf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lbxf;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v0, p1}, Lbxf;->b(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lbxf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lbxf;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0, p1}, Lbxf;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lbxf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lbxf;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v0, p1}, Lbxf;->a(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
