.class final Lbxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbxj",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lbxg;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbxg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 48
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lei;->h()Lel;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lbxg;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
