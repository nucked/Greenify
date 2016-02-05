.class Lbxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lbxj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbxj",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lbxh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbxh",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbxj;Lbxh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbxj",
            "<TT;>;",
            "Lbxh",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lbxi;->a:Lbxj;

    .line 60
    iput-object p2, p0, Lbxi;->b:Lbxh;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lbxi;->a:Lbxj;

    invoke-interface {v0}, Lbxj;->b()Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lbxi;->b:Lbxh;

    invoke-interface {v1, v0}, Lbxh;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
