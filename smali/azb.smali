.class public final Lazb;
.super Ljava/lang/Object;

# interfaces
.implements Laza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lapz;)Laqg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz;",
            ")",
            "Laqg",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lazc;

    invoke-direct {v0, p0, p1}, Lazc;-><init>(Lazb;Lapz;)V

    invoke-virtual {p1, v0}, Lapz;->b(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method
