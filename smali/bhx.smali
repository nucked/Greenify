.class Lbhx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbhu;


# direct methods
.method constructor <init>(Lbhu;)V
    .locals 0

    iput-object p1, p0, Lbhx;->a:Lbhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbhx;->a:Lbhu;

    invoke-static {v0}, Lbhu;->e(Lbhu;)Lbex;

    move-result-object v0

    invoke-interface {v0}, Lbex;->a()V

    return-void
.end method
