.class Ljy;
.super Ljw;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p1}, Lkg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Lkg;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
