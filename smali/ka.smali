.class Lka;
.super Ljz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-static {p1, p2}, Lkh;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 137
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {p1}, Lkh;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Lkh;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
