.class public Lcas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/HibernationLaunchpad;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/HibernationLaunchpad;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcas;->a:Lcom/oasisfeng/greenify/HibernationLaunchpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcas;->a:Lcom/oasisfeng/greenify/HibernationLaunchpad;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->finish()V

    .line 56
    return-void
.end method
