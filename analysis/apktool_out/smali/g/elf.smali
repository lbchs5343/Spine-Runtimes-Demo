.class public abstract Lg/elf;
.super Lg/dxn;
.source "SourceFile"

# interfaces
.implements Lg/cgm;


# static fields
.field public static final synthetic d:I


# instance fields
.field public aa:Lg/elf;

.field public e:Lg/bli;

.field public i:Z

.field public j:Lg/fpl;

.field public k:Lg/dmr;

.field public l:Z

.field public m:Z

.field public n:Landroid/view/View;

.field public o:Z

.field public p:I

.field public q:Lg/emb;

.field public r:Lg/bzj;

.field public s:Lg/sr;

.field public t:Lg/sd;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/TextView;

.field public x:Z

.field public y:Lg/sd;

.field public z:Z


# virtual methods
.method public final ab()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lg/elf;->v:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/elf;->m:Z

    const/4 v2, 0x2

    iput v2, p0, Lg/elf;->p:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "trinea/android-tool"

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v5, v3

    if-le v5, v4, :cond_0

    aget-object v5, v3, v1

    iput-object v5, p0, Lg/elf;->v:Ljava/lang/String;

    aget-object v3, v3, v4

    goto :goto_0

    :cond_0
    array-length v5, v3

    if-ne v5, v4, :cond_1

    aget-object v3, v3, v1

    iput-object v3, p0, Lg/elf;->v:Ljava/lang/String;

    :cond_1
    const-string v3, ""

    :goto_0
    iget-object v5, p0, Lg/elf;->v:Ljava/lang/String;

    invoke-static {v5}, Lg/acw;->ap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lg/elf;->aa:Lg/elf;

    const-string v6, "open_project_source"

    invoke-static {v5, v6, v3}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v3, p0, Lg/elf;->aa:Lg/elf;

    iget-object v5, p0, Lg/elf;->v:Ljava/lang/String;

    invoke-static {v3, v5}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lg/ert;->b:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lg/elf;->m:Z

    iput v4, p0, Lg/elf;->p:I

    sget-object v1, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-class v1, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lg/elf;->ah()V

    :cond_4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_5
    return-void
.end method

