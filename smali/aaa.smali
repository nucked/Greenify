.class Laaa;
.super Lzv;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lkp;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lzv;-><init>(Landroid/content/Context;Lkp;)V

    .line 36
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Lzw;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Laab;

    iget-object v1, p0, Laaa;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Laab;-><init>(Laaa;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
