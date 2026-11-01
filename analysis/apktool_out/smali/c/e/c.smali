.class public Lc/e/c;
.super Lg/cms;
.source "SourceFile"


# instance fields
.field public d:Lc/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lc/e/c;->d:Lc/e/c;

    const p1, 0x7f0903b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/c;->d:Lc/e/c;

    sget-object v1, Lc/a/a;->d:Ljava/lang/String;

    const-string v1, "wv_small_window_default"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/ard;

    invoke-direct {v0, p0, v2}, Lg/ard;-><init>(Lc/e/c;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    const p1, 0x7f0903b3

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/c;->d:Lc/e/c;

    const-string v1, "wv_show_icon"

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/ard;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lg/ard;-><init>(Lc/e/c;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    const p1, 0x7f0903b4

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/c;->d:Lc/e/c;

    const-string v1, "wv_show_name"

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/ard;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/ard;-><init>(Lc/e/c;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    const p1, 0x7f0903b6

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/c;->d:Lc/e/c;

    const-string v1, "wv_show_title"

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/ard;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lg/ard;-><init>(Lc/e/c;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    const p1, 0x7f0903b5

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lc/e/c;->d:Lc/e/c;

    const-string v1, "wv_show_time"

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lg/ard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/ard;-><init>(Lc/e/c;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    iget-object p1, p0, Lc/e/c;->d:Lc/e/c;

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
