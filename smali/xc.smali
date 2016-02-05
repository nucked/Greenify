.class Lxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lxc;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lxc;->a:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lxc;->a:Lxb;

    invoke-static {v0, v2}, Lxb;->a(Lxb;I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lxc;->a:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lxc;->a:Lxb;

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Lxb;->a(Lxb;I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lxc;->a:Lxb;

    invoke-static {v0, v2}, Lxb;->a(Lxb;Z)Z

    .line 132
    iget-object v0, p0, Lxc;->a:Lxb;

    invoke-static {v0, v2}, Lxb;->b(Lxb;I)I

    .line 133
    return-void
.end method
