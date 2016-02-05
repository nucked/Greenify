.class Lcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcw;


# direct methods
.method constructor <init>(Lcw;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcx;->a:Lcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcx;->a:Lcw;

    invoke-static {v0}, Lcw;->a(Lcw;)V

    .line 188
    return-void
.end method