.method public final ac()V
    .locals 8

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v0

    const-string v1, "LAST_NOTI_PROMOTION_ID"

    invoke-virtual {p0, v0, v1}, Lg/elf;->ae(Lg/fxe$b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f120374

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v3}, Lg/dyd;->bp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lg/bnl;->q(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v3}, Lg/cch;->x(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cch;->h(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cch;->n(Landroid/app/NotificationChannel;)V

    invoke-static {v1, v3}, Lg/cch;->ad(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_2
    new-instance v3, Lg/zc;

    invoke-direct {v3, p0, v2}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080181

    iget-object v4, v3, Lg/zc;->s:Landroid/app/Notification;

    iput v2, v4, Landroid/app/Notification;->icon:I

    const/16 v2, 0x10

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lg/zc;->u(IZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v6, v5

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lc/b/a;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "isFromPromotionNoti"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0xc000000

    invoke-static {v2, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Lg/zc;->r:Landroid/app/PendingIntent;

    iget-object v2, v0, Lg/fxe$b;->title:Ljava/lang/String;

    invoke-static {v2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lg/zc;->g:Ljava/lang/CharSequence;

    iget-object v0, v0, Lg/fxe$b;->attraction:Ljava/lang/String;

    invoke-static {v0}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lg/zc;->i:Ljava/lang/CharSequence;

    const/16 v0, 0x12

    invoke-virtual {v3}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final ad(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    iget-object v0, v0, Lg/dmr;->a:Lf/a/e;

    if-nez v0, :cond_0

    const-string p1, "ps is null when show pro fragment"

    invoke-static {p1}, Lg/erl;->y(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v1, "donation"

    invoke-static {v0, v1}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0, p1}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lg/cgg;

    iget v2, v0, Lg/ert;->i:I

    iget-boolean v3, v0, Lg/ert;->f:Z

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lg/cgg;-><init>(IIZ)V

    invoke-static {p0, v1}, Lg/cux;->au(Landroid/content/Context;Lg/cgg;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/elf;->aa:Lg/elf;

    const-string v3, "tt_1_ct"

    invoke-static {v2, v3}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f120202

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "donation_package_name"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f1201fa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "donation_app_name"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "donation_icon_url"

    const v5, 0x7f0f0002

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "tc"

    iget v5, v0, Lg/ert;->i:I

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "at"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    new-instance v3, Lg/cgg;

    iget v5, v0, Lg/ert;->i:I

    iget-boolean v0, v0, Lg/ert;->f:Z

    invoke-direct {v3, v5, v4, v0}, Lg/cgg;-><init>(IIZ)V

    invoke-virtual {v3}, Lg/cgg;->isMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lg/cgg;->getCode()I

    move-result v0

    invoke-static {v0}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lg/cgg;->getCode()I

    move-result v0

    invoke-static {v0}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v1, Lg/fxe$a;->mTC:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const-string v1, "tuu"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lg/fxe$b;->promotionRate:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "promotion_rate"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "\n\n"

    const-string v3, ""

    if-eqz p2, :cond_9

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->l()Lg/fxe$b;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v1, p1, Lg/fxe$b;->attraction:Ljava/lang/String;

    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {v1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p2, p1}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p2, p0, Lg/elf;->aa:Lg/elf;

    iget p1, p1, Lg/ert;->j:I

    const/4 v5, -0x1

    if-ne p1, v5, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {v1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-static {v3}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7f1201f9

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "donation_desc"

    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg/elf;->k:Lg/dmr;

    iget-object p1, p1, Lg/dmr;->a:Lf/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg/fvy;

    invoke-direct {p2}, Lg/fvy;-><init>()V

    iput-object p2, p1, Lg/cdy;->d:Lg/fvy;

    invoke-static {p0, p2, v2, v4}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final ae(Lg/fxe$b;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-boolean v1, p1, Lg/fxe$b;->isPromotion:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lg/fxe$b;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lg/fxe$b;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lg/dlb;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lg/dlb;->d(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lg/fxe$b;->beginDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p1, Lg/fxe$b;->endDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1, v0, p2}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    iget p1, p1, Lg/fxe$b;->promotionId:I

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0, p1, p2}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final af()V
    .locals 4

    iget-boolean v0, p0, Lg/elf;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/elf;->ac()V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v0

    const-string v1, "LAST_DIALOG_PROMOTION_ID"

    invoke-virtual {p0, v0, v1}, Lg/elf;->ae(Lg/fxe$b;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/fwo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/fwo;-><init>(Lg/elf;I)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lg/elf;->ac()V

    return-void
.end method

.method public final ag()V
    .locals 5

    iget-object v0, p0, Lg/elf;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    iget-object v1, p0, Lg/elf;->v:Ljava/lang/String;

    iget-object v0, v0, Lg/dmr;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lg/elf;->m:Z

    iget v2, p0, Lg/elf;->p:I

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lg/elf;->v:Ljava/lang/String;

    iput-boolean v0, p0, Lg/elf;->m:Z

    iput v2, p0, Lg/elf;->p:I

    return-void

    :cond_1
    iget-object v1, p0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lg/dj;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final ah()V
    .locals 8

    iget v0, p0, Lg/elf;->p:I

    const-string v1, "TrineaAndroidCommon"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "always_finish_activities"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "last_shortcut_is_under_dka_mode"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    invoke-static {p0, v4, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "dont_keep_activities"

    iget-object v4, p0, Lg/elf;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lg/elf;->p:I

    if-ne v3, v0, :cond_2

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_dka_by_shortcut_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x1388

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/elf;->v:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lg/elf;->p:I

    return-void

    :cond_1
    invoke-static {p0, v1, v4, v5}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public final ai()V
    .locals 3

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/fml;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_0
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fml;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120072

    goto :goto_0

    :cond_1
    const v2, 0x7f120073

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/cms;->fullScreenAdInit(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v0}, Lg/dmr;->g()V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v0, p1}, Lg/dmr;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final isDisplayHomeAsUpEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnterLeaveAnim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    iget-object v1, v0, Lg/dmr;->a:Lf/a/e;

    if-eqz v1, :cond_0

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    new-instance v2, Lg/gqc;

    const/16 v3, 0xa

    invoke-direct {v2, v0, p2, v3}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Lg/cdy;->l(Lg/btp;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lg/dms;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/elf;->aa:Lg/elf;

    new-instance p1, Lg/dmr;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/dmr;->c:Z

    iput-object p0, p1, Lg/dmr;->d:Lg/elf;

    iput-object p0, p1, Lg/dmr;->e:Lg/elf;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lg/dmr;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "isFromPromotionNoti"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/elf;->i:Z

    :cond_0
    iget-object p1, p0, Lg/elf;->k:Lg/dmr;

    iget-object v1, p1, Lg/dmr;->d:Lg/elf;

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lg/bys;->a:Ljava/lang/String;

    new-instance v2, Lg/aco;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object v2, p1, Lg/dmr;->b:Lg/aco;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lf/a/e;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p1, Lg/dmr;->b:Lg/aco;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x44f

    invoke-virtual {p1, v1, v0}, Lg/dmr;->l(IZ)V

    :cond_1
    const p1, 0x7f090354

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/elf;->w:Landroid/widget/TextView;

    const p1, 0x7f0900db

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/elf;->n:Landroid/view/View;

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a0059

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0902b7

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    new-instance v2, Lg/fwd;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lg/fwd;-><init>(Lg/cms;II)V

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object p1, p0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    invoke-virtual {p0}, Lg/elf;->ai()V

    sput-boolean v4, Lg/acr;->t:Z

    invoke-virtual {p0}, Lg/elf;->ab()V

    new-instance p1, Lg/bli;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lg/bli;-><init>(I)V

    iput-object p1, p0, Lg/elf;->e:Lg/bli;

    iget-object p1, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {p1}, Lg/dmr;->n()V

    iget-object p1, p0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lg/dqe;->k(Landroid/app/Activity;)Lg/dqe;

    move-result-object p1

    sget-boolean v1, Lg/cyz;->c:Z

    invoke-virtual {p1, v1}, Lg/dqe;->o(Z)V

    :cond_2
    new-instance p1, Lg/sr;

    const/4 v1, 0x5

    invoke-direct {p1, v1, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/elf;->s:Lg/sr;

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    iget-object v1, p0, Lg/elf;->s:Lg/sr;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "cn.trinea.android.developertools.ACTION_AUTO_CLICK_TOOL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lg/emb;

    invoke-direct {p1, p0}, Lg/emb;-><init>(Lg/elf;)V

    iput-object p1, p0, Lg/elf;->q:Lg/emb;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "first_use_accessibility"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cacu"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cn.trinea.android.lib.ACTION_TOOL_UPDATE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "c.t.d.p.bdf"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "l"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "inspector_first_finish"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "finish"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    iget-object v2, p0, Lg/elf;->q:Lg/emb;

    invoke-virtual {v1, v2, p1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p1, "TrineaAndroidCommon"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "startup_times"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p0, p1, v1}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "main"

    invoke-static {p1, v0}, Lg/eg;->m(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v1, "setting"

    invoke-static {v0, v1}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v1, "main_share"

    invoke-static {v0, v1}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    const v0, 0x7f0902ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/fxe$e;->isShowBrothers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0x7f090068

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const v0, 0x7f09026d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v3, "alliance"

    invoke-static {v0, v3}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v3, "menu_open_project"

    invoke-static {v0, v3}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    :goto_1
    const v0, 0x7f090133

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v3}, Lg/dmr;->m()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lg/fxe$b;->isShow:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v4

    invoke-virtual {v4}, Lg/atf;->o()Z

    move-result v4

    invoke-static {v3, v4}, Lg/byh;->al(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v1, "donation"

    invoke-static {v0, v1}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lg/elf;->s:Lg/sr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->s:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/elf;->s:Lg/sr;

    :cond_0
    iget-object v0, p0, Lg/elf;->q:Lg/emb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->q:Lg/emb;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    iget-object v1, v0, Lg/dmr;->a:Lf/a/e;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/dmr;->b:Lg/aco;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lg/dmr;->d:Lg/elf;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    invoke-super {p0}, Lg/cms;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lg/elf;->ab()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lg/fwo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fwo;-><init>(Lg/elf;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lg/dms;->clickInterval:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902e9

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "setting"

    invoke-static {p1, v0}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    const-class v3, Lc/e/a;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return v2

    :cond_1
    const v1, 0x7f090010

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "showa"

    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lg/dmb;

    invoke-direct {v0}, Lg/cyz;-><init>()V

    invoke-static {p0, v0, p1, v3}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "about"

    invoke-static {p1, v0}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    return v2

    :cond_2
    const v1, 0x7f09026d

    if-ne v0, v1, :cond_3

    const-string p1, "op_source_menu_main"

    invoke-static {p0, p1}, Lg/bys;->d(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "menu_open_project"

    invoke-static {p1, v0}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    return v2

    :cond_3
    const v1, 0x7f090068

    if-ne v0, v1, :cond_4

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lg/dbz;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "alliance"

    invoke-static {p1, v0}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    return v2

    :cond_4
    const v1, 0x7f090133

    if-ne v0, v1, :cond_5

    const-string p1, "pro"

    invoke-virtual {p0, p1, v3}, Lg/elf;->ad(Ljava/lang/String;Z)V

    return v2

    :cond_5
    const v1, 0x7f0902ec

    if-ne v0, v1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f120027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const v0, 0x7f120041

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    const v3, 0x7f12040e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    const-string v0, "main_share"

    invoke-static {p1, v0}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lg/cms;->onPause()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    const/16 v0, 0x64

    const-string v1, "fail_permission_denied"

    const/4 v2, 0x0

    const-string v3, "success_permission_granted"

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v6, "id"

    const/4 v7, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lg/dms;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lg/elf;->x:Z

    if-eqz p1, :cond_6

    iput-boolean v7, p0, Lg/elf;->x:Z

    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v7

    if-nez p1, :cond_2

    invoke-static {p0, v5}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v4}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v6, v3}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lg/elf;->ag()V

    return-void

    :cond_2
    iput-object v2, p0, Lg/elf;->v:Ljava/lang/String;

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v4}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v6, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p1, p0, Lg/elf;->x:Z

    if-eqz p1, :cond_6

    iput-boolean v7, p0, Lg/elf;->x:Z

    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v7

    if-nez p1, :cond_5

    invoke-static {p0, v4}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lg/fl;->a:Ljava/util/HashMap;

    const-string p2, "NetworkType"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "NetworkOperator"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PhoneType"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v5}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v6, v3}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lg/elf;->ag()V

    return-void

    :cond_5
    iput-object v2, p0, Lg/elf;->v:Ljava/lang/String;

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v5}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {p1, v6, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lg/cms;->onResume()V

    iget-object v0, p0, Lg/elf;->k:Lg/dmr;

    iget-object v0, v0, Lg/dmr;->d:Lg/elf;

    invoke-static {v0}, Lg/cyz;->al(Landroid/content/Context;)V

    sget-boolean v0, Lg/cyz;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120072

    goto :goto_0

    :cond_0
    const v2, 0x7f120073

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/cms;->fullScreenAdInit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 12

    invoke-super {p0}, Lg/ub;->onStart()V

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/dyd;->av(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, p0, Lg/elf;->j:Lg/fpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v5, "is_showed_privacy_tips"

    invoke-static {v0, v5, v4}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v5, p0, Lg/elf;->aa:Lg/elf;

    const-string v6, "pagreeVersion"

    invoke-static {v5, v6, v3}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lg/elf;->aa:Lg/elf;

    const-string v7, "uagreeVersion"

    invoke-static {v6, v7, v3}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    iget-object v8, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v8}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v8

    invoke-virtual {v8}, Lg/atf;->p()Lg/fxe;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v3

    goto :goto_0

    :cond_2
    iget-object v8, v8, Lg/fxe;->agreement:Lg/fxe$c;

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v8, :cond_3

    iget-object v9, v8, Lg/fxe$c;->uaVersion:Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v8, :cond_5

    iget-object v9, v8, Lg/fxe$c;->paVersion:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-nez v7, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    goto/16 :goto_a

    :cond_7
    const-string v9, ""

    const v10, 0x7f12054e

    const v11, 0x7f1203ca

    if-eqz v7, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v4

    invoke-virtual {p0, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_5

    :cond_a
    const v0, 0x7f12054f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_c

    const v0, 0x7f1203af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_5

    :cond_c
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v4

    invoke-virtual {p0, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_5
    iget-object v5, p0, Lg/elf;->aa:Lg/elf;

    sput-boolean v4, Lg/byh;->k:Z

    const-string v6, "is_agree_newest_agreement"

    invoke-static {v5, v6, v4}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v5, Lg/gqc;

    invoke-direct {v5, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v6, v5, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v6, Lg/die;

    const v7, 0x7f1203cd

    invoke-virtual {v5, v7}, Lg/gqc;->am(I)Lg/gqc;

    iput-object v0, v6, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v0, Lg/fhd;

    invoke-direct {v0, p0, v8}, Lg/fhd;-><init>(Lg/elf;Lg/fxe$c;)V

    const v7, 0x7f1203c7

    invoke-virtual {v5, v7, v0}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v0, Lg/fgw;

    const/4 v7, 0x3

    invoke-direct {v0, v7, p0}, Lg/fgw;-><init>(ILjava/lang/Object;)V

    const v8, 0x7f1203c9

    invoke-virtual {v5, v8, v0}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v4, v6, Lg/die;->p:Z

    invoke-virtual {v5}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    iput-object v0, p0, Lg/elf;->j:Lg/fpl;

    iget-object v5, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v5, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    iget-object v0, p0, Lg/elf;->j:Lg/fpl;

    new-instance v5, Lg/fvi;

    const/16 v6, 0x10

    invoke-direct {v5, v6, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iget-object v6, v0, Lg/btt;->e:Landroidx/activity/b;

    new-instance v8, Lg/bcn;

    invoke-direct {v8, v7, v5}, Lg/bcn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0, v8}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    new-instance v5, Lg/fny;

    invoke-direct {v5, v0}, Lg/fny;-><init>(Lg/fpl;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lg/elf;->j:Lg/fpl;

    iget-object v5, p0, Lg/elf;->aa:Lg/elf;

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    const v6, 0x7f130130

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_6
    :try_start_0
    iget-object v0, p0, Lg/elf;->j:Lg/fpl;

    const v5, 0x102000b

    invoke-virtual {v0, v5}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_7
    :try_start_1
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v0

    aget v5, v0, v4

    aget v0, v0, v2

    if-le v5, v0, :cond_f

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x9

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_f
    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v0, v7

    :goto_8
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v6, p0, Lg/elf;->j:Lg/fpl;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v6, p0, Lg/elf;->j:Lg/fpl;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v5, v0}, Landroid/view/Window;->setLayout(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :goto_9
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_a
    invoke-static {p0}, Lg/dqe;->f(Landroid/app/Activity;)V

    const-string v0, "codekk_op"

    invoke-static {p0, v0}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v5

    if-eqz v5, :cond_14

    iget-boolean v5, v5, Lg/ert;->c:Z

    if-nez v5, :cond_14

    invoke-static {p0}, Lg/bys;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v0, "codekk_op2"

    invoke-static {p0, v0}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {v5}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ert;

    if-eqz v5, :cond_12

    iput-boolean v2, v5, Lg/ert;->c:Z

    goto :goto_b

    :cond_13
    iput-boolean v2, p0, Lg/elf;->l:Z

    :cond_14
    iget-boolean v0, p0, Lg/elf;->l:Z

    if-eqz v0, :cond_15

    iput-boolean v4, p0, Lg/elf;->l:Z

    iget-object v0, p0, Lg/elf;->r:Lg/bzj;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_15
    iget-boolean v0, p0, Lg/elf;->z:Z

    if-eqz v0, :cond_17

    iput-boolean v4, p0, Lg/elf;->z:Z

    sget-object v0, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-class v0, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lg/elf;->ag()V

    invoke-virtual {p0}, Lg/elf;->ah()V

    goto/16 :goto_c

    :cond_16
    iput-object v3, p0, Lg/elf;->v:Ljava/lang/String;

    goto/16 :goto_c

    :cond_17
    iget-object v0, p0, Lg/elf;->v:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-boolean v3, p0, Lg/elf;->m:Z

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iput-boolean v4, p0, Lg/elf;->m:Z

    goto/16 :goto_c

    :cond_18
    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lg/elf;->i:Z

    if-eqz v0, :cond_19

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/fwo;

    invoke-direct {v1, p0, v2}, Lg/fwo;-><init>(Lg/elf;I)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v3, "rated"

    invoke-static {v0, v3, v4}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v3, "last_rate_remind_count"

    invoke-static {v0, v4, v3}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v5, 0x4

    if-ge v0, v5, :cond_1c

    sget-boolean v0, Lg/cyz;->c:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    const-string v6, "startup_times"

    invoke-static {v0, v4, v6}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    invoke-static {v0, v7, v6}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lg/elf;->aa:Lg/elf;

    const-string v7, "success_total_count"

    invoke-static {v6, v4, v7}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v7, v4, v3}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    div-int/lit8 v7, v6, 0xc

    if-lt v0, v5, :cond_1a

    if-gtz v7, :cond_1b

    :cond_1a
    if-ne v0, v2, :cond_1c

    const/16 v0, 0xf

    if-lt v6, v0, :cond_1c

    :cond_1b
    if-le v7, v4, :cond_1c

    iget-object v0, p0, Lg/elf;->aa:Lg/elf;

    invoke-static {v0, v7, v3}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lg/get;

    invoke-direct {v6, v1, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v4, -0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lg/afo;->az(Landroid/view/View;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)Lg/sd;

    move-result-object v0

    iput-object v0, p0, Lg/elf;->t:Lg/sd;

    :cond_1c
    :goto_c
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lg/ub;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/elf;->i:Z

    iget-object v0, p0, Lg/elf;->t:Lg/sd;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    :cond_0
    return-void
.end method
