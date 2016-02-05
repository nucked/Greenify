.class Lanw;
.super Lano;


# instance fields
.field final synthetic a:Lanv;


# direct methods
.method constructor <init>(Lanv;)V
    .locals 0

    iput-object p1, p0, Lanw;->a:Lanv;

    invoke-direct {p0}, Lano;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lanw;->a:Lanv;

    invoke-virtual {v0, p1}, Lanv;->a(Laql;)V

    return-void
.end method
