.class public abstract Laqg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Laql;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Laqm;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqm",
            "<-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Laqm;JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqm",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
