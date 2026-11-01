.class public abstract Lg/cyz;
.super Lg/bvl;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static c:Z


# instance fields
.field public aa:Landroid/widget/TextView;

.field public ab:Landroid/widget/TextView;

.field public ac:Landroid/widget/TextView;

.field public ad:Landroid/widget/TextView;

.field public ae:Landroid/widget/TextView;

.field public af:Landroid/widget/TextView;

.field public ag:I

.field public ah:Landroid/view/View;

.field public ai:Landroid/view/View;

.field public aj:Landroid/view/View;

.field public ak:J

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/app/Activity;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Lg/fei;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Lg/fjv;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/cyz;->ak:J

    return-void
.end method

.method public static al(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p0

    invoke-virtual {p0}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p0

    const v0, 0x1343c35

    if-eqz p0, :cond_0

    iget p0, p0, Lg/fxe$a;->fii:I

    goto :goto_0

    :cond_0
    const p0, 0x1343c35

    :goto_0
    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sput-boolean p0, Lg/cyz;->c:Z

    return-void
.end method


# virtual methods
.method public abstract am()Z
.end method

.method public final an()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "https://app.codekk.com/common/privacy_policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0}, Lg/erl;->ag(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "c"

    const-string v3, "gp"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lg/erl;->ag(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f12024b

    goto :goto_0

    :cond_1
    const v2, 0x7f120080

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/cyz;->ac:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lg/cyz;->ak:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long p1, v5, v7

    if-ltz p1, :cond_0

    iput v2, p0, Lg/cyz;->ag:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lg/cyz;->ag:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/cyz;->ag:I

    :goto_0
    iput-wide v3, p0, Lg/cyz;->ak:J

    iget p1, p0, Lg/cyz;->ag:I

    invoke-static {}, Lg/byh;->bc()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-lt p1, v0, :cond_29

    iput v2, p0, Lg/cyz;->ag:I

    move-object p1, p0

    check-cast p1, Lg/dmb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "channel: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const-string v2, "Unknown"

    goto :goto_2

    :cond_2
    const-string v2, "Google Play"

    goto :goto_2

    :cond_3
    const-string v2, "China Store"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "icon"

    const v4, 0x7f0f0002

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "title"

    const-string v4, "Some Info"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lg/hcn;

    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0, v2, v1}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lg/cyz;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lg/cyz;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lg/cyz;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-object v0, p0, Lg/cyz;->ah:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_9

    :cond_6
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p1

    if-nez p1, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    iget-object p1, p1, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    invoke-static {p1}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_8
    iget-object v0, p0, Lg/cyz;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_9

    :cond_9
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    iget-object p1, p1, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-static {p1}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_b
    iget-object v0, p0, Lg/cyz;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_9

    :cond_c
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p1

    if-nez p1, :cond_d

    goto/16 :goto_9

    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    iget-object p1, p1, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-static {p1}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_e
    iget-object v0, p0, Lg/cyz;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lg/cyz;->u:Lg/fjv;

    if-nez p1, :cond_f

    goto/16 :goto_9

    :cond_f
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lg/cyz;->u:Lg/fjv;

    invoke-virtual {p1}, Lg/fjv;->isUpdateByDownload()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/dqe;->k(Landroid/app/Activity;)Lg/dqe;

    move-result-object p1

    iget-object v0, p0, Lg/cyz;->u:Lg/fjv;

    invoke-virtual {p1, v0, v2}, Lg/dqe;->n(Lg/fjv;Z)V

    return-void

    :cond_11
    :goto_3
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    iget-object v0, p0, Lg/cyz;->u:Lg/fjv;

    invoke-virtual {v0}, Lg/fjv;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v1}, Lg/eyt;->ax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_12
    iget-object v0, p0, Lg/cyz;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p1, v0, :cond_26

    iget-object v0, p0, Lg/cyz;->ad:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_13

    goto/16 :goto_7

    :cond_13
    iget-object v0, p0, Lg/cyz;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_9

    :cond_14
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lg/cbo;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v2, v0, v1}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void

    :cond_15
    iget-object v0, p0, Lg/cyz;->aj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const-string v3, "android.intent.extra.TEXT"

    if-ne p1, v0, :cond_16

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f120027

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const v0, 0x7f120041

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v1, p0, Lg/cyz;->k:Landroid/app/Activity;

    const v2, 0x7f12040e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    :cond_16
    iget-object v0, p0, Lg/cyz;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://app.codekk.com/common/collected_information?packageName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f1203c8

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_17
    iget-object v0, p0, Lg/cyz;->ae:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://app.codekk.com/common/permission_list?packageName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f1203cb

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_18
    iget-object v0, p0, Lg/cyz;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/fyt;->i(Landroid/content/Context;)V

    return-void

    :cond_19
    iget-object v0, p0, Lg/cyz;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://app.codekk.com/common/third_party_information_share?packageName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f120479

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1a
    iget-object v0, p0, Lg/cyz;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://app.codekk.com/common/third_party_sdk?packageName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f120478

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1b
    iget-object v0, p0, Lg/cyz;->af:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://app.codekk.com/common/service_agreement?packageName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f120081

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1c
    iget-object v0, p0, Lg/cyz;->aa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1d

    invoke-virtual {p0}, Lg/cyz;->an()V

    return-void

    :cond_1d
    iget-object v0, p0, Lg/cyz;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1e

    goto :goto_4

    :cond_1e
    iget-object v0, p0, Lg/cyz;->ab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, Lg/cyz;->am()Z

    return-void

    :cond_1f
    iget-object v0, p0, Lg/cyz;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v5, ""

    const-string v6, ""

    const-string v2, "https://beian.miit.gov.cn/"

    const-string v3, ""

    const-string v4, ""

    invoke-static/range {v1 .. v6}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_20
    :goto_4
    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_9

    :cond_21
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p1}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_5

    :cond_22
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_23

    goto :goto_6

    :cond_23
    :goto_5
    new-instance v6, Landroid/content/Intent;

    const-string p1, "android.intent.action.SENDTO"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mailto:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    const v4, 0x7f120234

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    const v0, 0x7f1200bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const v0, 0x7f12020d

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ""

    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const v0, 0x7f12020e

    invoke-static {p1, v0, v2}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v4

    iget-object v5, p0, Lg/cyz;->k:Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    return-void

    :cond_24
    :goto_6
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    const v0, 0x7f120235

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v0}, Lg/acr;->br(Landroid/app/Activity;)Z

    move-result v0

    const v3, 0x7f120570

    if-eqz v0, :cond_25

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    const-string v4, "WeChat ID"

    invoke-static {v0, v4, p1, v1}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :cond_25
    iget-object v0, p0, Lg/cyz;->k:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :cond_26
    :goto_7
    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_9

    :cond_27
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/acr;->bh(Landroid/app/Activity;)V

    return-void

    :cond_28
    :goto_8
    iget-object p1, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-nez p1, :cond_2a

    :cond_29
    :goto_9
    return-void

    :cond_2a
    iget-object p1, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lg/eyt;->ax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v1}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130003

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const v0, 0x106000d

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const p3, 0x7f0c0046

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onStart()V
    .locals 16

    move-object/from16 v0, p0

    invoke-super {v0}, Lg/cqo;->onStart()V

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {v2, v5}, Lg/cro;->aw(Landroid/view/Window;Z)V

    const v6, 0x7f040134

    invoke-static {v6, v1}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v6

    invoke-static {v6}, Lg/afr;->e(I)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v6, v8

    if-lez v10, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Lg/bli;

    invoke-direct {v7, v1}, Lg/bli;-><init>(Landroid/view/View;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x23

    if-lt v8, v9, :cond_2

    new-instance v8, Lg/egy;

    invoke-direct {v8, v2, v7}, Lg/fqu;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_1

    :cond_2
    const/16 v9, 0x1e

    if-lt v8, v9, :cond_3

    new-instance v8, Lg/fqu;

    invoke-direct {v8, v2, v7}, Lg/fqu;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_1

    :cond_3
    const/16 v9, 0x1a

    if-lt v8, v9, :cond_4

    new-instance v8, Lg/bla;

    invoke-direct {v8, v2, v7}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_1

    :cond_4
    const/16 v9, 0x17

    if-lt v8, v9, :cond_5

    new-instance v8, Lg/boy;

    invoke-direct {v8, v2, v7}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_1

    :cond_5
    new-instance v8, Lg/djy;

    invoke-direct {v8, v2, v7}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    :goto_1
    invoke-virtual {v8, v6}, Lg/ffb;->b(Z)V

    invoke-virtual {v8, v6}, Lg/ffb;->a(Z)V

    new-instance v2, Lg/bfb;

    invoke-direct {v2, v5}, Lg/bfb;-><init>(I)V

    sget-object v6, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v1, v2}, Lg/cd;->b(Landroid/view/View;Lg/ghx;)V

    invoke-static {v1}, Lg/dzc;->c(Landroid/view/View;)V

    :cond_6
    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f090011

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lg/daa;

    invoke-direct {v7, v0, v2, v6}, Lg/daa;-><init>(Lg/cyz;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v7}, Lg/daa;->run()V

    new-instance v8, Lg/daa;

    invoke-direct {v8, v0, v6, v2}, Lg/daa;-><init>(Lg/cyz;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lg/aww;

    invoke-direct {v2, v0, v5, v7}, Lg/aww;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->ah:Landroid/view/View;

    iget-object v6, v0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v6}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v6

    invoke-virtual {v6}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v6

    const/16 v7, 0x8

    if-eqz v6, :cond_7

    iget-boolean v8, v6, Lg/fxe$a;->isShowManual:Z

    if-eqz v8, :cond_7

    iget-object v6, v6, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lg/cyz;->ah:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lg/eom;

    invoke-direct {v6, v0, v3}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->s:Landroid/widget/TextView;

    const v3, 0x7f12002f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lg/cyz;->ai:Landroid/view/View;

    new-instance v3, Lg/eom;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v6}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->t:Landroid/widget/TextView;

    const v3, 0x7f120036

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lg/cyz;->w:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->l:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->aj:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, v0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, v0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/erl;->ag(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f09029f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f12024b

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lg/eom;

    const/4 v8, 0x4

    invoke-direct {v3, v0, v8}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_8
    const v3, 0x7f090060

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lg/eom;

    const/4 v8, 0x5

    invoke-direct {v3, v0, v8}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const v2, 0x7f090016

    const v3, 0x7f090019

    const v8, 0x7f090018

    filled-new-array {v2, v3, v8}, [I

    move-result-object v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_e

    aget v11, v9, v10

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_d

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup;

    if-nez v13, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f0902b1

    const-string v5, ", "

    if-ne v14, v15, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lg/cyz;->t:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lg/cyz;->v:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f0902ef

    if-ne v14, v15, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0902f0

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0902ee

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f09015b

    if-ne v14, v15, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f09015c

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_e
    filled-new-array {v2, v3, v8}, [I

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v6, :cond_12

    aget v5, v2, v3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_10

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v7, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_10
    if-eqz v9, :cond_11

    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    const/16 v8, 0x8

    :goto_a
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    :goto_b
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lg/bvl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lg/dyd;->ao(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->k:Landroid/app/Activity;

    const p2, 0x7f09001a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lg/eom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090359

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->ac:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->n:Landroid/view/View;

    const p2, 0x7f0902b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->t:Landroid/widget/TextView;

    iget-object p2, p0, Lg/cyz;->n:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->v:Landroid/widget/TextView;

    const p2, 0x7f090013

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->ah:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/cyz;->ah:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f090157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->w:Landroid/view/View;

    const p2, 0x7f090158

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->s:Landroid/widget/TextView;

    iget-object p2, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p2}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lg/cyz;->s:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p2, p0, Lg/cyz;->w:Landroid/view/View;

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lg/fxe$a;->isShowFAQ:Z

    if-eqz v4, :cond_4

    iget-object v3, v3, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/cyz;->w:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->f:Landroid/view/View;

    const p2, 0x7f0902be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->q:Landroid/widget/TextView;

    iget-object p2, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p2}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p2, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lg/cyz;->q:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p2, p0, Lg/cyz;->f:Landroid/view/View;

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-boolean v4, v3, Lg/fxe$a;->isShowUserResearch:Z

    if-eqz v4, :cond_7

    iget-object v3, v3, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/cyz;->f:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->aj:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09015b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->g:Landroid/view/View;

    const p2, 0x7f09015a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lg/cyz;->d:Landroid/widget/TextView;

    const v3, 0x7f12002c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lg/cyz;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/cyz;->g:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090083

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->ab:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090084

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lg/eom;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lg/eom;-><init>(Lg/cyz;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090395

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->l:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090398

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->p:Landroid/widget/TextView;

    const p2, 0x7f090394

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->o:Landroid/widget/TextView;

    const p2, 0x7f0902c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cyz;->ai:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v5

    invoke-virtual {v5}, Lg/atf;->o()Z

    move-result v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    :cond_8
    invoke-static {v3, v5}, Lg/byh;->aw(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lg/fnp;->f()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v3, 0x8

    :goto_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0902c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->ad:Landroid/widget/TextView;

    const p2, 0x7f0902c1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->j:Landroid/widget/TextView;

    const p2, 0x7f0902c2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/cyz;->ad:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/cyz;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lg/cyz;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object p2, p0, Lg/cyz;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lg/cyz;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const p2, 0x7f090060

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/dyd;->av(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    const/16 v3, 0x8

    :goto_7
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09029c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09029d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->ae:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09029e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090352

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090351

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090062

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->af:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090061

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->aa:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090094

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/cyz;->m:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p2}, Lg/dyd;->av(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "\u6d59ICP\u59072022019053\u53f7-2A"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lg/cyz;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lg/cyz;->m:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v1

    const p2, 0x7f1200fa

    invoke-virtual {p0, p2, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    const p2, 0x7f0900db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_f

    const/4 v5, -0x1

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    const v3, 0x7fffffff

    invoke-virtual {p2, v3}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_10

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    invoke-virtual {p2, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lg/aat;

    invoke-direct {v5, p2, v1}, Lg/aat;-><init>(La/v/ScrollViewWithMaxHeight;I)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p2, "("

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/eyt;->ai(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const v5, 0x7f09001b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v3, p0, Lg/cyz;->n:Landroid/view/View;

    sget-boolean v5, Lg/cyz;->c:Z

    if-eqz v5, :cond_12

    const/16 v5, 0x8

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    const-string v5, "update_response"

    invoke-static {v3, v5, v0}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    :try_start_0
    const-class v3, Lg/fjv;

    invoke-static {v3, v0}, Lg/ex;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fjv;

    iput-object v0, p0, Lg/cyz;->u:Lg/fjv;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lg/fjv;->getVersionCode()I

    move-result v0

    iget-object v3, p0, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v3}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v3

    if-le v0, v3, :cond_13

    iget-object v0, p0, Lg/cyz;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/cyz;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/cyz;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lg/cyz;->u:Lg/fjv;

    invoke-virtual {v3}, Lg/fjv;->getAttraction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lg/cyz;->p:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lg/cyz;->u:Lg/fjv;

    invoke-virtual {p2}, Lg/fjv;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    nop

    :cond_13
    :goto_9
    iget-object p2, p0, Lg/cyz;->k:Landroid/app/Activity;

    const-string v0, "com.paypal.android.p2pmobile"

    invoke-static {p2, v0, v4}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lg/cyz;->j:Landroid/widget/TextView;

    const v0, 0x7f12003d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_14
    new-instance p2, Lg/fei;

    invoke-direct {p2}, Lg/fei;-><init>()V

    iput-object p2, p0, Lg/cyz;->r:Lg/fei;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "showa"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_16

    move-object p2, p0

    check-cast p2, Lg/dmb;

    iget-object v0, p2, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {p2}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v1, 0x7f120067

    goto :goto_a

    :cond_15
    const v1, 0x7f120068

    :goto_a
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lg/bvl;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method
