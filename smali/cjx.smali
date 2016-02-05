.class public Lcjx;
.super Ljava/lang/Exception;
.source "SourceFile"


# virtual methods
.method public a()Ljava/lang/Error;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcjx;->a()Ljava/lang/Error;

    move-result-object v0

    return-object v0
.end method
