.class final synthetic Lbxn;
.super Ljava/lang/Object;

# interfaces
.implements Lbli;


# instance fields
.field private final a:Lbxm;


# direct methods
.method private constructor <init>(Lbxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxn;->a:Lbxm;

    return-void
.end method

.method public static a(Lbxm;)Lbli;
    .locals 1

    new-instance v0, Lbxn;

    invoke-direct {v0, p0}, Lbxn;-><init>(Lbxm;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbxn;->a:Lbxm;

    invoke-static {v0}, Lbxm;->a(Lbxm;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
