.class Laki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lakh;


# direct methods
.method constructor <init>(Lakh;)V
    .locals 0

    iput-object p1, p0, Laki;->a:Lakh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Laki;->a:Lakh;

    invoke-virtual {v0}, Lakh;->g()Lajk;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lajk;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
