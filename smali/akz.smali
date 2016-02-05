.class public final enum Lakz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lakz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lakz;

.field public static final enum b:Lakz;

.field public static final enum c:Lakz;

.field public static final enum d:Lakz;

.field public static final enum e:Lakz;

.field public static final enum f:Lakz;

.field private static final synthetic g:[Lakz;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lakz;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->a:Lakz;

    new-instance v0, Lakz;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->b:Lakz;

    new-instance v0, Lakz;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->c:Lakz;

    new-instance v0, Lakz;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->d:Lakz;

    new-instance v0, Lakz;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->e:Lakz;

    new-instance v0, Lakz;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lakz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakz;->f:Lakz;

    const/4 v0, 0x6

    new-array v0, v0, [Lakz;

    sget-object v1, Lakz;->a:Lakz;

    aput-object v1, v0, v3

    sget-object v1, Lakz;->b:Lakz;

    aput-object v1, v0, v4

    sget-object v1, Lakz;->c:Lakz;

    aput-object v1, v0, v5

    sget-object v1, Lakz;->d:Lakz;

    aput-object v1, v0, v6

    sget-object v1, Lakz;->e:Lakz;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lakz;->f:Lakz;

    aput-object v2, v0, v1

    sput-object v0, Lakz;->g:[Lakz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lakz;
    .locals 1

    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lakz;->b:Lakz;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lakz;->c:Lakz;

    goto :goto_0

    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lakz;->d:Lakz;

    goto :goto_0

    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lakz;->e:Lakz;

    goto :goto_0

    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lakz;->f:Lakz;

    goto :goto_0

    :cond_4
    sget-object v0, Lakz;->a:Lakz;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lakz;
    .locals 1

    const-class v0, Lakz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lakz;

    return-object v0
.end method

.method public static values()[Lakz;
    .locals 1

    sget-object v0, Lakz;->g:[Lakz;

    invoke-virtual {v0}, [Lakz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lakz;

    return-object v0
.end method
