.class public Lcgj;
.super Lcjv;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, ".SyncStateSwitchPreference"

    :goto_0
    sput-object v0, Lcgj;->h:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ".SyncStateCheckBoxPreference"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcjv;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcgj;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcgj;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "reveal_hidden_sync"

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    const-class v0, Landroid/content/SyncAdapterType;

    const-string v1, "isUserVisible"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcgj;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgk;

    invoke-direct {v1, p0}, Lcgk;-><init>(Lcgj;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 38
    const-class v0, Landroid/preference/Preference;

    const-string v1, "setKey"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcgj;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgl;

    invoke-direct {v1, p0}, Lcgl;-><init>(Lcgj;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 47
    const-string v0, "AllSync"

    const-string v1, "Feature activated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
