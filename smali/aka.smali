.class Laka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laje;

.field final synthetic b:Lajx;


# direct methods
.method constructor <init>(Lajx;Laje;)V
    .locals 0

    iput-object p1, p0, Laka;->b:Lajx;

    iput-object p2, p0, Laka;->a:Laje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laka;->b:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    iget-object v1, p0, Laka;->a:Laje;

    invoke-virtual {v0, v1}, Lakt;->a(Laje;)V

    return-void
.end method
