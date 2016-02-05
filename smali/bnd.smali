.class final Lbnd;
.super Lboz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lboz",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lboz;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x1

    return v0
.end method
