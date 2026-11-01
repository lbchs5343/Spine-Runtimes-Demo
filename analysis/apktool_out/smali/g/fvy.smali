.class public Lg/fvy;
.super Lg/cqo;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/widget/TextView;

.field public c:Lg/fei;

.field public d:Landroid/widget/TextView;

.field public e:Z

.field public f:Z

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Ljava/lang/String;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fvy;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fvy;->e:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const-string v0, "https://app.codekk.com/common/membership_agreement?packageName="

    iget-object v1, p0, Lg/fvy;->c:Lg/fei;

    invoke-virtual {v1}, Lg/fei;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lg/fvy;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "p able is null in DVDialogFragment"

    const v4, 0x7f1203bc

    const/4 v5, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lg/fvy;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lg/cgm;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lg/cgm;

    :cond_1
    if-nez v2, :cond_2

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-static {p1, v4, v5}, Lg/gm;->i(Landroid/content/Context;II)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v3, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v2}, Lg/cgm;->g()V

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "tt_2_cf_gp"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lg/fvy;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lg/ajf;

    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0, v2, v5}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "tt_2_cf_al"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lg/fvy;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v6, 0x0

    if-ne p1, v1, :cond_5

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u94fe\u63a5"

    invoke-static {p1, v0, v6}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_5
    iget-object v0, p0, Lg/fvy;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_b

    iget-boolean p1, p0, Lg/fvy;->e:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "tt_2_2_cft_d"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const v0, 0x7f120209

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/fvy;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lg/fgw;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lg/fgw;-><init>(ILjava/lang/Object;)V

    iget-object v3, p0, Lg/fvy;->a:Landroid/app/Activity;

    const v4, 0x7f120082

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/efa;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lg/efa;-><init>(I)V

    invoke-static {p1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v7

    iget-object v8, v7, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v8, Lg/die;

    const-string v9, ""

    iput-object v9, v8, Lg/die;->f:Ljava/lang/CharSequence;

    iput-object v0, v8, Lg/die;->m:Ljava/lang/CharSequence;

    iput-object v1, v8, Lg/die;->x:Ljava/lang/CharSequence;

    iput-object v2, v8, Lg/die;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v8, Lg/die;->q:Ljava/lang/CharSequence;

    iput-object v4, v8, Lg/die;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7}, Lg/gmn;->r()Lg/fpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {p1, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    :goto_0
    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void

    :cond_8
    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "tt_2_cft_e"

    invoke-static {p1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v0, p1, Lg/cgm;

    if-eqz v0, :cond_9

    move-object v2, p1

    check-cast v2, Lg/cgm;

    :cond_9
    if-nez v2, :cond_a

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-static {p1, v4, v5}, Lg/gm;->i(Landroid/content/Context;II)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v3, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    invoke-interface {v2}, Lg/cgm;->f()V

    invoke-virtual {p0}, Lg/cqo;->dismiss()V

    :cond_b
    :goto_1
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->o(Landroid/app/Activity;)Lg/aoz;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c004d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lg/cqo;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->al(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lg/fvy;->a:Landroid/app/Activity;

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lg/fvy;->i:Landroid/widget/ImageView;

    const p2, 0x7f090215

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->k:Landroid/widget/TextView;

    const p2, 0x7f090120

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->d:Landroid/widget/TextView;

    const p2, 0x7f0901ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/fvy;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-static {v0}, Lg/dyd;->av(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09039a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09032e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/fvy;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090122

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/ScrollViewWithMaxHeight;

    iget-object p2, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-static {p2}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object p2

    aget v0, p2, v2

    const/4 v3, 0x1

    aget p2, p2, v3

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    if-le v0, p2, :cond_1

    int-to-double v6, p2

    const-wide/high16 v8, 0x400c000000000000L    # 3.5

    :goto_1
    mul-double v6, v6, v8

    div-double/2addr v6, v4

    double-to-int p2, v6

    goto :goto_2

    :cond_1
    int-to-double v6, p2

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "donation_package_name"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/fvy;->j:Ljava/lang/String;

    const-string p2, "donation_app_name"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/fvy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string p2, "donation_icon_url"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lg/fvy;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "donation_desc"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/fvy;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string p2, "promotion_rate"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "tc"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v0, "at"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/fvy;->f:Z

    const-string v0, "tuu"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/fvy;->e:Z

    iget-object p1, p0, Lg/fvy;->b:Landroid/widget/TextView;

    iget-boolean v0, p0, Lg/fvy;->f:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lg/fvy;->e:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/fvy;->b:Landroid/widget/TextView;

    const v0, 0x7f04011f

    invoke-static {v0, p1}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :cond_6
    :goto_3
    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    invoke-static {p1}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "channel_run_on_wind"

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    const v0, 0x1092f

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object p1, p0, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "com.android.vending"

    invoke-static {p1, v0, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.google.android.gms"

    invoke-static {p1, v0, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lg/fvy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/fvy;->l:Landroid/widget/TextView;

    const v0, 0x7f1203ba

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lg/fvy;->i:Landroid/widget/ImageView;

    new-instance v0, Lg/hcs;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg/hcs;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lg/fvy;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v0, ")"

    const-string v1, "("

    if-nez p1, :cond_9

    iget-object p1, p0, Lg/fvy;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p0, Lg/fvy;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_a
    new-instance p1, Lg/fei;

    invoke-direct {p1}, Lg/fei;-><init>()V

    iput-object p1, p0, Lg/fvy;->c:Lg/fei;

    return-void
.end method
