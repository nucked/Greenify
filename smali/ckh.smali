.class Lckh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lckr;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcke;


# direct methods
.method constructor <init>(Lcke;Lckr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lckh;->c:Lcke;

    iput-object p2, p0, Lckh;->a:Lckr;

    iput-object p3, p0, Lckh;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1381
    :try_start_0
    iget-object v0, p0, Lckh;->a:Lckr;

    iget-object v1, p0, Lckh;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lckr;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    iget-object v0, p0, Lckh;->c:Lcke;

    invoke-static {v0}, Lcke;->c(Lcke;)V

    .line 1385
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lckh;->c:Lcke;

    invoke-static {v1}, Lcke;->c(Lcke;)V

    throw v0
.end method
