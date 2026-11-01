.class public final synthetic Lg/dvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lg/dvt;->a:I

    iput-object p1, p0, Lg/dvt;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget p1, p0, Lg/dvt;->a:I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f120350

    iget-object p2, p0, Lg/dvt;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "com.codekk.newsecond"

    invoke-static {p2, v1, p1, v0}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lg/dvt;->b:Landroid/content/Context;

    invoke-static {v3}, Lg/fml;->d(Landroid/content/Context;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.systemui.tuner.TunerActivity"

    const-string v0, "com.android.systemui"

    invoke-direct {p1, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.systemui.DemoMode"

    invoke-direct {p1, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v3, p2, p1}, Lg/cro;->t(Landroid/content/Context;ZLg/gtf;)Lg/fpl;

    move-result-object p1

    invoke-static {v3, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    goto :goto_0

    :cond_0
    const-string p1, "TrineaAndroidCommon"

    const/4 p2, 0x0

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "open_tuner_count"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    invoke-static {v3, p2, v0}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    const/16 p2, 0xa

    if-gt p1, p2, :cond_1

    const p1, 0x7f120549

    invoke-static {v3, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
