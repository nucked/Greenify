.class public final synthetic Lcay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/HibernationService;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcay;->a:Lcom/oasisfeng/greenify/HibernationService;

    iput-object p2, p0, Lcay;->b:Ljava/lang/String;

    iput p3, p0, Lcay;->c:I

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcay;

    invoke-direct {v0, p0, p1, p2}, Lcay;-><init>(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcay;->a:Lcom/oasisfeng/greenify/HibernationService;

    iget-object v1, p0, Lcay;->b:Ljava/lang/String;

    iget v2, p0, Lcay;->c:I

    invoke-static {v0, v1, v2}, Lcom/oasisfeng/greenify/HibernationService;->a(Lcom/oasisfeng/greenify/HibernationService;Ljava/lang/String;I)V

    return-void
.end method
