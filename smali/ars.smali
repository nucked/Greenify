.class Lars;
.super Ljava/lang/Object;

# interfaces
.implements Laqc;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lasn;

.field final synthetic c:Larp;


# direct methods
.method constructor <init>(Larp;Ljava/util/concurrent/atomic/AtomicReference;Lasn;)V
    .locals 0

    iput-object p1, p0, Lars;->c:Larp;

    iput-object p2, p0, Lars;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lars;->b:Lasn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lars;->c:Larp;

    iget-object v0, p0, Lars;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    iget-object v2, p0, Lars;->b:Lasn;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Larp;->a(Larp;Lapz;Lasn;Z)V

    return-void
.end method
