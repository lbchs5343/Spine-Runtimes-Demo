.class public Lc/c/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p1

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "c.t.d.o.p.u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x7531

    const-string v4, "notification"

    const-string v5, "c"

    const-string v6, "op_accessed_time"

    const/4 v7, 0x0

    if-eqz v2, :cond_b

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lc/b/b;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v1, "TrineaAndroidCommon"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v8, 0x0

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v0, v6, v10, v11}, Lg/byh;->an(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "op_checked_time"

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v0, v6, v12, v13}, Lg/byh;->an(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2, v5}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    const-string v5, ", diff is: "

    cmp-long v6, v10, v12

    if-gtz v6, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    const-wide/16 v16, 0x3e8

    goto/16 :goto_4

    :cond_3
    const-string v6, "notification show"

    invoke-static {v0, v6}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v6, 0x64

    if-le v2, v6, :cond_4

    const-string v6, "100+"

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v7}, Lc/b/b;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v11

    const-string v12, "bar"

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v11, "op_update_noti_bar"

    invoke-interface {v1, v11, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v11, v8, v9}, Lg/byh;->an(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v0}, Lc/b/b;->i(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const-wide/16 v16, 0x3e8

    int-to-long v14, v1

    mul-long v14, v14, v16

    cmp-long v1, v12, v14

    if-lez v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v4, 0x7f120376

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-static {v5}, Lg/dyd;->bp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4, v4}, Lg/bnl;->q(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-static {v5}, Lg/cch;->x(Landroid/app/NotificationChannel;)V

    invoke-static {v5}, Lg/cch;->h(Landroid/app/NotificationChannel;)V

    invoke-static {v5}, Lg/cch;->n(Landroid/app/NotificationChannel;)V

    invoke-static {v1, v5}, Lg/cch;->ad(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_6
    if-eqz v2, :cond_7

    const v2, 0x7f12039f

    goto :goto_2

    :cond_7
    const v2, 0x7f1203a0

    :goto_2
    new-instance v5, Lg/zc;

    invoke-direct {v5, v0, v4}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f080181

    iget-object v8, v5, Lg/zc;->s:Landroid/app/Notification;

    iput v4, v8, Landroid/app/Notification;->icon:I

    const/16 v4, 0x10

    invoke-virtual {v5, v4, v10}, Lg/zc;->u(IZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v4, v8

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lb/d/c;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "op_update_noti"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0xc000000

    invoke-static {v0, v4, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v5, Lg/zc;->r:Landroid/app/PendingIntent;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v7

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v5, Lg/zc;->g:Ljava/lang/CharSequence;

    const v2, 0x7f12038f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v5, Lg/zc;->i:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_8
    const-string v1, "show noti bar ignore, lastNotiBarTime is "

    invoke-static {v8, v9, v1, v5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    div-long v2, v2, v16

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "min, freq is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/b/b;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_3
    invoke-static {v0, v7}, Lc/b/b;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    const-string v2, "inapp"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    invoke-static {v0, v7}, Lc/b/b;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "desk"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    return-void

    :goto_4
    const-string v1, "receive ignore2, lastAccessedTime is "

    const-string v3, ", opUpdateCheckedTime: "

    invoke-static {v10, v11, v1, v3}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v12

    div-long v10, v10, v16

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "s, opUpdateCount is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive ignore1, isAllowOPUpdate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOPNotificationPeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/b/b;->n(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v2, "c.t.d.o.p.u.t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0}, Lcn/trinea/developertools/MyApplication;->d(Landroid/content/Context;)V

    return-void

    :cond_c
    const-string v2, "c.t.d.o.p.u.i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    invoke-static {v0, v7, v5}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_d
    :goto_6
    return-void
.end method
