.class public Lbyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/CleanerService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lbyp;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lbyp;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->a(Lcom/oasisfeng/greenify/CleanerService;)Lbwn;

    move-result-object v0

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "Cleaner"

    const-string v1, "Background sync completed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lbyp;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->b(Lcom/oasisfeng/greenify/CleanerService;)Z

    goto :goto_0
.end method
