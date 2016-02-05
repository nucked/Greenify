.class public Lawj;
.super Lawi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawi",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lawk;

    invoke-direct {v0, p0, p1, p2}, Lawk;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lbad;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
