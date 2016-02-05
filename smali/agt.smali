.class Lagt;
.super Lagb;
.source "SourceFile"


# instance fields
.field private final a:Lagv;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lagv;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lagb;-><init>(Landroid/content/res/Resources;)V

    .line 60
    iput-object p2, p0, Lagt;->a:Lagv;

    .line 61
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lagb;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lagt;->a:Lagv;

    invoke-virtual {v1, p1, v0}, Lagv;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 74
    :cond_0
    return-object v0
.end method
