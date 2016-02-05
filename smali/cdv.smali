.class Lcdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcdu;


# direct methods
.method constructor <init>(Lcdu;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcdv;->a:Lcdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcdv;->a:Lcdu;

    invoke-static {v1}, Lcdu;->a(Lcdu;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    new-instance v1, Lcdw;

    invoke-direct {v1, p0, v0}, Lcdw;-><init>(Lcdv;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
