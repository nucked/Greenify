.class final synthetic Lbzu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lbzh;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lbzh;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzu;->a:Lbzh;

    iput-object p2, p0, Lbzu;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lbzh;Ljava/util/List;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lbzu;

    invoke-direct {v0, p0, p1}, Lbzu;-><init>(Lbzh;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzu;->a:Lbzh;

    iget-object v1, p0, Lbzu;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lbzh;->a(Lbzh;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
