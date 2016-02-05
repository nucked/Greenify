.class public abstract Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Lb;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lh;

    invoke-static {p2}, Ln;->a(Landroid/os/IBinder;)Lm;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lh;-><init>(Lg;Lm;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Lg;->a(Landroid/content/ComponentName;Lb;)V

    .line 35
    return-void
.end method
