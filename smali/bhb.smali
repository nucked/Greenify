.class Lbhb;
.super Ljava/lang/Object;

# interfaces
.implements Lbhc;


# instance fields
.field final synthetic a:Lbgz;


# direct methods
.method constructor <init>(Lbgz;)V
    .locals 0

    iput-object p1, p0, Lbhb;->a:Lbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjw;)Lbgy;
    .locals 3

    new-instance v0, Lbgy;

    iget-object v1, p0, Lbhb;->a:Lbgz;

    invoke-static {v1}, Lbgz;->a(Lbgz;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbhb;->a:Lbgz;

    invoke-static {v2}, Lbgz;->b(Lbgz;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lbgy;-><init>(Landroid/content/Context;Ljava/lang/String;Lbjw;)V

    return-object v0
.end method
