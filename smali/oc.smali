.class Loc;
.super Lob;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lob;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 128
    invoke-static {p1}, Log;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
