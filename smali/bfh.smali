.class Lbfh;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjg;

.field final synthetic b:Lbfg;


# direct methods
.method constructor <init>(Lbfg;ILbjg;)V
    .locals 0

    iput-object p1, p0, Lbfh;->b:Lbfg;

    iput-object p3, p0, Lbfh;->a:Lbjg;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lbfh;->a:Lbjg;

    invoke-interface {v0, p1, p2}, Lbjg;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
