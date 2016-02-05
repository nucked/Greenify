.class public final enum Lcbj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcbj;",
        ">;"
    }
.end annotation

.annotation build Lproguard/annotation/KeepClassMemberNames;
.end annotation


# static fields
.field public static final enum a:Lcbj;

.field public static final enum b:Lcbj;

.field public static final enum c:Lcbj;

.field public static final enum d:Lcbj;

.field public static final enum e:Lcbj;

.field public static final enum f:Lcbj;

.field public static final enum g:Lcbj;

.field private static final synthetic i:[Lcbj;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11
    new-instance v0, Lcbj;

    const-string v1, "Donated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->a:Lcbj;

    .line 12
    new-instance v0, Lcbj;

    const-string v1, "RootTool"

    invoke-direct {v0, v1, v4, v5}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->b:Lcbj;

    .line 13
    new-instance v0, Lcbj;

    const-string v1, "DeviceBuildId"

    invoke-direct {v0, v1, v5, v6}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->c:Lcbj;

    .line 14
    new-instance v0, Lcbj;

    const-string v1, "KernelVersion"

    invoke-direct {v0, v1, v6, v7}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->d:Lcbj;

    .line 15
    new-instance v0, Lcbj;

    const-string v1, "DonationVerification"

    invoke-direct {v0, v1, v7, v8}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->e:Lcbj;

    .line 16
    new-instance v0, Lcbj;

    const-string v1, "WorkingMode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->f:Lcbj;

    .line 17
    new-instance v0, Lcbj;

    const-string v1, "Signature"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcbj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcbj;->g:Lcbj;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcbj;

    const/4 v1, 0x0

    sget-object v2, Lcbj;->a:Lcbj;

    aput-object v2, v0, v1

    sget-object v1, Lcbj;->b:Lcbj;

    aput-object v1, v0, v4

    sget-object v1, Lcbj;->c:Lcbj;

    aput-object v1, v0, v5

    sget-object v1, Lcbj;->d:Lcbj;

    aput-object v1, v0, v6

    sget-object v1, Lcbj;->e:Lcbj;

    aput-object v1, v0, v7

    sget-object v1, Lcbj;->f:Lcbj;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcbj;->g:Lcbj;

    aput-object v2, v0, v1

    sput-object v0, Lcbj;->i:[Lcbj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcbj;->h:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcbj;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcbj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcbj;

    return-object v0
.end method

.method public static values()[Lcbj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcbj;->i:[Lcbj;

    invoke-virtual {v0}, [Lcbj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcbj;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcbj;->h:I

    return v0
.end method
