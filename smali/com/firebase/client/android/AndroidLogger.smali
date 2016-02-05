.class public Lcom/firebase/client/android/AndroidLogger;
.super Lcom/firebase/client/utilities/DefaultLogger;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V
    .locals 0
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
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/utilities/DefaultLogger;-><init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected buildLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    return-object p3
.end method

.method protected debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method protected info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method protected warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
