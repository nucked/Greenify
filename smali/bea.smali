.class Lbea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbdy;


# direct methods
.method constructor <init>(Lbdy;)V
    .locals 0

    iput-object p1, p0, Lbea;->a:Lbdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbea;->a:Lbdy;

    invoke-static {v0}, Lbdy;->b(Lbdy;)V

    return-void
.end method
