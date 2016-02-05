.class Ljl;
.super Ljr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljr",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Ljl;->a:Ljj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljr;-><init>(Ljk;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ljl;->a:Ljj;

    invoke-static {v0}, Ljj;->a(Ljj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    iget-object v0, p0, Ljl;->a:Ljj;

    iget-object v1, p0, Ljl;->a:Ljj;

    iget-object v2, p0, Ljl;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljj;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljj;->a(Ljj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
