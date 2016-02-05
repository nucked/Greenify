.class final Lbpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;

.field c:Lbpj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lbpj;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lbpj;->a:Ljava/lang/Runnable;

    .line 173
    iput-object p2, p0, Lbpj;->b:Ljava/util/concurrent/Executor;

    .line 174
    iput-object p3, p0, Lbpj;->c:Lbpj;

    .line 175
    return-void
.end method
