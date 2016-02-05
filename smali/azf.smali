.class abstract Lazf;
.super Laze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lapz;)V
    .locals 0

    invoke-direct {p0, p1}, Laze;-><init>(Lapz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Laql;
    .locals 1

    invoke-virtual {p0, p1}, Lazf;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
