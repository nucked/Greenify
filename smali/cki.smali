.class Lcki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lckd;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcke;


# direct methods
.method constructor <init>(Lcke;Lckd;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lcki;->d:Lcke;

    iput-object p2, p0, Lcki;->a:Lckd;

    iput-object p3, p0, Lcki;->b:Ljava/util/List;

    iput p4, p0, Lcki;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1434
    :try_start_0
    iget-object v0, p0, Lcki;->a:Lckd;

    invoke-static {v0}, Lckd;->b(Lckd;)Lckm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcki;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcki;->a:Lckd;

    invoke-static {v0}, Lckd;->b(Lckd;)Lckm;

    move-result-object v0

    iget-object v1, p0, Lcki;->a:Lckd;

    invoke-static {v1}, Lckd;->e(Lckd;)I

    move-result v1

    iget v2, p0, Lcki;->c:I

    iget-object v3, p0, Lcki;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lckm;->a(IILjava/util/List;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcki;->a:Lckd;

    invoke-static {v0}, Lckd;->d(Lckd;)Lckl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcki;->a:Lckd;

    invoke-static {v0}, Lckd;->d(Lckd;)Lckl;

    move-result-object v0

    iget-object v1, p0, Lcki;->a:Lckd;

    invoke-static {v1}, Lckd;->e(Lckd;)I

    move-result v1

    iget v2, p0, Lcki;->c:I

    invoke-interface {v0, v1, v2}, Lckl;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    :cond_1
    iget-object v0, p0, Lcki;->d:Lcke;

    invoke-static {v0}, Lcke;->c(Lcke;)V

    .line 1443
    return-void

    .line 1441
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcki;->d:Lcke;

    invoke-static {v1}, Lcke;->c(Lcke;)V

    throw v0
.end method
