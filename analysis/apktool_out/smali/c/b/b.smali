.class public Lc/b/b;
.super Lg/abn;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public e:Z

.field public f:Z

.field public g:Landroid/view/Menu;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fyx;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/b/b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/b/b;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/b;->f:Z

    return-void
.end method

.method public static i(Landroid/content/Context;)I
    .locals 3

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "op_update_freq"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3c

    return p0

    :cond_0
    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/16 p0, 0x2760

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const p0, 0xa8c0

    return p0

    :cond_3
    :goto_0
    const/16 p0, 0x5a0

    return p0
.end method

.method public static synthetic j(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static k(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5

    const-string v0, "op_update_noti_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {p0, v1}, Lg/byh;->be(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "bar"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "inapp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "desk"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    :cond_2
    return-object v1
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c.c.o"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic m(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "op_update_noti_period"

    invoke-static {p0, v1, v2}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    invoke-static {p0, v3, v2}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    const/16 v2, 0xb

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x12

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic o(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic p(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic q(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic r(Lc/b/b;)La/a/ab;
    .locals 0

    iget-object p0, p0, Lg/fyx;->webView:La/a/ab;

    return-object p0
.end method

.method public static synthetic s(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic t(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic u(Lc/b/b;)La/a/ab;
    .locals 0

    iget-object p0, p0, Lg/fyx;->webView:La/a/ab;

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "op_updatable_default"

    invoke-static {p0, v1, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v1, v0}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "op_updatable"

    invoke-static {p0, v1, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v1, v0}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lc/b/b;)La/a/ab;
    .locals 0

    iget-object p0, p0, Lg/fyx;->webView:La/a/ab;

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    const-string v1, "op_update_freq"

    invoke-static {p0, v0, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x7f120390

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v1, v0, :cond_1

    const v0, 0x7f120393

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    const v2, 0x7f120392

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lc/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final aa(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const-string v2, "c.t.d.o.p.u.t"

    if-eqz v0, :cond_2

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/byh;->be(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, ","

    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "op_update_noti_mode"

    invoke-static {p1, v0, p2}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    :cond_1
    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lc/b/b;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const p2, 0x7f1200ee

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_3
    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lg/byh;->p(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final ab(ILandroid/view/MenuItem;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p2, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v0, "op_update_freq"

    invoke-static {p2, p1, v0}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string p2, "c.t.d.o.p.u.t"

    invoke-static {p1, p2}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final ac(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "op_updatable"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "c.t.d.o.p.u.t"

    invoke-static {v0, v1}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/ub;->invalidateOptionsMenu()V

    :try_start_0
    const-string v0, "op_updatable_total"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "op_updatable_true"

    goto :goto_0

    :cond_0
    const-string p1, "op_updatable_false"

    :goto_0
    invoke-static {p0, v0, p1}, Lg/dzm;->ah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final ad(ILandroid/view/MenuItem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object p2, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v0, "op_update_noti_period"

    invoke-static {p2, p1, v0}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string p2, "c.t.d.o.p.u.t"

    invoke-static {p1, p2}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final getShortcutIconResId()I
    .locals 1

    const v0, 0x7f080192

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lg/fyx;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/b;->h:Ljava/lang/String;

    const-string v1, "show_op_update_menu"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lc/b/b;->e:Z

    :cond_0
    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "op_click_times"

    invoke-static {p1, v1, v2}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v2}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1, v2}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    sget-object v0, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_accessed_time"

    invoke-static {p1, v1, v0}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v0, "c.t.d.o.p.u.i"

    invoke-static {p1, v0}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    invoke-super {p0, p1}, Lg/fyx;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lc/b/b;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lc/b/b;->g:Landroid/view/Menu;

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e0009

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-static {p1, v1}, Lg/cpn;->a(Landroid/view/Menu;Z)V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0

    const v2, 0x7f090396

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v2, 0x7f090397

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f090252

    invoke-interface {v2, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const v3, 0x7f090261

    invoke-interface {v2, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const v3, 0x7f09025a

    invoke-interface {v2, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const/4 v2, 0x2

    const-string v3, "op_update_freq"

    invoke-static {v0, v2, v3}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    invoke-static {v0, v4, v3}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f090254

    goto :goto_0

    :cond_1
    const v4, 0x7f090253

    if-ne v0, v2, :cond_3

    :cond_2
    const v0, 0x7f090253

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const v0, 0x7f090256

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    const v0, 0x7f090255

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v4, "op_update_noti_period"

    invoke-static {v0, v1, v4}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    invoke-static {v0, v5, v4}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const v4, 0x7f090264

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    const v4, 0x7f090263

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_7

    const v4, 0x7f090262

    :cond_7
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc/b/b;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    const v2, 0x7f09025d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "bar"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v2, 0x7f09025b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "inapp"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v2, 0x7f09025f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v2, "desk"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090396

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v0

    const v4, 0x7f12038a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const v4, 0x7f12038e

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v5, Lg/die;

    iput-object v4, v5, Lg/die;->f:Ljava/lang/CharSequence;

    const v4, 0x7f12038b

    iget-object v6, v5, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v5, Lg/die;->m:Ljava/lang/CharSequence;

    iget-object v4, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v4}, Lc/b/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const v4, 0x7f12038d

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lg/gjc;

    invoke-direct {v5, p0, v2}, Lg/gjc;-><init>(Lc/b/b;I)V

    invoke-virtual {v0, v4, v5}, Lg/gmn;->q(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lg/dtm;

    invoke-direct {v2, p0, p1, v1}, Lg/dtm;-><init>(Lg/dms;Ljava/lang/Object;I)V

    const p1, 0x7f12038c

    invoke-virtual {v0, p1, v2}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/efa;

    invoke-direct {p1, v3}, Lg/efa;-><init>(I)V

    const v1, 0x7f120082

    invoke-virtual {v0, v1, p1}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    invoke-static {p0, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return v3

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lg/fwf;

    invoke-direct {v2, p0, p1}, Lg/fwf;-><init>(Lc/b/b;Landroid/view/MenuItem;)V

    new-array p1, v3, [Lg/fcd;

    aput-object v2, p1, v1

    invoke-static {p0, v0, p1}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lc/b/b;->ac(Landroid/view/MenuItem;)V

    return v3

    :cond_2
    const v1, 0x7f090254

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v3, p1}, Lc/b/b;->ab(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f090253

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v2, p1}, Lc/b/b;->ab(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f090256

    const/4 v4, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v4, p1}, Lc/b/b;->ab(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_5
    const v1, 0x7f090255

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lc/b/b;->ab(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_6
    const v1, 0x7f090264

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v3, p1}, Lc/b/b;->ad(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_7
    const v1, 0x7f090263

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v2, p1}, Lc/b/b;->ad(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_8
    const v1, 0x7f090262

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, v4, p1}, Lc/b/b;->ad(ILandroid/view/MenuItem;)V

    goto :goto_0

    :cond_9
    const v1, 0x7f09025d

    if-ne v0, v1, :cond_a

    const-string v0, "bar"

    invoke-virtual {p0, p1, v0}, Lc/b/b;->aa(Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const v1, 0x7f09025b

    if-ne v0, v1, :cond_b

    const-string v0, "inapp"

    invoke-virtual {p0, p1, v0}, Lc/b/b;->aa(Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const v1, 0x7f09025f

    if-ne v0, v1, :cond_c

    const-string v0, "desk"

    invoke-virtual {p0, p1, v0}, Lc/b/b;->aa(Landroid/view/MenuItem;Ljava/lang/String;)V

    :cond_c
    :goto_0
    invoke-super {p0, p1}, Lg/fyx;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .locals 6

    invoke-super {p0}, Lg/ub;->onStart()V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "op_shortcuted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v1, v3}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "startup_times"

    invoke-static {v0, v2, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v3, "op_click_times"

    invoke-static {v1, v2, v3}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    invoke-static {v1, v4, v3}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x6

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v1

    iget-object v3, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/die;

    const v4, 0x7f120387

    iget-object v5, v3, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v4, Lg/gjc;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lg/gjc;-><init>(Lc/b/b;I)V

    const v5, 0x7f120084

    invoke-virtual {v1, v5, v4}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lg/gjc;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lg/gjc;-><init>(Lc/b/b;I)V

    const v5, 0x7f120082

    invoke-virtual {v1, v5, v4}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lg/du;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    iput-object v4, v3, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1}, Lg/gmn;->r()Lg/fpl;

    move-result-object v1

    invoke-static {v0, v1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    :cond_0
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "op_update_menu_tip_count"

    invoke-static {v0, v2, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v3}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "op_source_noti_update"

    iget-object v4, p0, Lc/b/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lc/b/b;->f:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    iput-boolean v3, p0, Lc/b/b;->f:Z

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    invoke-static {v0, v4, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4, v1}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lc/b/b;->z(I)V

    :cond_1
    return-void
.end method

.method public final z(I)V
    .locals 4

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/dj;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    if-nez p1, :cond_1

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
