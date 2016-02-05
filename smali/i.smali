.class public final Li;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm;

.field private final b:Lj;

.field private final c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lm;Lj;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Li;->a:Lm;

    .line 40
    iput-object p2, p0, Li;->b:Lj;

    .line 41
    iput-object p3, p0, Li;->c:Landroid/content/ComponentName;

    .line 42
    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Li;->b:Lj;

    invoke-interface {v0}, Lj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Li;->a:Lm;

    iget-object v1, p0, Li;->b:Lj;

    invoke-interface {v0, v1, p1, p2, p3}, Lm;->a(Lj;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Li;->c:Landroid/content/ComponentName;

    return-object v0
.end method
