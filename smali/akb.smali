.class Lakb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .locals 0

    iput-object p1, p0, Lakb;->a:Lajx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lakt;

    move-result-object v0

    invoke-virtual {v0}, Lakt;->h()V

    return-void
.end method
