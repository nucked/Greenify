.class Lbhv;
.super Ljava/lang/Object;

# interfaces
.implements Lbey;


# instance fields
.field final synthetic a:Lbhu;


# direct methods
.method constructor <init>(Lbhu;)V
    .locals 0

    iput-object p1, p0, Lbhv;->a:Lbhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lbhv;->a:Lbhu;

    iget-object v1, p0, Lbhv;->a:Lbhu;

    invoke-static {v1}, Lbhu;->a(Lbhu;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbhu;->a(ZZ)V

    return-void
.end method
