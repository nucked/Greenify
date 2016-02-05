.class public Laik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Laiv;

.field private final c:Landroid/content/Context;

.field private d:Laij;

.field private e:Lail;


# direct methods
.method public constructor <init>(Laiv;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Laik;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Laik;->b:Laiv;

    new-instance v0, Laiu;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p3, v1}, Laiu;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Laik;->d:Laij;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laik;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajj;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()Lail;
    .locals 1

    iget-object v0, p0, Laik;->e:Lail;

    if-nez v0, :cond_0

    iget-object v0, p0, Laik;->c:Landroid/content/Context;

    invoke-static {v0}, Lail;->a(Landroid/content/Context;)Lail;

    move-result-object v0

    iput-object v0, p0, Laik;->e:Lail;

    :cond_0
    iget-object v0, p0, Laik;->e:Lail;

    return-object v0
.end method

.method public a(Laij;)V
    .locals 0

    iput-object p1, p0, Laik;->d:Laij;

    return-void
.end method

.method b()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Laik;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "UncaughtException"

    iget-object v1, p0, Laik;->d:Laij;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Laik;->d:Laij;

    invoke-interface {v1, v0, p2}, Laij;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting uncaught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lajj;->b(Ljava/lang/String;)V

    iget-object v1, p0, Laik;->b:Laiv;

    new-instance v2, Laiq;

    invoke-direct {v2}, Laiq;-><init>()V

    invoke-virtual {v2, v0}, Laiq;->a(Ljava/lang/String;)Laiq;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Laiq;->a(Z)Laiq;

    move-result-object v0

    invoke-virtual {v0}, Laiq;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Laiv;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Laik;->a()Lail;

    move-result-object v0

    invoke-virtual {v0}, Lail;->i()V

    invoke-virtual {v0}, Lail;->j()V

    iget-object v0, p0, Laik;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const-string v0, "Passing exception to the original handler"

    invoke-static {v0}, Lajj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Laik;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
