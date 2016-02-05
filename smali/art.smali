.class Lart;
.super Ljava/lang/Object;

# interfaces
.implements Laqd;


# instance fields
.field final synthetic a:Lasn;

.field final synthetic b:Larp;


# direct methods
.method constructor <init>(Larp;Lasn;)V
    .locals 0

    iput-object p1, p0, Lart;->b:Larp;

    iput-object p2, p0, Lart;->a:Lasn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lart;->a:Lasn;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lasn;->a(Laql;)V

    return-void
.end method
