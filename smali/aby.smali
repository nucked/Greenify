.class Laby;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lagv;

.field private c:Lagu;

.field private d:Lagu;


# direct methods
.method constructor <init>(Landroid/view/View;Lagv;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Laby;->a:Landroid/view/View;

    .line 39
    iput-object p2, p0, Laby;->b:Lagv;

    .line 40
    return-void
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laby;->d:Lagu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laby;->d:Lagu;

    iget-object v0, v0, Lagu;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Laby;->b:Lagv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laby;->b:Lagv;

    invoke-virtual {v0, p1}, Lagv;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Laby;->b(Landroid/content/res/ColorStateList;)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Laby;->d:Lagu;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    iput-object v0, p0, Laby;->d:Lagu;

    .line 82
    :cond_0
    iget-object v0, p0, Laby;->d:Lagu;

    iput-object p1, v0, Lagu;->a:Landroid/content/res/ColorStateList;

    .line 83
    iget-object v0, p0, Laby;->d:Lagu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lagu;->d:Z

    .line 85
    invoke-virtual {p0}, Laby;->c()V

    .line 86
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Laby;->d:Lagu;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    iput-object v0, p0, Laby;->d:Lagu;

    .line 96
    :cond_0
    iget-object v0, p0, Laby;->d:Lagu;

    iput-object p1, v0, Lagu;->b:Landroid/graphics/PorterDuff$Mode;

    .line 97
    iget-object v0, p0, Laby;->d:Lagu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lagu;->c:Z

    .line 99
    invoke-virtual {p0}, Laby;->c()V

    .line 100
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laby;->b(Landroid/content/res/ColorStateList;)V

    .line 76
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Laby;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lym;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    :try_start_0
    sget v0, Lym;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Laby;->b:Lagv;

    sget v2, Lym;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lagv;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Laby;->b(Landroid/content/res/ColorStateList;)V

    .line 53
    :cond_0
    sget v0, Lym;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Laby;->a:Landroid/view/View;

    sget v2, Lym;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Lou;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 57
    :cond_1
    sget v0, Lym;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Laby;->a:Landroid/view/View;

    sget v2, Lym;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lyn;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Lou;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Laby;->d:Lagu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laby;->d:Lagu;

    iget-object v0, v0, Lagu;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Laby;->c:Lagu;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    iput-object v0, p0, Laby;->c:Lagu;

    .line 123
    :cond_0
    iget-object v0, p0, Laby;->c:Lagu;

    iput-object p1, v0, Lagu;->a:Landroid/content/res/ColorStateList;

    .line 124
    iget-object v0, p0, Laby;->c:Lagu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lagu;->d:Z

    .line 128
    :goto_0
    invoke-virtual {p0}, Laby;->c()V

    .line 129
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Laby;->c:Lagu;

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Laby;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Laby;->d:Lagu;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Laby;->d:Lagu;

    iget-object v2, p0, Laby;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lagv;->a(Landroid/graphics/drawable/Drawable;Lagu;[I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Laby;->c:Lagu;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Laby;->c:Lagu;

    iget-object v2, p0, Laby;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lagv;->a(Landroid/graphics/drawable/Drawable;Lagu;[I)V

    goto :goto_0
.end method
