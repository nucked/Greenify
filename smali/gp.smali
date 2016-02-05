.class Lgp;
.super Lgo;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lgo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgk;Lgl;)Landroid/app/Notification;
    .locals 30

    .prologue
    .line 761
    new-instance v2, Lha;

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

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lgk;->k:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lgk;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lgk;->j:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->n:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lgk;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->w:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->C:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->x:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lgk;->y:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lgk;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->A:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->r:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lgk;->s:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgk;->t:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v2 .. v29}, Lha;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    .line 768
    move-object/from16 v0, p1

    iget-object v3, v0, Lgk;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lgf;->a(Lgd;Ljava/util/ArrayList;)V

    .line 769
    move-object/from16 v0, p1

    iget-object v3, v0, Lgk;->m:Lgw;

    invoke-static {v2, v3}, Lgf;->a(Lge;Lgw;)V

    .line 770
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lgl;->a(Lgk;Lge;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
