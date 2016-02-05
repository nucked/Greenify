.class Lbkd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbdq;

.field final synthetic b:Lbkb;


# direct methods
.method constructor <init>(Lbkb;Lbdq;)V
    .locals 0

    iput-object p1, p0, Lbkd;->b:Lbkb;

    iput-object p2, p0, Lbkd;->a:Lbdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbkd;->a:Lbdq;

    iget-object v1, p0, Lbkd;->b:Lbkb;

    invoke-static {v1}, Lbkb;->a(Lbkb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbdq;->a(Ljava/util/List;)V

    return-void
.end method
