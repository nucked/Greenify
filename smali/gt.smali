.class Lgt;
.super Lgq;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lgq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgk;Lgl;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 580
    new-instance v2, Lhh;

    move-object/from16 v0, p1

    iget-object v3, v0, Lgk;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Lgk;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Lgk;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lgk;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lgk;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Lgk;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Lgk;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lgk;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lgk;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Lgk;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Lgk;->o:I

    move-object/from16 v0, p1

    iget v14, v0, Lgk;->p:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lgk;->q:Z

    invoke-direct/range {v2 .. v15}, Lhh;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 585
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lgl;->a(Lgk;Lge;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
