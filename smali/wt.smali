.class public abstract Lwt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lws;)Lwt;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lwt;->a(Landroid/content/Context;Landroid/view/Window;Lws;)Lwt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Lws;)Lwt;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lwt;->a(Landroid/content/Context;Landroid/view/Window;Lws;)Lwt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/Window;Lws;)Lwt;
    .locals 2

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 133
    new-instance v0, Lwz;

    invoke-direct {v0, p0, p1, p2}, Lwz;-><init>(Landroid/content/Context;Landroid/view/Window;Lws;)V

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 135
    new-instance v0, Lwx;

    invoke-direct {v0, p0, p1, p2}, Lwx;-><init>(Landroid/content/Context;Landroid/view/Window;Lws;)V

    goto :goto_0

    .line 136
    :cond_1
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 137
    new-instance v0, Lww;

    invoke-direct {v0, p0, p1, p2}, Lww;-><init>(Landroid/content/Context;Landroid/view/Window;Lws;)V

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Lxb;

    invoke-direct {v0, p0, p1, p2}, Lxb;-><init>(Landroid/content/Context;Landroid/view/Window;Lws;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lvx;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
