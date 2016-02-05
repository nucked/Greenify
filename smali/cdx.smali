.class Lcdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/IntentFilter;

.field final synthetic b:Lcdu;


# direct methods
.method constructor <init>(Lcdu;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcdx;->b:Lcdu;

    iput-object p2, p0, Lcdx;->a:Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcdx;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
