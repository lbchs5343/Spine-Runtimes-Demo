.class public Lc/e/b;
.super Lg/cms;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:Lc/e/b;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method

.method public static l(Lc/e/b;Z)Ljava/util/List;
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
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

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


# virtual methods
.method public final m(Ljava/lang/String;ZLandroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 2

    const-string v0, "c.t.d.o.p.u.t"

    if-eqz p2, :cond_2

    iget-object p2, p0, Lc/e/b;->i:Lc/e/b;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lg/byh;->be(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ","

    invoke-static {p1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "op_update_noti_mode"

    invoke-static {p2, p3, p1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    :cond_1
    iget-object p1, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1, v0}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lc/e/b;->i:Lc/e/b;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc/e/b;->l(Lc/e/b;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_6

    const-string p2, "bar"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string p2, "inapp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p4, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string p2, "desk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p5, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lc/e/b;->i:Lc/e/b;

    const p2, 0x7f1200ee

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_6
    iget-object p2, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {p2, p1}, Lg/byh;->p(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1, v0}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 9

    iget-object v0, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lc/e/b;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lc/e/b;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ec28f5c    # 0.38f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f12039c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12039b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12039a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/e/b;->h:Landroid/view/View;

    iget-object v2, p0, Lc/e/b;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lc/e/b;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lc/e/b;->i:Lc/e/b;

    const/4 v5, 0x1

    const-string v6, "op_update_noti_period"

    invoke-static {v4, v5, v6}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    invoke-static {v4, v7, v6}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object v0, v3, v5

    const v0, 0x7f12040d

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o()V
    .locals 10

    iget-object v0, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lc/e/b;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lc/e/b;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ec28f5c    # 0.38f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f120391

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120390

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120393

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120392

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/e/b;->j:Landroid/view/View;

    iget-object v2, p0, Lc/e/b;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lc/e/b;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lc/e/b;->i:Lc/e/b;

    const/4 v5, 0x2

    const-string v6, "op_update_freq"

    invoke-static {v4, v5, v6}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    invoke-static {v4, v7, v6}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v9, 0x4

    if-ne v4, v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    :goto_1
    aget-object v0, v0, v8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    const v0, 0x7f12040d

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lc/e/b;->i:Lc/e/b;

    const p1, 0x7f090251

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {v0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/gah;

    invoke-direct {v0, p0, p1}, Lg/gah;-><init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    const p1, 0x7f090257

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/e/b;->j:Landroid/view/View;

    const p1, 0x7f090258

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/b;->f:Landroid/widget/TextView;

    const p1, 0x7f090259

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/b;->g:Landroid/widget/TextView;

    const p1, 0x7f120391

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120390

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120393

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120392

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc/e/b;->o()V

    iget-object v0, p0, Lc/e/b;->j:Landroid/view/View;

    new-instance v1, Lg/fqb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/fqb;-><init>(Lc/e/b;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090265

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/e/b;->h:Landroid/view/View;

    const p1, 0x7f090266

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/b;->k:Landroid/widget/TextView;

    const p1, 0x7f090267

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/b;->e:Landroid/widget/TextView;

    const p1, 0x7f12039c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12039b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12039a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc/e/b;->n()V

    iget-object v0, p0, Lc/e/b;->h:Landroid/view/View;

    new-instance v1, Lg/fqb;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/fqb;-><init>(Lc/e/b;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025e

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const p1, 0x7f09025c

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    const p1, 0x7f090260

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Lc/e/b;->p()V

    new-instance v0, Lg/ctr;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lg/ctr;-><init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;I)V

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lg/ctr;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lg/ctr;-><init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;I)V

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lg/ctr;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lg/ctr;-><init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;I)V

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {v2}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-static {v3}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-static {v4}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    iget-object p1, v1, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0}, Lg/fml;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 5

    const v0, 0x7f09025e

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f09025c

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f090260

    invoke-virtual {p0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v3, p0, Lc/e/b;->i:Lc/e/b;

    invoke-static {v3}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lc/e/b;->i:Lc/e/b;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lc/e/b;->l(Lc/e/b;Z)Ljava/util/List;

    move-result-object v3

    const-string v4, "bar"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const-string v0, "inapp"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const-string v0, "desk"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final q(Z)V
    .locals 2

    iget-object v0, p0, Lc/e/b;->i:Lc/e/b;

    const-string v1, "op_updatable"

    invoke-static {v0, v1, p1}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lc/e/b;->i:Lc/e/b;

    const-string v0, "c.t.d.o.p.u.t"

    invoke-static {p1, v0}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/e/b;->o()V

    invoke-virtual {p0}, Lc/e/b;->n()V

    invoke-virtual {p0}, Lc/e/b;->p()V

    return-void
.end method
