.class Lako;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lajf;

.field final synthetic b:Lakn;


# direct methods
.method constructor <init>(Lakn;Lajf;)V
    .locals 0

    iput-object p1, p0, Lako;->b:Lakn;

    iput-object p2, p0, Lako;->a:Lajf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lako;->b:Lakn;

    iget-object v0, v0, Lakn;->a:Lakl;

    invoke-virtual {v0}, Lakl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lako;->b:Lakn;

    iget-object v0, v0, Lakn;->a:Lakl;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lakl;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lako;->b:Lakn;

    iget-object v0, v0, Lakn;->a:Lakl;

    iget-object v1, p0, Lako;->a:Lajf;

    invoke-static {v0, v1}, Lakl;->a(Lakl;Lajf;)V

    :cond_0
    return-void
.end method
