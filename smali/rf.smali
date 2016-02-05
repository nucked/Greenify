.class public Lrf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lrj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lrh;

    invoke-direct {v0}, Lrh;-><init>()V

    sput-object v0, Lrf;->a:Lrj;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    sput-object v0, Lrf;->a:Lrj;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lri;

    invoke-direct {v0}, Lri;-><init>()V

    sput-object v0, Lrf;->a:Lrj;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Lso;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lso;

    invoke-direct {v0, p0}, Lso;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lrf;->a:Lrj;

    invoke-interface {v0, p0, p1}, Lrj;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 297
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lrf;->a:Lrj;

    invoke-interface {v0, p0}, Lrj;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
