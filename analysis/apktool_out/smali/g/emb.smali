.class public final Lg/emb;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/elf;


# direct methods
.method public constructor <init>(Lg/elf;)V
    .locals 0

    iput-object p1, p0, Lg/emb;->a:Lg/elf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "first_use_accessibility"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "tips"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lg/emb;->a:Lg/elf;

    iget-boolean v1, v0, Lg/elf;->m:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    const v0, 0x7f09030f

    invoke-virtual {p1, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lg/dij;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x2

    const v3, 0x7f120272

    invoke-static {v0, p2, v2, v3, v1}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object p2

    iput-object p2, p1, Lg/elf;->y:Lg/sd;

    return-void

    :cond_3
    :goto_0
    invoke-static {p1, p2}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string v1, "c.t.d.p.bdf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    const-string v0, "tool-id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lg/elf;->ad(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    invoke-virtual {p1}, Lg/cms;->fullScreenAdShow()V

    return-void

    :cond_6
    const-string v1, "cacu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lg/emb;->a:Lg/elf;

    iget-object v0, v0, Lg/elf;->k:Lg/dmr;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    sput-boolean v2, Lg/acr;->b:Z

    iget-object v0, p0, Lg/emb;->a:Lg/elf;

    iget-object v0, v0, Lg/elf;->k:Lg/dmr;

    invoke-virtual {v0}, Lg/dmr;->n()V

    iget-object v0, p0, Lg/emb;->a:Lg/elf;

    iget-object v0, v0, Lg/elf;->k:Lg/dmr;

    iget-boolean v1, v0, Lg/dmr;->c:Z

    if-nez v1, :cond_8

    iget-object v0, v0, Lg/dmr;->e:Lg/elf;

    invoke-virtual {v0}, Lg/elf;->af()V

    :cond_8
    invoke-static {p1}, Lg/cyz;->al(Landroid/content/Context;)V

    invoke-static {p1}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->o()Z

    invoke-static {p1, v0}, Lcn/trinea/android/lib/view/BaseApplication;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "cacuoc"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/fxe;

    const-string v0, "cacunc"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lg/fxe;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object p1, p1, Lg/fxe;->alliance:Lg/fxe$e;

    if-eqz p1, :cond_9

    iget-object p2, p2, Lg/fxe;->alliance:Lg/fxe$e;

    if-eqz p2, :cond_9

    iget-boolean p1, p1, Lg/fxe$e;->isShowGoogleAd:Z

    iget-boolean p2, p2, Lg/fxe$e;->isShowGoogleAd:Z

    if-eq p1, p2, :cond_d

    :cond_9
    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    invoke-virtual {p1}, Lg/elf;->ai()V

    return-void

    :cond_a
    const-string p1, "cn.trinea.android.lib.ACTION_TOOL_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    iput-boolean v2, p1, Lg/elf;->l:Z

    return-void

    :cond_b
    const-string p1, "inspector_first_finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lg/emb;->a:Lg/elf;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_d
    :goto_1
    return-void
.end method
