.class public final enum Lcbx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcbx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcbx;

.field public static final enum b:Lcbx;

.field public static final enum c:Lcbx;

.field private static final synthetic d:[Lcbx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lcbx;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcbx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbx;->a:Lcbx;

    new-instance v0, Lcbx;

    const-string v1, "HibernationFailed"

    invoke-direct {v0, v1, v3}, Lcbx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbx;->b:Lcbx;

    new-instance v0, Lcbx;

    const-string v1, "Woken"

    invoke-direct {v0, v1, v4}, Lcbx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbx;->c:Lcbx;

    const/4 v0, 0x3

    new-array v0, v0, [Lcbx;

    sget-object v1, Lcbx;->a:Lcbx;

    aput-object v1, v0, v2

    sget-object v1, Lcbx;->b:Lcbx;

    aput-object v1, v0, v3

    sget-object v1, Lcbx;->c:Lcbx;

    aput-object v1, v0, v4

    sput-object v0, Lcbx;->d:[Lcbx;

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
    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcbx;
    .locals 1

    .prologue
    .line 332
    const-class v0, Lcbx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcbx;

    return-object v0
.end method

.method public static values()[Lcbx;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcbx;->d:[Lcbx;

    invoke-virtual {v0}, [Lcbx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcbx;

    return-object v0
.end method
