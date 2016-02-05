.class Lajz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lajx;


# direct methods
.method constructor <init>(Lajx;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lajz;->c:Lajx;

    iput-object p2, p0, Lajz;->a:Ljava/lang/String;

    iput-object p3, p0, Lajz;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lajz;->c:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    iget-object v1, p0, Lajz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakt;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lajz;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajz;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
