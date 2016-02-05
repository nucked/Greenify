.class Lcak;
.super Lbxf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbxf",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcak;->a:Lbzh;

    invoke-direct {p0, p2}, Lbxf;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lckn;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcbb;->a(Landroid/content/Context;Z)V

    .line 307
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/oasisfeng/greenify/CleanerService;->e(Landroid/content/Context;)V

    .line 309
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/oasisfeng/greenify/CleanerService;->a(Landroid/content/Context;)V

    .line 310
    return-void

    .line 308
    :cond_1
    invoke-static {p1}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/oasisfeng/greenify/CleanerService;->f(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcak;->a(Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcak;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
