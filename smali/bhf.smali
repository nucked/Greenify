.class Lbhf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbhe;


# direct methods
.method constructor <init>(Lbhe;)V
    .locals 0

    iput-object p1, p0, Lbhf;->a:Lbhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbhf;->a:Lbhe;

    invoke-virtual {v0}, Lbhe;->c()V

    return-void
.end method
