.class public Lbyv;
.super Lcht;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/DozeService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/DozeService;Lchs;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbyv;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcht;-><init>(Lchs;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbyv;->a:Lcom/oasisfeng/greenify/DozeService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/DozeService;->a(Lcom/oasisfeng/greenify/DozeService;)V

    return-void
.end method
