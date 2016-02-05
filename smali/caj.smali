.class Lcaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcaj;->a:Lbzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcaj;->a:Lbzh;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lbzh;->a(Lbzh;I)I

    .line 296
    return-void
.end method
