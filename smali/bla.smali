.class abstract enum Lbla;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbla;",
        ">;",
        "Lbku",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbla;

.field public static final enum b:Lbla;

.field public static final enum c:Lbla;

.field public static final enum d:Lbla;

.field private static final synthetic e:[Lbla;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lblb;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1, v2}, Lblb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbla;->a:Lbla;

    .line 286
    new-instance v0, Lblc;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1, v3}, Lblc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbla;->b:Lbla;

    .line 295
    new-instance v0, Lbld;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1, v4}, Lbld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbla;->c:Lbla;

    .line 304
    new-instance v0, Lble;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, Lble;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbla;->d:Lbla;

    .line 275
    const/4 v0, 0x4

    new-array v0, v0, [Lbla;

    sget-object v1, Lbla;->a:Lbla;

    aput-object v1, v0, v2

    sget-object v1, Lbla;->b:Lbla;

    aput-object v1, v0, v3

    sget-object v1, Lbla;->c:Lbla;

    aput-object v1, v0, v4

    sget-object v1, Lbla;->d:Lbla;

    aput-object v1, v0, v5

    sput-object v0, Lbla;->e:[Lbla;

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
    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILbkw;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lbla;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbla;
    .locals 1

    .prologue
    .line 275
    const-class v0, Lbla;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbla;

    return-object v0
.end method

.method public static values()[Lbla;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lbla;->e:[Lbla;

    invoke-virtual {v0}, [Lbla;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbla;

    return-object v0
.end method


# virtual methods
.method a()Lbku;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    return-object p0
.end method
