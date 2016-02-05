.class Lcge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcgc;


# direct methods
.method constructor <init>(Lcgc;I)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcge;->b:Lcgc;

    iput p2, p0, Lcge;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcge;->b:Lcgc;

    iget-object v0, v0, Lcgc;->d:Lcgb;

    iget-object v0, v0, Lcgb;->e:Lcga;

    iget-object v1, p0, Lcge;->b:Lcgc;

    iget-object v1, v1, Lcgc;->b:Landroid/content/Intent;

    iget v2, p0, Lcge;->a:I

    invoke-virtual {v0, v1, v2}, Lcga;->a(Landroid/content/Intent;I)V

    .line 103
    return-void
.end method
