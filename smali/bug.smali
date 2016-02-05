.class final Lbug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbpy;",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lbpy;->a(Ljava/lang/Class;)Lbqz;

    move-result-object v1

    .line 526
    new-instance v0, Lbuh;

    invoke-direct {v0, p0, v1}, Lbuh;-><init>(Lbug;Lbqz;)V

    goto :goto_0
.end method
