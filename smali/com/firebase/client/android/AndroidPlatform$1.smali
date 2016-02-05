.class Lcom/firebase/client/android/AndroidPlatform$1;
.super Lcom/firebase/client/utilities/DefaultRunLoop;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/firebase/client/android/AndroidPlatform;

.field final synthetic val$logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/AndroidPlatform;Lcom/firebase/client/utilities/LogWrapper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/firebase/client/android/AndroidPlatform$1;->this$0:Lcom/firebase/client/android/AndroidPlatform;

    iput-object p2, p0, Lcom/firebase/client/android/AndroidPlatform$1;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-direct {p0}, Lcom/firebase/client/utilities/DefaultRunLoop;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uncaught exception in Firebase runloop ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Please report to support@firebase.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/firebase/client/android/AndroidPlatform$1;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1, v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/firebase/client/android/AndroidPlatform$1;->this$0:Lcom/firebase/client/android/AndroidPlatform;

    # getter for: Lcom/firebase/client/android/AndroidPlatform;->applicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/firebase/client/android/AndroidPlatform;->access$000(Lcom/firebase/client/android/AndroidPlatform;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance v2, Lcom/firebase/client/android/AndroidPlatform$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/firebase/client/android/AndroidPlatform$1$1;-><init>(Lcom/firebase/client/android/AndroidPlatform$1;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
