.class public Lchz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcia;


# direct methods
.method public static a(Ljava/lang/Class;)Lcid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcid",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lcid;

    invoke-direct {v0, p0}, Lcid;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcid;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcid",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    new-instance v0, Lcid;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcid;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    new-instance v1, Lcic;

    invoke-direct {v1, v0}, Lcic;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1}, Lchz;->b(Lcic;)V

    .line 502
    new-instance v0, Lcid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcid;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static synthetic a(Lcic;)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lchz;->b(Lcic;)V

    return-void
.end method

.method private static b(Lcic;)V
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lchz;->a:Lcia;

    if-eqz v0, :cond_0

    sget-object v0, Lchz;->a:Lcia;

    invoke-interface {v0, p0}, Lcia;->a(Lcic;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    throw p0

    .line 508
    :cond_1
    return-void
.end method
