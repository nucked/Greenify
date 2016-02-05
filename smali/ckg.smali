.class Lckg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcke;


# direct methods
.method constructor <init>(Lcke;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lckg;->a:Lcke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lckg;->a:Lcke;

    invoke-static {v0}, Lcke;->b(Lcke;)V

    .line 1273
    return-void
.end method
