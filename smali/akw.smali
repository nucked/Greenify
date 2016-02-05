.class Lakw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lakt;


# direct methods
.method constructor <init>(Lakt;)V
    .locals 0

    iput-object p1, p0, Lakw;->a:Lakt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lakw;->a:Lakt;

    invoke-virtual {v0}, Lakt;->c()V

    return-void
.end method
