.class public abstract Ldn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ldo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Ldq;

    invoke-direct {v0}, Ldq;-><init>()V

    sput-object v0, Ldn;->a:Ldo;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Ldp;

    invoke-direct {v0}, Ldp;-><init>()V

    sput-object v0, Ldn;->a:Ldo;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ldn;->a:Ldo;

    invoke-interface {v0, p0}, Ldo;->a(Landroid/view/View;)V

    .line 44
    return-void
.end method
