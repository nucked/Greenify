.class Lew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu;


# direct methods
.method constructor <init>(Leu;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lew;->a:Leu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 577
    iget-object v0, p0, Lew;->a:Leu;

    iget-object v1, p0, Lew;->a:Leu;

    iget-object v1, v1, Leu;->o:Ler;

    invoke-virtual {v1}, Ler;->h()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Leu;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 578
    return-void
.end method
