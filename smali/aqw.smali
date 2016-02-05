.class public Laqw;
.super Ljava/lang/Object;

# interfaces
.implements Laqc;
.implements Laqd;


# instance fields
.field public final a:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lasb;


# direct methods
.method public constructor <init>(Lapm;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapm",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqw;->a:Lapm;

    iput p2, p0, Laqw;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Laqw;->c:Lasb;

    const-string v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-direct {p0}, Laqw;->a()V

    iget-object v0, p0, Laqw;->c:Lasb;

    invoke-virtual {v0, p1}, Lasb;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Laqw;->a()V

    iget-object v0, p0, Laqw;->c:Lasb;

    invoke-virtual {v0, p1}, Lasb;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lasb;)V
    .locals 0

    iput-object p1, p0, Laqw;->c:Lasb;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Laqw;->a()V

    iget-object v0, p0, Laqw;->c:Lasb;

    iget-object v1, p0, Laqw;->a:Lapm;

    iget v2, p0, Laqw;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lasb;->a(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V

    return-void
.end method
