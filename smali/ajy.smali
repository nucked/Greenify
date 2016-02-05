.class Lajy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lajx;


# direct methods
.method constructor <init>(Lajx;Z)V
    .locals 0

    iput-object p1, p0, Lajy;->b:Lajx;

    iput-boolean p2, p0, Lajy;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lajy;->b:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    iget-boolean v1, p0, Lajy;->a:Z

    invoke-virtual {v0, v1}, Lakt;->a(Z)V

    return-void
.end method
