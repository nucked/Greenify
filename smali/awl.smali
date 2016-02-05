.class public Lawl;
.super Lawi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawi",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lawm;

    invoke-direct {v0, p0, p1, p2}, Lawm;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lbad;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
