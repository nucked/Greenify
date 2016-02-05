.class Lbhg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbay;

.field final synthetic b:Lbhe;


# direct methods
.method constructor <init>(Lbhe;Lbay;)V
    .locals 0

    iput-object p1, p0, Lbhg;->b:Lbhe;

    iput-object p2, p0, Lbhg;->a:Lbay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbhg;->b:Lbhe;

    iget-object v1, p0, Lbhg;->a:Lbay;

    invoke-virtual {v0, v1}, Lbhe;->b(Lbay;)Z

    return-void
.end method
