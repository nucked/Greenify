.class public final enum Lald;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lald;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lald;

.field public static final enum b:Lald;

.field private static final synthetic c:[Lald;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lald;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lald;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lald;->a:Lald;

    new-instance v0, Lald;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lald;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lald;->b:Lald;

    const/4 v0, 0x2

    new-array v0, v0, [Lald;

    sget-object v1, Lald;->a:Lald;

    aput-object v1, v0, v2

    sget-object v1, Lald;->b:Lald;

    aput-object v1, v0, v3

    sput-object v0, Lald;->c:[Lald;

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

.method public static a(Ljava/lang/String;)Lald;
    .locals 1

    const-string v0, "GZIP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lald;->b:Lald;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lald;->a:Lald;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lald;
    .locals 1

    const-class v0, Lald;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lald;

    return-object v0
.end method

.method public static values()[Lald;
    .locals 1

    sget-object v0, Lald;->c:[Lald;

    invoke-virtual {v0}, [Lald;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lald;

    return-object v0
.end method
