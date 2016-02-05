.class public final enum Lbfn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbfn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbfn;

.field public static final enum b:Lbfn;

.field public static final enum c:Lbfn;

.field private static final synthetic d:[Lbfn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbfn;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lbfn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfn;->a:Lbfn;

    new-instance v0, Lbfn;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v3}, Lbfn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfn;->b:Lbfn;

    new-instance v0, Lbfn;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lbfn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfn;->c:Lbfn;

    const/4 v0, 0x3

    new-array v0, v0, [Lbfn;

    sget-object v1, Lbfn;->a:Lbfn;

    aput-object v1, v0, v2

    sget-object v1, Lbfn;->b:Lbfn;

    aput-object v1, v0, v3

    sget-object v1, Lbfn;->c:Lbfn;

    aput-object v1, v0, v4

    sput-object v0, Lbfn;->d:[Lbfn;

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

.method public static valueOf(Ljava/lang/String;)Lbfn;
    .locals 1

    const-class v0, Lbfn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbfn;

    return-object v0
.end method

.method public static values()[Lbfn;
    .locals 1

    sget-object v0, Lbfn;->d:[Lbfn;

    invoke-virtual {v0}, [Lbfn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbfn;

    return-object v0
.end method
