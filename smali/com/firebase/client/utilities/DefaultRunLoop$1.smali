.class Lcom/firebase/client/utilities/DefaultRunLoop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$1;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    iput-object p2, p0, Lcom/firebase/client/utilities/DefaultRunLoop$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$1;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/DefaultRunLoop;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
