.class Lakd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .locals 0

    iput-object p1, p0, Lakd;->a:Lajx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lakd;->a:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    invoke-virtual {v0}, Lakt;->F()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lakd;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
