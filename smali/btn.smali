.class final Lbtn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
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
    .line 42
    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lbtm;

    invoke-direct {v0}, Lbtm;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
