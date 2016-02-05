.class public Lbwm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field private final a:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lbwm;->a:Landroid/hardware/display/DisplayManager;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lbwm;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
