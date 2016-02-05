.class Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;
.super Landroid/content/pm/ActivityInfo;
.source "SourceFile"

# interfaces
.implements Lchw;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Landroid/content/IntentFilter;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;->a:Ljava/util/List;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method
