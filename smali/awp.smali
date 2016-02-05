.class public Lawp;
.super Lawi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lawq;

    invoke-direct {v0, p0, p1, p2}, Lawq;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbad;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
