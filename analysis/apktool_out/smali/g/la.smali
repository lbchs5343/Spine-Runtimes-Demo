.class public final Lg/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public final c:Landroid/content/Context;

.field public final synthetic d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/c/d;I)V
    .locals 0

    iput p2, p0, Lg/la;->d:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "c.t.d.p.sf"

    iput-object p2, p0, Lg/la;->f:Ljava/lang/String;

    iput-object p1, p0, Lg/la;->c:Landroid/content/Context;

    const p2, 0x7f1203ee

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/la;->e:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "c.t.d.p.sf"

    iput-object p2, p0, Lg/la;->f:Ljava/lang/String;

    iput-object p1, p0, Lg/la;->c:Landroid/content/Context;

    const p2, 0x7f1203ee

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/la;->e:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    iget v0, p0, Lg/la;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/ms;

    const v1, 0x7f0c006c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lg/ms;-><init>(Lg/la;Landroid/view/View;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/gfg;

    const v1, 0x7f0c0064

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lg/gfg;-><init>(Lg/la;Landroid/view/View;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 6

    iget v0, p0, Lg/la;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/ms;

    check-cast p2, Lg/gvs;

    iget-object v0, p1, Lg/ms;->an:Landroid/widget/ImageView;

    iget-object v1, p1, Lg/ms;->ak:Landroid/widget/TextView;

    iget-object v2, p1, Lg/ms;->al:Landroid/widget/TextView;

    iget-object v3, p2, Lg/gvs;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lg/gvs;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p2, Lg/gvs;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v4, 0x8

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lg/anh;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, p2}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lg/ms;->am:Lg/la;

    iget-object p1, p1, Lg/la;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lg/ffb;->ay(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    check-cast p1, Lg/gfg;

    check-cast p2, Lg/gvs;

    iget-object v0, p1, Lg/gfg;->an:Landroid/widget/ImageView;

    iget-object v1, p1, Lg/gfg;->ak:Landroid/widget/TextView;

    iget-object v2, p1, Lg/gfg;->al:Landroid/widget/TextView;

    iget-object v3, p2, Lg/gvs;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lg/gvs;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p2, Lg/gvs;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lg/anh;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2, p2}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lg/gfg;->am:Lg/la;

    iget-object p1, p1, Lg/la;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lg/ffb;->ay(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
