.class public Lop;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Los;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lor;

    invoke-direct {v0}, Lor;-><init>()V

    sput-object v0, Lop;->a:Los;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Loq;

    invoke-direct {v0}, Loq;-><init>()V

    sput-object v0, Lop;->a:Los;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lop;->a:Los;

    invoke-interface {v0, p0, p1}, Los;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lop;->a:Los;

    invoke-interface {v0, p0, p1}, Los;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
