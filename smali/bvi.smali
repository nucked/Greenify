.class final Lbvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbqg",
        "<",
        "Landroid/app/Notification$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lbvi;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lbvi;->b(Ljava/lang/reflect/Type;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Type;)Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lbvi;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method
