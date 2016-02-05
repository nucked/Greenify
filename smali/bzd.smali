.class final synthetic Lbzd;
.super Ljava/lang/Object;

# interfaces
.implements Lbzg;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzd;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbzg;
    .locals 1

    new-instance v0, Lbzd;

    invoke-direct {v0, p0}, Lbzd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzd;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lbzb;->a(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method
