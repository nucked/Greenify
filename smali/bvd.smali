.class public final enum Lbvd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbvd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbvd;

.field public static final enum b:Lbvd;

.field public static final enum c:Lbvd;

.field public static final enum d:Lbvd;

.field public static final enum e:Lbvd;

.field public static final enum f:Lbvd;

.field public static final enum g:Lbvd;

.field public static final enum h:Lbvd;

.field public static final enum i:Lbvd;

.field public static final enum j:Lbvd;

.field private static final synthetic k:[Lbvd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lbvd;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->a:Lbvd;

    .line 37
    new-instance v0, Lbvd;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->b:Lbvd;

    .line 43
    new-instance v0, Lbvd;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->c:Lbvd;

    .line 49
    new-instance v0, Lbvd;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->d:Lbvd;

    .line 56
    new-instance v0, Lbvd;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->e:Lbvd;

    .line 61
    new-instance v0, Lbvd;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->f:Lbvd;

    .line 67
    new-instance v0, Lbvd;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->g:Lbvd;

    .line 72
    new-instance v0, Lbvd;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->h:Lbvd;

    .line 77
    new-instance v0, Lbvd;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->i:Lbvd;

    .line 84
    new-instance v0, Lbvd;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbvd;->j:Lbvd;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lbvd;

    sget-object v1, Lbvd;->a:Lbvd;

    aput-object v1, v0, v3

    sget-object v1, Lbvd;->b:Lbvd;

    aput-object v1, v0, v4

    sget-object v1, Lbvd;->c:Lbvd;

    aput-object v1, v0, v5

    sget-object v1, Lbvd;->d:Lbvd;

    aput-object v1, v0, v6

    sget-object v1, Lbvd;->e:Lbvd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbvd;->f:Lbvd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbvd;->g:Lbvd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbvd;->h:Lbvd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbvd;->i:Lbvd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbvd;->j:Lbvd;

    aput-object v2, v0, v1

    sput-object v0, Lbvd;->k:[Lbvd;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbvd;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lbvd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbvd;

    return-object v0
.end method

.method public static values()[Lbvd;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbvd;->k:[Lbvd;

    invoke-virtual {v0}, [Lbvd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbvd;

    return-object v0
.end method
