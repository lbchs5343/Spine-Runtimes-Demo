.class public final Lg/gdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gdm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lg/gdm;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    instance-of p2, p1, Lg/elf;

    const-class v0, Lb/d/a;

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "layout_control_window_only"

    invoke-virtual {v2, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lb/d/ab;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lc/a/a;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p2, v2, v0}, Lg/yb;->j(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return v6

    :cond_2
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    return v6
.end method

.method public final c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    iget v0, p0, Lg/gdm;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lb/c/b;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-class v0, Lb/d/a;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibilityClassName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    const-string v1, "tool"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-class v0, Ld/b/a;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-class v0, Lc/c/c;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-class v0, Lb/b/c;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-class v0, Lc/c/b;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-class v0, Lb/b/b;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-class v0, Lb/d/ab;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibilityClassName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-class v0, Lc/a/a;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibilityClassName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_8
    const-class v0, Lb/b/a;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-class v0, Lb/a/b;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_ad_full"

    invoke-static {p1}, Lg/fml;->h(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_ad_banner"

    invoke-static {p1}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_a
    const-class v0, Lc/c/c;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-class v0, Lf/a/d;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_c
    const-class v0, Lb/a/b;

    invoke-static {p1, v0}, Lg/acr;->au(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_ad_full"

    invoke-static {p1}, Lg/fml;->h(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_ad_banner"

    invoke-static {p1}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
