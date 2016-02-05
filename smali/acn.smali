.class public Lacn;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Laco;

.field private b:Lagv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lyc;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lacn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {p1}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    iput-object v0, p0, Lacn;->b:Lagv;

    .line 48
    new-instance v0, Laco;

    iget-object v1, p0, Lacn;->b:Lagv;

    invoke-direct {v0, p0, v1}, Laco;-><init>(Landroid/widget/SeekBar;Lagv;)V

    iput-object v0, p0, Lacn;->a:Laco;

    .line 49
    iget-object v0, p0, Lacn;->a:Laco;

    invoke-virtual {v0, p2, p3}, Laco;->a(Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method
