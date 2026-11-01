.class public final Lg/duw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bol;
.implements Lcom/google/android/gms/internal/ads/zzcas;
.implements Lcom/google/android/gms/internal/ads/zzdtn;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/fbf;


# static fields
.field public static volatile a:Lg/duw;

.field public static c:Lg/duw;


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final synthetic g:I

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lg/duw;->g:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/dqc;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lg/dqc;-><init>(I)V

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    new-instance p1, Lg/bcp;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/duw;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/duw;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/duw;->f:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/ffr;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lg/ffr;-><init>(I)V

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    new-instance v0, Lg/dpa;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lg/dpa;-><init>(Lg/dpa;Lg/ffr;)V

    iput-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/dpa;->u()Lg/dpa;

    move-result-object p1

    iput-object p1, p0, Lg/duw;->d:Ljava/lang/Object;

    new-instance p1, Lg/gyf;

    invoke-direct {p1}, Lg/gyf;-><init>()V

    iput-object p1, p0, Lg/duw;->f:Ljava/lang/Object;

    new-instance v1, Lg/gxw;

    invoke-direct {v1, p1}, Lg/gxw;-><init>(Lg/gyf;)V

    const-string v2, "require"

    invoke-virtual {v0, v2, v1}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    iget-object p1, p1, Lg/gyf;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "internal.platform"

    sget-object v2, Lg/cin;->a:Lg/cin;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lg/hbz;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const-string v1, "runtime.counter"

    invoke-virtual {v0, v1, p1}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lg/edi;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg/edi;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lg/duw;->d:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lg/duw;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/duw;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    new-instance v0, Lg/sw;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lg/sw;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/duw;->d:Ljava/lang/Object;

    new-instance v0, Lg/bnh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/bnh;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    new-instance v0, Lg/bnh;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/bnh;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/duw;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/bxr;Lg/gud;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg/duw;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg/duw;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/zc;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    iput v2, v0, Lg/duw;->g:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lg/duw;->f:Ljava/lang/Object;

    iput-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    iget-object v2, v1, Lg/zc;->h:Landroid/content/Context;

    iget-object v3, v1, Lg/zc;->j:Ljava/util/ArrayList;

    iget-object v4, v1, Lg/zc;->q:Ljava/util/ArrayList;

    iget-object v5, v1, Lg/zc;->e:Ljava/util/ArrayList;

    iput-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    iget-object v8, v1, Lg/zc;->k:Ljava/lang/String;

    invoke-static {v2, v8}, Lg/cmb;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    iput-object v8, v0, Lg/duw;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, v1, Lg/zc;->h:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lg/duw;->d:Ljava/lang/Object;

    :goto_0
    iget-object v8, v1, Lg/zc;->s:Landroid/app/Notification;

    iget-object v9, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v9, Landroid/app/Notification$Builder;

    iget-wide v10, v8, Landroid/app/Notification;->when:J

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->icon:I

    iget v11, v8, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->ledARGB:I

    iget v12, v8, Landroid/app/Notification;->ledOnMS:I

    iget v13, v8, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v9, v10, v12, v13}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v10, v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->defaults:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v1, Lg/zc;->g:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v1, Lg/zc;->i:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v1, Lg/zc;->r:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget v10, v8, Landroid/app/Notification;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v9, v11, v12}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v13, v13, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    const/16 v9, 0x17

    if-ge v6, v9, :cond_6

    iget-object v2, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Builder;

    iget-object v6, v1, Lg/zc;->a:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v6, :cond_5

    move-object v6, v11

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->q()Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_5
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_7

    :cond_6
    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-object v10, v1, Lg/zc;->a:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v10, :cond_7

    move-object v2, v11

    goto :goto_6

    :cond_7
    invoke-virtual {v10, v2}, Landroidx/core/graphics/drawable/IconCompat;->r(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_6
    invoke-static {v6, v2}, Lg/id;->z(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V

    :goto_7
    iget-object v2, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Builder;

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, v1, Lg/zc;->m:I

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v2, v1, Lg/zc;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v14, "android.support.allowGeneratedReplies"

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fxx;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6}, Lg/fxx;->h()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v10

    iget-boolean v15, v6, Lg/fxx;->f:Z

    iget-object v13, v6, Lg/fxx;->c:Landroid/os/Bundle;

    iget-object v12, v6, Lg/fxx;->g:Landroid/app/PendingIntent;

    iget-object v11, v6, Lg/fxx;->d:Ljava/lang/CharSequence;

    if-lt v7, v9, :cond_9

    if-eqz v10, :cond_8

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroidx/core/graphics/drawable/IconCompat;->r(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v10

    goto :goto_9

    :cond_8
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10, v11, v12}, Lg/id;->j(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    goto :goto_b

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->n()I

    move-result v9

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :goto_a
    new-instance v10, Landroid/app/Notification$Action$Builder;

    invoke-direct {v10, v9, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v9, v10

    :goto_b
    if-eqz v13, :cond_b

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    :cond_b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    :goto_c
    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v11, 0x18

    if-lt v7, v11, :cond_c

    invoke-static {v9, v15}, Lg/cml;->f(Landroid/app/Notification$Action$Builder;Z)V

    :cond_c
    const-string v11, "android.support.action.semanticAction"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v11, 0x1c

    if-lt v7, v11, :cond_d

    invoke-static {v9}, Lg/eyo;->s(Landroid/app/Notification$Action$Builder;)V

    :cond_d
    const/16 v11, 0x1d

    if-lt v7, v11, :cond_e

    invoke-static {v9}, Lg/agl;->a(Landroid/app/Notification$Action$Builder;)V

    :cond_e
    const/16 v11, 0x1f

    if-lt v7, v11, :cond_f

    invoke-static {v9}, Lg/gcn;->b(Landroid/app/Notification$Action$Builder;)V

    :cond_f
    const-string v7, "android.support.action.showsUserInterface"

    iget-boolean v6, v6, Lg/fxx;->a:Z

    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/16 v7, 0x1a

    const/16 v9, 0x17

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_10
    iget-object v2, v1, Lg/zc;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_11

    iget-object v6, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-boolean v7, v1, Lg/zc;->o:Z

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-boolean v7, v1, Lg/zc;->l:Z

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lg/zc;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lg/zc;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-object v7, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v8, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    const/16 v11, 0x1c

    if-ge v2, v11, :cond_16

    if-nez v4, :cond_12

    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_15

    :goto_d
    if-nez v2, :cond_13

    goto :goto_e

    :cond_13
    if-nez v3, :cond_14

    move-object v3, v2

    goto :goto_e

    :cond_14
    new-instance v6, Lg/glm;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v6, v8}, Lg/glm;-><init>(I)V

    invoke-virtual {v6, v2}, Lg/glm;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v3}, Lg/glm;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_e

    :cond_15
    invoke-static {v6}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :cond_16
    :goto_e
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_f

    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    iget-object v2, v1, Lg/zc;->c:Landroid/os/Bundle;

    if-nez v2, :cond_18

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lg/zc;->c:Landroid/os/Bundle;

    :cond_18
    iget-object v2, v1, Lg/zc;->c:Landroid/os/Bundle;

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_19

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_19
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    :goto_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v12, v8, :cond_1c

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fxx;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9}, Lg/fxx;->h()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v11

    iget-object v13, v9, Lg/fxx;->c:Landroid/os/Bundle;

    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Landroidx/core/graphics/drawable/IconCompat;->n()I

    move-result v11

    goto :goto_11

    :cond_1a
    const/4 v11, 0x0

    :goto_11
    const-string v15, "icon"

    invoke-virtual {v10, v15, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "title"

    iget-object v15, v9, Lg/fxx;->d:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v11, "actionIntent"

    iget-object v15, v9, Lg/fxx;->g:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v13, :cond_1b

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_1b
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    :goto_12
    iget-boolean v13, v9, Lg/fxx;->f:Z

    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "extras"

    invoke-virtual {v10, v13, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v11, "remoteInputs"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v11, "showsUserInterface"

    iget-boolean v9, v9, Lg/fxx;->a:Z

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "semanticAction"

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1c
    const-string v5, "invisible_actions"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v5, v1, Lg/zc;->c:Landroid/os/Bundle;

    if-nez v5, :cond_1d

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lg/zc;->c:Landroid/os/Bundle;

    :cond_1d
    iget-object v5, v1, Lg/zc;->c:Landroid/os/Bundle;

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v2, v11, :cond_1f

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    iget-object v5, v1, Lg/zc;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cml;->h(Landroid/app/Notification$Builder;)V

    :cond_1f
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_20

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cmb;->u(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cmb;->p(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cmb;->x(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cmb;->n(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lg/cmb;->f(Landroid/app/Notification$Builder;)V

    iget-object v3, v1, Lg/zc;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v12, v12, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_20
    const/16 v11, 0x1c

    if-lt v2, v11, :cond_21

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_22

    :cond_21
    const/16 v11, 0x1d

    goto :goto_13

    :cond_22
    invoke-static {v3}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :goto_13
    if-lt v2, v11, :cond_23

    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Lg/zc;->p:Z

    invoke-static {v3, v1}, Lg/agl;->e(Landroid/app/Notification$Builder;Z)V

    iget-object v1, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    invoke-static {v1}, Lg/agl;->j(Landroid/app/Notification$Builder;)V

    :cond_23
    const/16 v1, 0x24

    if-lt v2, v1, :cond_24

    iget-object v1, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    invoke-static {v1}, Lg/dfs;->b(Landroid/app/Notification$Builder;)V

    :cond_24
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/duw;->g:I

    iput-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg/duw;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/duw;->e:Ljava/lang/Object;

    iput-object p4, p0, Lg/duw;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p5, p0, Lg/duw;->g:I

    iput-object p2, p0, Lg/duw;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg/duw;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg/duw;->e:Ljava/lang/Object;

    iput-object p1, p0, Lg/duw;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lg/duw;->a:Lg/duw;

    if-nez v0, :cond_0

    new-instance v0, Lg/duw;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/duw;-><init>(IZ)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lg/duw;->d:Ljava/lang/Object;

    iput-object p0, v0, Lg/duw;->h:Ljava/lang/Object;

    new-instance v1, Lg/epy;

    invoke-direct {v1, p0}, Lg/epy;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    new-instance v1, Lg/cyl;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v2, Lg/sr;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v1}, Lg/sr;-><init>(ILjava/lang/Object;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object v1, v0, Lg/duw;->f:Ljava/lang/Object;

    sput-object v0, Lg/duw;->a:Lg/duw;

    :cond_0
    return-void
.end method

.method public static j()Lg/duw;
    .locals 2

    sget-object v0, Lg/duw;->c:Lg/duw;

    if-nez v0, :cond_0

    new-instance v0, Lg/duw;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/duw;-><init>(I)V

    sput-object v0, Lg/duw;->c:Lg/duw;

    :cond_0
    sget-object v0, Lg/duw;->c:Lg/duw;

    return-object v0
.end method

.method private final v(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private final w(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public b(Landroid/util/JsonWriter;)V
    .locals 5

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, [B

    const-string v4, "params"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v4, "firstline"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v4, "uri"

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "verb"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p1, v2}, Lg/dzz;->f(Landroid/util/JsonWriter;Ljava/util/Map;)V

    if-eqz v3, :cond_0

    const-string v0, "body"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Lg/fcc;

    invoke-interface {v1}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ahy;

    iget-object v2, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v2, Lg/fpd;

    invoke-virtual {v2}, Lg/fpd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ahe;

    iget-object v3, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, Lg/fcc;

    invoke-interface {v3}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ddc;

    new-instance v4, Lg/efs;

    invoke-direct {v4, v0, v1, v2, v3}, Lg/efs;-><init>(Ljava/util/concurrent/Executor;Lg/ahy;Lg/ahe;Lg/ddc;)V

    return-object v4
.end method

.method public k(Lg/rl;)Z
    .locals 1

    iget-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v0, Lg/ep;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs l(Lg/dpa;[Lg/aqu;)Lg/gey;
    .locals 4

    sget-object v0, Lg/gey;->o:Lg/gdz;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Lg/cro;->ai(Lg/aqu;)Lg/gey;

    move-result-object v0

    iget-object v3, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v3, Lg/dpa;

    invoke-static {v3}, Lg/byh;->at(Lg/dpa;)V

    instance-of v3, v0, Lg/fud;

    if-nez v3, :cond_0

    instance-of v3, v0, Lg/dxk;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, p1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public m(Lg/ep;)V
    .locals 3

    iget-object v0, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget v1, p1, Lg/ep;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v1, 0xabe

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public n(Lg/ep;I)Z
    .locals 3

    iget-object v0, p1, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/rl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p1, Lg/cle;->h:Landroid/os/Handler;

    iget-object v0, v0, Lg/rl;->a:Lg/cle;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_0
    return v1
.end method

.method public o(Lg/gxm;)Lg/cgv;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/gxm;->a:Ljava/lang/String;

    iget p1, p1, Lg/gxm;->b:I

    const/4 v1, 0x2

    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    invoke-static {v1, v2}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lg/fcg;->e(ILjava/lang/String;)V

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lg/fcg;->f(IJ)V

    iget-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lg/gac;->al()V

    invoke-virtual {p1, v2}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "generation"

    invoke-static {p1, v1}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "system_id"

    invoke-static {p1, v3}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lg/cgv;

    invoke-direct {v4, v0, v1, v3}, Lg/cgv;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lg/fcg;->p()V

    return-object v4

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lg/fcg;->p()V

    throw v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Lg/ep;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/duw;->f:Ljava/lang/Object;

    iget-object v0, v0, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/rl;

    if-eqz v0, :cond_0

    sget-object v1, Lg/cle;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v0, v0, Lg/rl;->a:Lg/cle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iput-object v1, p0, Lg/duw;->e:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public q(Lg/rl;)V
    .locals 2

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lg/duw;->k(Lg/rl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast p1, Lg/ep;

    iget-boolean v1, p1, Lg/ep;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lg/ep;->c:Z

    iget-object v1, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v0, Lg/bcp;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lg/duw;->r(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(Lg/rl;)V
    .locals 2

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lg/duw;->k(Lg/rl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast p1, Lg/ep;

    iget-boolean v1, p1, Lg/ep;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lg/ep;->c:Z

    invoke-virtual {p0, p1}, Lg/duw;->m(Lg/ep;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(Lg/azu;Lg/dcq;)Lg/dcq;
    .locals 7

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lg/duw;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/cyl;

    iget-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lg/epy;

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fv;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lg/bvo;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lg/fv;

    sget-object v2, Lg/azu;->ia:Lg/azu;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lg/fv;-><init>(Lg/azu;Landroid/content/Context;Lg/epy;Lg/cyl;I)V

    goto :goto_0

    :cond_3
    new-instance v1, Lg/fv;

    sget-object v2, Lg/azu;->p:Lg/azu;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lg/fv;-><init>(Lg/azu;Landroid/content/Context;Lg/epy;Lg/cyl;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Lg/fv;

    sget-object v2, Lg/azu;->d:Lg/azu;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lg/fv;-><init>(Lg/azu;Landroid/content/Context;Lg/epy;Lg/cyl;I)V

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    if-eqz v1, :cond_a

    iget p1, v1, Lg/fv;->d:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v1, p2}, Lg/fv;->g(Lg/dcq;)Lg/dcq;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "app_count"

    invoke-virtual {p2, v0, p1}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "magic_tag"

    const-string v0, "ss_app_log"

    invoke-virtual {p2, p1, v0}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "crash_update_version_code"

    const-string v0, "crash_version_code"

    sget-object v2, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v2}, Lg/dzh;->ag()Ljava/util/Map;

    move-result-object v2

    const-string v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "crash_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v4, "version_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    const-string v3, "version_code"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    const-string v0, "update_version_code"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_3
    iget-object p1, v1, Lg/fv;->e:Landroid/content/Context;

    invoke-static {p1}, Lg/clx;->g(Landroid/content/Context;)Lg/clx;

    move-result-object p1

    sget-object v0, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v0}, Lg/dzh;->ag()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->n(Ljava/util/Map;)V

    invoke-static {}, Lg/eca;->f()Lg/fc;

    move-result-object v0

    invoke-virtual {v0}, Lg/fc;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    :try_start_2
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget-object v0, v1, Lg/fv;->f:Lg/cmc;

    invoke-interface {v0}, Lg/cmc;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->s(Ljava/lang/String;)V

    iget-object v0, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {p2, v2, v0}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lg/fv;->c:Lg/azu;

    invoke-static {p2, p1, v0}, Lg/eg;->q(Lg/dcq;Lg/clx;Lg/azu;)V

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v1, p2}, Lg/fv;->g(Lg/dcq;)Lg/dcq;

    iget-object p1, v1, Lg/fv;->e:Landroid/content/Context;

    invoke-static {p1}, Lg/clx;->g(Landroid/content/Context;)Lg/clx;

    move-result-object p1

    sget-object v0, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v0}, Lg/dzh;->ag()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->n(Ljava/util/Map;)V

    invoke-static {}, Lg/eca;->f()Lg/fc;

    move-result-object v0

    invoke-virtual {v0}, Lg/fc;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    :try_start_3
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget-object v0, v1, Lg/fv;->f:Lg/cmc;

    invoke-interface {v0}, Lg/cmc;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->s(Ljava/lang/String;)V

    iget-object p1, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "header"

    invoke-virtual {p2, v0, p1}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_1
    invoke-virtual {v1, p2}, Lg/fv;->g(Lg/dcq;)Lg/dcq;

    iget-object p1, v1, Lg/fv;->e:Landroid/content/Context;

    invoke-static {p1}, Lg/clx;->g(Landroid/content/Context;)Lg/clx;

    move-result-object p1

    sget-object v0, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v0}, Lg/dzh;->ag()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->n(Ljava/util/Map;)V

    invoke-static {}, Lg/eca;->f()Lg/fc;

    move-result-object v0

    invoke-virtual {v0}, Lg/fc;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    :try_start_4
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iget-object v0, v1, Lg/fv;->f:Lg/cmc;

    invoke-interface {v0}, Lg/cmc;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/clx;->s(Ljava/lang/String;)V

    iget-object v0, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {p2, v2, v0}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "process_name"

    invoke-static {}, Lg/acw;->av()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lg/fv;->c:Lg/azu;

    invoke-static {p2, p1, v0}, Lg/eg;->q(Lg/dcq;Lg/clx;Lg/azu;)V

    :cond_a
    :goto_7
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lg/cgv;)V
    .locals 2

    iget-object v0, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->al()V

    invoke-virtual {v0}, Lg/gac;->an()V

    :try_start_0
    iget-object v1, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Lg/sw;

    invoke-virtual {v1, p1}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/gac;->am()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lg/gac;->am()V

    throw p1
.end method

.method public bridge synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtn;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/duw;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public zza(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnv;

    const-string v0, "callJs > getEngine: Promise fulfilled"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lg/duw;->d:Ljava/lang/Object;

    iget-object v1, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcao;

    iget-object v2, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbom;

    iget-object v3, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbno;

    :try_start_0
    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjq;->zzo:Lcom/google/android/gms/internal/ads/zzbkh;

    new-instance v6, Lg/exh;

    invoke-direct {v6, v2, v3, v1}, Lg/exh;-><init>(Lcom/google/android/gms/internal/ads/zzbom;Lcom/google/android/gms/internal/ads/zzbno;Lcom/google/android/gms/internal/ads/zzcao;)V

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzbkh;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkg;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "args"

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbom;->c:Lcom/google/android/gms/internal/ads/zzbob;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzbob;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzbom;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v5}, Lcom/google/android/gms/internal/ads/zzbmy;->zzl(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    const-string v0, "Unable to invokeJavascript"

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbno;->zzb()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbno;->zzb()V

    throw p1
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lg/duw;->g:I

    return-void
.end method

.method public bridge synthetic zzb(J)Lcom/google/android/gms/internal/ads/zzdtn;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lg/duw;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lg/duw;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v1, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcnb;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    iget-object p1, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    if-nez v2, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcnb;->zzj(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lg/cbv;->a:Lg/cbv;

    iget-object p1, p1, Lg/cbv;->c:Ljava/util/Random;

    invoke-virtual {v1, v6, v0, p1}, Lcom/google/android/gms/internal/ads/zzcnb;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflr;Ljava/util/Random;)V

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V

    goto :goto_3

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzedr;

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzR()Lcom/google/android/gms/internal/ads/zzfew;

    move-result-object v1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfew;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzA(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzge:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzS:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzad:Lcom/google/android/gms/internal/ads/zzbtm;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    const/4 v7, 0x1

    :goto_2
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzedr;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedp;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzedp;->zzd(Lcom/google/android/gms/internal/ads/zzedr;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoc;

    iget-object v1, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcnb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v2, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v3, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfew;

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzW(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzjM:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v5, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdoc;->i:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdoc;->k:Lcom/google/android/gms/internal/ads/zzflr;

    invoke-interface {p1, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzchc;->zzJ(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdoc;->i:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoc;->c:Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-interface {p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzchc;->zzL(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzdsm;)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzmH:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzchc;->zzM(Lcom/google/android/gms/internal/ads/zzfet;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzdto;
    .locals 5

    iget-object v0, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lg/gkr;

    iget-object v1, p0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v1, Lg/bxr;

    iget-object v2, p0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Lg/gud;

    iget-object v3, p0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, p0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/gkr;-><init>(Lg/bxr;Lg/gud;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method
