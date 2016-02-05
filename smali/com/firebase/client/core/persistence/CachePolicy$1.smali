.class final Lcom/firebase/client/core/persistence/CachePolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/persistence/CachePolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxNumberOfQueriesToKeep()J
    .locals 2

    .prologue
    .line 13
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getPercentOfQueriesToPruneAtOnce()F
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckCacheSize(J)Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPrune(JJ)Z
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method
