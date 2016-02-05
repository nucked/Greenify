.class Lcdh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcdg;


# direct methods
.method constructor <init>(Lcdg;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcdh;->a:Lcdg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->b(Lccz;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcdh;->a:Lcdg;

    iget-object v1, v1, Lcdg;->a:Lccz;

    invoke-static {v1}, Lccz;->a(Lccz;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 292
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcdi;->b(I)V

    .line 294
    :cond_0
    :goto_1
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcdi;->c(I)V

    .line 284
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->d(Lccz;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcdh;->a:Lcdg;

    iget-object v1, v1, Lcdg;->a:Lccz;

    invoke-static {v1}, Lccz;->b(Lccz;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v1

    invoke-interface {v1, v0}, Lbvt;->b(Ljava/lang/String;)Z

    goto :goto_1

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcdi;->a(I)V

    .line 288
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->d(Lccz;)Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcdh;->a:Lcdg;

    iget-object v1, v1, Lcdg;->a:Lccz;

    invoke-static {v1}, Lccz;->b(Lccz;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v1

    invoke-interface {v1, v0}, Lbvt;->c(Ljava/lang/String;)Z

    goto :goto_1

    .line 291
    :pswitch_2
    iget-object v0, p0, Lcdh;->a:Lcdg;

    iget-object v0, v0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcdi;->b(I)V

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
