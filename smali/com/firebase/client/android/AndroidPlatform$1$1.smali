.class Lcom/firebase/client/android/AndroidPlatform$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/android/AndroidPlatform$1;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/AndroidPlatform$1;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/firebase/client/android/AndroidPlatform$1$1;->this$1:Lcom/firebase/client/android/AndroidPlatform$1;

    iput-object p2, p0, Lcom/firebase/client/android/AndroidPlatform$1$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/android/AndroidPlatform$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/firebase/client/android/AndroidPlatform$1$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/client/android/AndroidPlatform$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
