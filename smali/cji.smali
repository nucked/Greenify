.class final synthetic Lcji;
.super Ljava/lang/Object;

# interfaces
.implements Lcjp;


# instance fields
.field private final a:I

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcji;->a:I

    iput-object p2, p0, Lcji;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(ILandroid/view/View$OnClickListener;)Lcjp;
    .locals 1

    new-instance v0, Lcji;

    invoke-direct {v0, p0, p1}, Lcji;-><init>(ILandroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/Snackbar;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget v0, p0, Lcji;->a:I

    iget-object v1, p0, Lcji;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcjh;->a(ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method
