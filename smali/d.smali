.class public final Ld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Ld;->a:Landroid/content/Intent;

    .line 158
    iput-object p2, p0, Ld;->b:Landroid/os/Bundle;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Le;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ld;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
