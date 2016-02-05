.class Lbew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbeu;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbev;


# direct methods
.method constructor <init>(Lbev;Lbeu;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lbew;->d:Lbev;

    iput-object p2, p0, Lbew;->a:Lbeu;

    iput-wide p3, p0, Lbew;->b:J

    iput-object p5, p0, Lbew;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lbew;->d:Lbev;

    invoke-static {v0}, Lbev;->a(Lbev;)Lbex;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lbhu;->c()Lbhu;

    move-result-object v0

    iget-object v1, p0, Lbew;->d:Lbev;

    invoke-static {v1}, Lbev;->b(Lbev;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbew;->a:Lbeu;

    invoke-virtual {v0, v1, v2}, Lbhu;->a(Landroid/content/Context;Lbeu;)V

    iget-object v1, p0, Lbew;->d:Lbev;

    invoke-virtual {v0}, Lbhu;->d()Lbex;

    move-result-object v0

    invoke-static {v1, v0}, Lbev;->a(Lbev;Lbex;)Lbex;

    :cond_0
    iget-object v0, p0, Lbew;->d:Lbev;

    invoke-static {v0}, Lbev;->a(Lbev;)Lbex;

    move-result-object v0

    iget-wide v2, p0, Lbew;->b:J

    iget-object v1, p0, Lbew;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lbex;->a(JLjava/lang/String;)V

    return-void
.end method
