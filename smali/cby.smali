.class public final enum Lcby;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcby;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcby;

.field public static final enum b:Lcby;

.field public static final enum c:Lcby;

.field public static final enum d:Lcby;

.field public static final enum e:Lcby;

.field public static final enum f:Lcby;

.field public static final enum g:Lcby;

.field public static final enum h:Lcby;

.field public static final enum i:Lcby;

.field private static final synthetic j:[Lcby;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    new-instance v0, Lcby;

    const-string v1, "HibernationFailure"

    invoke-direct {v0, v1, v3}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->a:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Activity"

    invoke-direct {v0, v1, v4}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->b:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Service"

    invoke-direct {v0, v1, v5}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->c:Lcby;

    new-instance v0, Lcby;

    const-string v1, "ContentProvider"

    invoke-direct {v0, v1, v6}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->d:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Backup"

    invoke-direct {v0, v1, v7}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->e:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Broadcast"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->f:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Direct"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->g:Lcby;

    new-instance v0, Lcby;

    const-string v1, "GCM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->h:Lcby;

    new-instance v0, Lcby;

    const-string v1, "Other"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcby;->i:Lcby;

    .line 308
    const/16 v0, 0x9

    new-array v0, v0, [Lcby;

    sget-object v1, Lcby;->a:Lcby;

    aput-object v1, v0, v3

    sget-object v1, Lcby;->b:Lcby;

    aput-object v1, v0, v4

    sget-object v1, Lcby;->c:Lcby;

    aput-object v1, v0, v5

    sget-object v1, Lcby;->d:Lcby;

    aput-object v1, v0, v6

    sget-object v1, Lcby;->e:Lcby;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcby;->f:Lcby;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcby;->g:Lcby;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcby;->h:Lcby;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcby;->i:Lcby;

    aput-object v2, v0, v1

    sput-object v0, Lcby;->j:[Lcby;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcby;
    .locals 1

    .prologue
    .line 308
    const-class v0, Lcby;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcby;

    return-object v0
.end method

.method public static values()[Lcby;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcby;->j:[Lcby;

    invoke-virtual {v0}, [Lcby;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcby;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcby;->f:Lcby;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcby;->h:Lcby;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcby;->c:Lcby;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
