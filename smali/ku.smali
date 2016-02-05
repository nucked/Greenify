.class public Lku;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lkw;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkw",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lky;->a(Lkw;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkv;

    invoke-direct {v0, p0}, Lkv;-><init>(Lkw;)V

    goto :goto_0
.end method
