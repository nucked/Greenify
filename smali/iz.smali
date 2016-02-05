.class Liz;
.super Liy;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Liy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Ljb;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
