.class final Lxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laaf;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method private constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Lxj;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxb;Lxc;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0, p1}, Lxj;-><init>(Lxb;)V

    return-void
.end method


# virtual methods
.method public a(Lzp;Z)V
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lxj;->a:Lxb;

    invoke-static {v0, p1}, Lxb;->a(Lxb;Lzp;)V

    .line 1780
    return-void
.end method

.method public a(Lzp;)Z
    .locals 2

    .prologue
    .line 1770
    iget-object v0, p0, Lxj;->a:Lxb;

    invoke-virtual {v0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1771
    if-eqz v0, :cond_0

    .line 1772
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1774
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
