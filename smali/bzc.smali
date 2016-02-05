.class final synthetic Lbzc;
.super Ljava/lang/Object;

# interfaces
.implements Lbzg;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzc;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lbzc;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;)Lbzg;
    .locals 1

    new-instance v0, Lbzc;

    invoke-direct {v0, p0, p1}, Lbzc;-><init>(Landroid/content/res/Resources;Ljava/lang/StringBuilder;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzc;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lbzc;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, p1}, Lbzb;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method
