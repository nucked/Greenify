.class Lxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lxe;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lxe;->a:Lxb;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lxb;->c(Lxb;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 416
    return-void
.end method
