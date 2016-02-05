.class Lark;
.super Lbcp;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lare;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lare;)V
    .locals 1

    invoke-direct {p0}, Lbcp;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lark;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 3

    iget-object v0, p0, Lark;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lare;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lare;->d(Lare;)Lasb;

    move-result-object v1

    new-instance v2, Larl;

    invoke-direct {v2, p0, v0, v0, p1}, Larl;-><init>(Lark;Lasa;Lare;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lasb;->a(Lasc;)V

    goto :goto_0
.end method
