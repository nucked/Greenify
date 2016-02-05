.class final synthetic Lbzw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lbzh;

.field private final b:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Lbzh;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzw;->a:Lbzh;

    iput-object p2, p0, Lbzw;->b:Ljava/util/Collection;

    return-void
.end method

.method public static a(Lbzh;Ljava/util/Collection;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lbzw;

    invoke-direct {v0, p0, p1}, Lbzw;-><init>(Lbzh;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzw;->a:Lbzh;

    iget-object v1, p0, Lbzw;->b:Ljava/util/Collection;

    invoke-static {v0, v1, p1, p2}, Lbzh;->a(Lbzh;Ljava/util/Collection;Landroid/content/DialogInterface;I)V

    return-void
.end method
