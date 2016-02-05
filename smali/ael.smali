.class Lael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method private constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 1788
    iput-object p1, p0, Lael;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ladz;Laea;)V
    .locals 0

    .prologue
    .line 1788
    invoke-direct {p0, p1}, Lael;-><init>(Ladz;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lael;->a:Ladz;

    invoke-static {v0}, Ladz;->a(Ladz;)Laed;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->a:Ladz;

    invoke-static {v0}, Ladz;->a(Ladz;)Laed;

    move-result-object v0

    invoke-static {v0}, Lou;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->a:Ladz;

    invoke-static {v0}, Ladz;->a(Ladz;)Laed;

    move-result-object v0

    invoke-virtual {v0}, Laed;->getCount()I

    move-result v0

    iget-object v1, p0, Lael;->a:Ladz;

    invoke-static {v1}, Ladz;->a(Ladz;)Laed;

    move-result-object v1

    invoke-virtual {v1}, Laed;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lael;->a:Ladz;

    invoke-static {v0}, Ladz;->a(Ladz;)Laed;

    move-result-object v0

    invoke-virtual {v0}, Laed;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lael;->a:Ladz;

    iget v1, v1, Ladz;->b:I

    if-gt v0, v1, :cond_0

    .line 1793
    iget-object v0, p0, Lael;->a:Ladz;

    invoke-static {v0}, Ladz;->b(Ladz;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1794
    iget-object v0, p0, Lael;->a:Ladz;

    invoke-virtual {v0}, Ladz;->c()V

    .line 1796
    :cond_0
    return-void
.end method
