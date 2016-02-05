.class public final Laoi;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;",
            "Ljava/util/List",
            "<",
            "Laow;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Laow;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Laow;->a:Laow;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Laow;->a:Laow;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
