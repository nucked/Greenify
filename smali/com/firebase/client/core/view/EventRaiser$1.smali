.class Lcom/firebase/client/core/view/EventRaiser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/EventRaiser;

.field final synthetic val$eventsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/EventRaiser;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/firebase/client/core/view/EventRaiser$1;->this$0:Lcom/firebase/client/core/view/EventRaiser;

    iput-object p2, p0, Lcom/firebase/client/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/client/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Event;

    .line 37
    iget-object v2, p0, Lcom/firebase/client/core/view/EventRaiser$1;->this$0:Lcom/firebase/client/core/view/EventRaiser;

    # getter for: Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v2}, Lcom/firebase/client/core/view/EventRaiser;->access$000(Lcom/firebase/client/core/view/EventRaiser;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/view/EventRaiser$1;->this$0:Lcom/firebase/client/core/view/EventRaiser;

    # getter for: Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v2}, Lcom/firebase/client/core/view/EventRaiser;->access$000(Lcom/firebase/client/core/view/EventRaiser;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raising "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/firebase/client/core/view/Event;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-interface {v0}, Lcom/firebase/client/core/view/Event;->fire()V

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method
