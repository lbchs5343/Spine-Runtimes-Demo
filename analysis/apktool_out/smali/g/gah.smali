.class public final synthetic Lg/gah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lc/e/b;

.field public final synthetic b:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public synthetic constructor <init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gah;->a:Lc/e/b;

    iput-object p2, p0, Lg/gah;->b:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    sget p1, Lc/e/b;->d:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lg/gah;->a:Lc/e/b;

    iget-object v2, p0, Lg/gah;->b:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p2, :cond_1

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v3}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/dkj;

    invoke-direct {v4, v1, p2, v2}, Lg/dkj;-><init>(Lc/e/b;ZLandroidx/appcompat/widget/SwitchCompat;)V

    new-array p2, v0, [Lg/fcd;

    aput-object v4, p2, p1

    invoke-static {v1, v3, p2}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    return-void

    :cond_0
    invoke-virtual {v1, p2}, Lc/e/b;->q(Z)V

    return-void

    :cond_1
    invoke-static {v1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v3

    const v4, 0x7f12038a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, p1

    const v4, 0x7f12038e

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v5, Lg/die;

    iput-object v4, v5, Lg/die;->f:Ljava/lang/CharSequence;

    const v4, 0x7f12038b

    iget-object v6, v5, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v5, Lg/die;->m:Ljava/lang/CharSequence;

    iget-object v4, v1, Lc/e/b;->i:Lc/e/b;

    invoke-static {v4}, Lc/b/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, p1

    const p1, 0x7f12038d

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lg/dtm;

    invoke-direct {v4, v1, v2, v0}, Lg/dtm;-><init>(Lg/dms;Ljava/lang/Object;I)V

    invoke-virtual {v3, p1, v4}, Lg/gmn;->q(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/azn;

    invoke-direct {p1, v1, v0, p2}, Lg/azn;-><init>(Ljava/lang/Object;IZ)V

    const p2, 0x7f12038c

    invoke-virtual {v3, p2, p1}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/fgw;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v2}, Lg/fgw;-><init>(ILjava/lang/Object;)V

    const p2, 0x7f120082

    invoke-virtual {v3, p2, p1}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    invoke-static {v1, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void
.end method
