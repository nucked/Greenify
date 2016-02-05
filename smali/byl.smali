.class public final synthetic Lbyl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/CleanerService;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyl;->a:Lcom/oasisfeng/greenify/CleanerService;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/CleanerService;)Landroid/content/SyncStatusObserver;
    .locals 1

    new-instance v0, Lbyl;

    invoke-direct {v0, p0}, Lbyl;-><init>(Lcom/oasisfeng/greenify/CleanerService;)V

    return-object v0
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbyl;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {v0, p1}, Lcom/oasisfeng/greenify/CleanerService;->a(Lcom/oasisfeng/greenify/CleanerService;I)V

    return-void
.end method
