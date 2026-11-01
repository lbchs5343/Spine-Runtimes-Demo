.class public Lc/e/a;
.super Lg/awy;
.source "SourceFile"

# interfaces
.implements Lg/erp;


# static fields
.field public static final synthetic d:I


# instance fields
.field public e:Landroidx/appcompat/widget/SwitchCompat;

.field public f:Landroidx/appcompat/widget/SwitchCompat;

.field public g:Landroidx/appcompat/widget/SwitchCompat;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroidx/appcompat/widget/SwitchCompat;

.field public k:Landroidx/appcompat/widget/SwitchCompat;

.field public l:Landroid/view/View;

.field public m:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 5

    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f12018e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lg/bus;->a:I

    const-string v2, "TrineaAndroidCommon"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "shizuku_compatibility_mode_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f12018b

    goto :goto_0

    :cond_0
    const v2, 0x7f120180

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lg/cro;->ar(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lg/awy;->p:Lg/awy;

    const-string v1, "applist_grid_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1202ba

    goto :goto_0

    :cond_0
    const v0, 0x7f1202bb

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/e/a;->l:Landroid/view/View;

    iget-object v3, p0, Lc/e/a;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v0, v4, v2

    const v0, 0x7f12040d

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lg/awy;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090015

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/rg;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/e/a;->l:Landroid/view/View;

    const p1, 0x7f090076

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/a;->h:Landroid/widget/TextView;

    const p1, 0x7f090077

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc/e/a;->o()V

    iget-object p1, p0, Lc/e/a;->l:Landroid/view/View;

    new-instance v0, Lg/rg;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007a

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->j:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lg/awy;->p:Lg/awy;

    invoke-static {v0}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->j:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lg/cus;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090079

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->m:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lg/awy;->p:Lg/awy;

    const-string v1, "applist_show_recently"

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->m:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lg/cus;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0902a9

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/16 v4, 0x8

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lg/rg;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p1, p0, Lg/awy;->p:Lg/awy;

    const-string v0, "setting_sns"

    invoke-static {p1, v0, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    const v0, 0x7f0902b5

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0903a0

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090117

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090347

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f09039f

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "layout_inspector_ow_auto_hide"

    invoke-static {v3, v4, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v3, Lg/cus;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090119

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "d_skip_well_known_lib"

    invoke-static {v3, v4, v2}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v3, Lg/cus;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090115

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->k:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1201a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lg/cro;->ar(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchPadding(I)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    iget-object p1, p0, Lc/e/a;->k:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "decompile_allow_media_scan"

    invoke-static {v3, v4, v1}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->k:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lg/cus;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090346

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lc/e/a;->g:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    const-string v3, "text_copy_ow_auto_hide"

    invoke-static {v1, v3, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lc/e/a;->g:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lg/cus;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/cus;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lc/e/a;->n()V

    const p1, 0x7f090109

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lg/rg;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902f4

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f120416

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120415

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lg/cro;->ar(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0902f3

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lg/rg;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09026e

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lg/rg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/rg;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/rg;-><init>(Lc/e/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/awy;->p:Lg/awy;

    invoke-static {p1}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-static {p0}, Lg/fml;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lg/cms;->onResume()V

    invoke-virtual {p0}, Lc/e/a;->n()V

    iget-object v0, p0, Lc/e/a;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/e/a;->o()V

    :cond_0
    iget-object v0, p0, Lc/e/a;->j:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    invoke-static {v1}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lc/e/a;->m:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "applist_show_recently"

    const/4 v5, -0x1

    invoke-static {v3, v5, v4}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lc/e/a;->f:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "layout_inspector_ow_auto_hide"

    invoke-static {v3, v4, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lc/e/a;->g:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "text_copy_ow_auto_hide"

    invoke-static {v3, v4, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lc/e/a;->e:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    const-string v4, "d_skip_well_known_lib"

    invoke-static {v3, v4, v2}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lc/e/a;->k:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lg/awy;->p:Lg/awy;

    const-string v3, "decompile_allow_media_scan"

    invoke-static {v2, v3, v1}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_7
    return-void
.end method
