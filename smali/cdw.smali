.class Lcdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcdv;


# direct methods
.method constructor <init>(Lcdv;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcdw;->b:Lcdv;

    iput-object p2, p0, Lcdw;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcdw;->b:Lcdv;

    iget-object v0, v0, Lcdv;->a:Lcdu;

    iget-object v1, p0, Lcdw;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcdu;->a(Ljava/util/Collection;)V

    .line 322
    return-void
.end method
