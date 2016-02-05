.class final Lamd;
.super Laps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laps",
        "<",
        "Lany;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laps;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lats;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Laqc;Laqd;)Lany;
    .locals 7

    new-instance v0, Lany;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lany;-><init>(Landroid/content/Context;Landroid/os/Looper;Lats;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Laqc;Laqd;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lamd;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Laqc;Laqd;)Lany;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {p0, p1}, Lamd;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
