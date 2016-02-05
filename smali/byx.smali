.class public Lbyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeService;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lbyx;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lbyx;->a:Lcom/oasisfeng/greenify/DozeService;

    iget-object v1, p0, Lbyx;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v1}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Display changed"

    invoke-static {v0, v1, v2}, Lcom/oasisfeng/greenify/DozeService;->a(Lcom/oasisfeng/greenify/DozeService;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
