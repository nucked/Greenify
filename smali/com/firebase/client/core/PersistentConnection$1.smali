.class Lcom/firebase/client/core/PersistentConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$1;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$1;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->establishConnection()V

    .line 427
    return-void
.end method
