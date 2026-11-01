.class public Lc/c/a;
.super Lg/dms;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public d:Landroidx/appcompat/widget/SwitchCompat;

.field public e:Landroidx/appcompat/widget/SwitchCompat;

.field public f:Landroidx/appcompat/widget/SwitchCompat;

.field public g:Lc/c/a;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lc/c/a;->d:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {p1}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object p1

    iget-object v0, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/dpa;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lg/dpa;->d:Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lg/dpa;->d:Ljava/lang/Object;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "ad_auto_skip"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_2
    iget-object v0, p0, Lc/c/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {p1}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object p1

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "ad_auto_identify"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_3
    iget-object v0, p0, Lc/c/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {p1}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object p1

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "ad_show_skipped_tips"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lc/c/a;->g:Lc/c/a;

    const p1, 0x7f090059

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/c/a;->h:Landroid/widget/TextView;

    const p1, 0x7f09008c

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/c/a;->d:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {v0}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object v0

    invoke-virtual {v0}, Lg/dpa;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/c/a;->d:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f09008b

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/c/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {v0}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object v0

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "ad_auto_identify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/c/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090302

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/c/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/c/a;->g:Lc/c/a;

    invoke-static {v0}, Lg/dpa;->h(Landroid/content/Context;)Lg/dpa;

    move-result-object v0

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "ad_show_skipped_tips"

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/c/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f09005b

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f09005a

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onResume()V
    .locals 14

    invoke-super {p0}, Lg/dms;->onResume()V

    iget-object v0, p0, Lc/c/a;->g:Lc/c/a;

    const-string v1, "ad_skip_count"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    mul-long v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0xe10

    const-wide/32 v10, 0x15180

    cmp-long v12, v1, v10

    if-ltz v12, :cond_0

    div-long v12, v1, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    rem-long/2addr v1, v10

    div-long v10, v1, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    rem-long/2addr v1, v8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v12, v2, v5

    aput-object v10, v2, v4

    aput-object v1, v2, v3

    const v1, 0x7f12017e

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    cmp-long v10, v1, v8

    if-ltz v10, :cond_1

    div-long v10, v1, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    rem-long/2addr v1, v8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v10, v2, v5

    aput-object v1, v2, v4

    const v1, 0x7f120251

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    div-long v8, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    rem-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v8, v2, v5

    aput-object v1, v2, v4

    const v1, 0x7f1202fc

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const v1, 0x7f120403

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lc/c/a;->h:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    const v0, 0x7f120062

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
