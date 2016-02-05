.class Lbjf;
.super Ljava/lang/Object;

# interfaces
.implements Lbjg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbjg",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbje;


# direct methods
.method constructor <init>(Lbje;)V
    .locals 0

    iput-object p1, p0, Lbjf;->a:Lbje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
