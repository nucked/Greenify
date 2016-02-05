.class Lakc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laln;

.field final synthetic b:Lajx;


# direct methods
.method constructor <init>(Lajx;Laln;)V
    .locals 0

    iput-object p1, p0, Lakc;->b:Lajx;

    iput-object p2, p0, Lakc;->a:Laln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lakc;->b:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    iget-object v1, p0, Lakc;->a:Laln;

    invoke-virtual {v0, v1}, Lakt;->a(Laln;)V

    return-void
.end method
