.class Larl;
.super Lasc;


# instance fields
.field final synthetic a:Lare;

.field final synthetic b:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic c:Lark;


# direct methods
.method constructor <init>(Lark;Lasa;Lare;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p1, p0, Larl;->c:Lark;

    iput-object p3, p0, Larl;->a:Lare;

    iput-object p4, p0, Larl;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lasc;-><init>(Lasa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Larl;->a:Lare;

    iget-object v1, p0, Larl;->b:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lare;->a(Lare;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
