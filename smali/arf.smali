.class Larf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lare;


# direct methods
.method constructor <init>(Lare;)V
    .locals 0

    iput-object p1, p0, Larf;->a:Lare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Larf;->a:Lare;

    invoke-static {v0}, Lare;->b(Lare;)Lavu;

    move-result-object v0

    iget-object v1, p0, Larf;->a:Lare;

    invoke-static {v1}, Lare;->a(Lare;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavu;->b(Landroid/content/Context;)V

    return-void
.end method
