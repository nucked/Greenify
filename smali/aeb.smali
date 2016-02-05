.class Laeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 1086
    iput-object p1, p0, Laeb;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Laeb;->a:Ladz;

    invoke-virtual {v0}, Ladz;->e()Landroid/view/View;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Laeb;->a:Ladz;

    invoke-virtual {v0}, Ladz;->c()V

    .line 1093
    :cond_0
    return-void
.end method
