.class public final Lbkp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbkm;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbkm;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lbkp;->a:Lbkm;

    .line 305
    invoke-static {p2}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lbkp;->b:Ljava/lang/String;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lbkm;Ljava/lang/String;Lbkn;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lbkp;-><init>(Lbkm;Ljava/lang/String;)V

    return-void
.end method
