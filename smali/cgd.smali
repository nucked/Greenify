.class Lcgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcgc;


# direct methods
.method constructor <init>(Lcgc;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcgd;->a:Lcgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcgd;->a:Lcgc;

    iget-object v0, v0, Lcgc;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcgd;->a:Lcgc;

    iget v1, v1, Lcgc;->c:I

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcga;->a(Ljava/lang/String;II)V

    .line 100
    return-void
.end method
