.class Laky;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laln;

.field final synthetic b:J

.field final synthetic c:Lakt;


# direct methods
.method constructor <init>(Lakt;Laln;J)V
    .locals 1

    iput-object p1, p0, Laky;->c:Lakt;

    iput-object p2, p0, Laky;->a:Laln;

    iput-wide p3, p0, Laky;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Laky;->c:Lakt;

    iget-object v1, p0, Laky;->a:Laln;

    iget-wide v2, p0, Laky;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lakt;->a(Laln;J)V

    return-void
.end method
