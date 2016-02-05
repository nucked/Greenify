.class final synthetic Lbwq;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwq;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbku;
    .locals 1

    new-instance v0, Lbwq;

    invoke-direct {v0, p0}, Lbwq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbwq;->a:Ljava/lang/String;

    check-cast p1, Landroid/preference/Preference;

    invoke-static {v0, p1}, Lbwo;->a(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
