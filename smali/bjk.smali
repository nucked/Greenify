.class Lbjk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbji;

.field private final b:Lbdj;


# direct methods
.method public constructor <init>(Lbji;Lbdj;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbjk;->a:Lbji;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lbjk;->b:Lbdj;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lbjk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbjk;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbjk;->b:Lbdj;

    iget-object v1, p0, Lbjk;->a:Lbji;

    invoke-interface {v0, v1, p1}, Lbdj;->a(Lbdi;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Don\'t know how to handle this message."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbjk;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
