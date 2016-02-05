.class final synthetic Lcho;
.super Ljava/lang/Object;

# interfaces
.implements Lchq;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lchr;


# direct methods
.method private constructor <init>(Ljava/util/List;Lchr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcho;->a:Ljava/util/List;

    iput-object p2, p0, Lcho;->b:Lchr;

    return-void
.end method

.method public static a(Ljava/util/List;Lchr;)Lchq;
    .locals 1

    new-instance v0, Lcho;

    invoke-direct {v0, p0, p1}, Lcho;-><init>(Ljava/util/List;Lchr;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcho;->a:Ljava/util/List;

    iget-object v1, p0, Lcho;->b:Lchr;

    invoke-static {v0, v1, p1}, Lchm;->a(Ljava/util/List;Lchr;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
