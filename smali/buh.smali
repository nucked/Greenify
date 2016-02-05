.class Lbuh;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbqz;

.field final synthetic b:Lbug;


# direct methods
.method constructor <init>(Lbug;Lbqz;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lbuh;->b:Lbug;

    iput-object p2, p0, Lbuh;->a:Lbqz;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/sql/Timestamp;
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lbuh;->a:Lbqz;

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 529
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lbuh;->a(Lbve;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lbve;Ljava/sql/Timestamp;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lbuh;->a:Lbqz;

    invoke-virtual {v0, p1, p2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lbuh;->a(Lbvb;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
