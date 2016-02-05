.class Lari;
.super Lasc;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Larh;


# direct methods
.method constructor <init>(Larh;Lasa;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lari;->b:Larh;

    iput-object p3, p0, Lari;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lasc;-><init>(Lasa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lari;->b:Larh;

    iget-object v0, v0, Larh;->a:Lare;

    iget-object v1, p0, Lari;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lare;->a(Lare;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
