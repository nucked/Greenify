.class Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/utilities/DefaultRunLoop;


# direct methods
.method private constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop;Lcom/firebase/client/utilities/DefaultRunLoop$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 13
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/DefaultRunLoop;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/DefaultRunLoop;->getThreadInitializer()Lcom/firebase/client/core/ThreadInitializer;

    move-result-object v1

    .line 15
    const-string v2, "FirebaseWorker"

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    .line 17
    new-instance v2, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;

    invoke-direct {v2, p0}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;)V

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/core/ThreadInitializer;->setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 23
    return-object v0
.end method
