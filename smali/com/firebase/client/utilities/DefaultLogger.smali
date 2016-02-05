.class public Lcom/firebase/client/utilities/DefaultLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Logger;


# instance fields
.field private final enabledComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minLevel:Lcom/firebase/client/Logger$Level;


# direct methods
.method public constructor <init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/Logger$Level;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p2, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/firebase/client/utilities/DefaultLogger;->enabledComponents:Ljava/util/Set;

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultLogger;->minLevel:Lcom/firebase/client/Logger$Level;

    .line 27
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/utilities/DefaultLogger;->enabledComponents:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public buildLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public getLogLevel()Lcom/firebase/client/Logger$Level;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultLogger;->minLevel:Lcom/firebase/client/Logger$Level;

    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/utilities/DefaultLogger;->shouldLog(Lcom/firebase/client/Logger$Level;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual/range {p0 .. p5}, Lcom/firebase/client/utilities/DefaultLogger;->buildLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/firebase/client/utilities/DefaultLogger$1;->$SwitchMap$com$firebase$client$Logger$Level:[I

    invoke-virtual {p1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lcom/firebase/client/utilities/DefaultLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lcom/firebase/client/utilities/DefaultLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, p2, v0}, Lcom/firebase/client/utilities/DefaultLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-virtual {p0, p2, v0}, Lcom/firebase/client/utilities/DefaultLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected shouldLog(Lcom/firebase/client/Logger$Level;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/firebase/client/utilities/DefaultLogger;->minLevel:Lcom/firebase/client/Logger$Level;

    invoke-virtual {v1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultLogger;->enabledComponents:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    invoke-virtual {v1}, Lcom/firebase/client/Logger$Level;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultLogger;->enabledComponents:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method
