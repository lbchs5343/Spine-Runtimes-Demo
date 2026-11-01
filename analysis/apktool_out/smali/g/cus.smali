.class public final synthetic Lg/cus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/e/a;


# direct methods
.method public synthetic constructor <init>(Lc/e/a;I)V
    .locals 0

    iput p2, p0, Lg/cus;->a:I

    iput-object p1, p0, Lg/cus;->b:Lc/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget p1, p0, Lg/cus;->a:I

    const-string v0, "auto_hide_changed"

    const-string v1, "c.t.d.s.c"

    const/4 v2, 0x1

    iget-object v3, p0, Lg/cus;->b:Lc/e/a;

    packed-switch p1, :pswitch_data_0

    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v0, "decompile_allow_media_scan"

    invoke-static {p1, v0, p2}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    invoke-static {p1}, Lg/dha;->a(Lg/cms;)V

    return-void

    :pswitch_0
    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v0, "d_skip_well_known_lib"

    invoke-static {p1, v0, p2}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v4, "layout_inspector_ow_auto_hide"

    invoke-static {p1, v4, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v0, "applist_show_recently"

    invoke-static {p1, p2, v0}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :pswitch_3
    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v0, "applist_show_system_app"

    invoke-static {p1, v0, p2}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_4
    sget p1, Lc/e/a;->d:I

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    const-string v4, "text_copy_ow_auto_hide"

    invoke-static {p1, v4, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
