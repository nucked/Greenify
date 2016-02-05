.class public Lacb;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lagv;

.field private c:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Lacb;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lacb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {p0}, Lacw;->a(Landroid/widget/TextView;)Lacw;

    move-result-object v0

    iput-object v0, p0, Lacb;->c:Lacw;

    .line 51
    iget-object v0, p0, Lacb;->c:Lacw;

    invoke-virtual {v0, p2, p3}, Lacw;->a(Landroid/util/AttributeSet;I)V

    .line 52
    iget-object v0, p0, Lacb;->c:Lacw;

    invoke-virtual {v0}, Lacw;->a()V

    .line 54
    sget-boolean v0, Lagv;->a:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lacb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lacb;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Lagx;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lagx;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lacb;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {v0}, Lagx;->a()V

    .line 60
    invoke-virtual {v0}, Lagx;->b()Lagv;

    move-result-object v0

    iput-object v0, p0, Lacb;->b:Lagv;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 84
    iget-object v0, p0, Lacb;->c:Lacw;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lacb;->c:Lacw;

    invoke-virtual {v0}, Lacw;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lacb;->b:Lagv;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lacb;->b:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lacb;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 76
    iget-object v0, p0, Lacb;->c:Lacw;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lacb;->c:Lacw;

    invoke-virtual {v0, p1, p2}, Lacw;->a(Landroid/content/Context;I)V

    .line 79
    :cond_0
    return-void
.end method
