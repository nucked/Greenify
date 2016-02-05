.class Lalc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lala;


# direct methods
.method constructor <init>(Lala;)V
    .locals 0

    iput-object p1, p0, Lalc;->a:Lala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lalc;->a:Lala;

    invoke-static {v0}, Lala;->a(Lala;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lalc;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
