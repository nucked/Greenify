.class Lfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lez;


# direct methods
.method constructor <init>(Lez;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lfb;->a:Lez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lfb;->a:Lez;

    invoke-static {v0}, Lez;->a(Lez;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lou;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 464
    return-void
.end method
