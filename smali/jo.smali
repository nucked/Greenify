.class Ljo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljj;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Ljj;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Ljo;->a:Ljj;

    .line 503
    iput-object p2, p0, Ljo;->b:[Ljava/lang/Object;

    .line 504
    return-void
.end method
