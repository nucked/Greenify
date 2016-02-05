.class public abstract Layq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Layw;

.field private static e:I

.field private static f:Ljava/lang/String;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Layq;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Layq;->d:Layw;

    const/4 v0, 0x0

    sput v0, Layq;->e:I

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Layq;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Layq;->g:Ljava/lang/Object;

    iput-object p1, p0, Layq;->a:Ljava/lang/String;

    iput-object p2, p0, Layq;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Layq;->e:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Float;)Layq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Layq",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Layu;

    invoke-direct {v0, p0, p1}, Layu;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Layq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Layq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Layt;

    invoke-direct {v0, p0, p1}, Layt;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Layq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Layq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lays;

    invoke-direct {v0, p0, p1}, Lays;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Layq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Layq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Layv;

    invoke-direct {v0, p0, p1}, Layv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Layq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Layq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Layr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Layr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Layq;->d:Layw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e()Layw;
    .locals 1

    sget-object v0, Layq;->d:Layw;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Layq;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layq;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Layq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Layq;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Layq;->c()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
