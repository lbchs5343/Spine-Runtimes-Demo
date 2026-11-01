.class public final Lg/eas;
.super Lg/csm;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final i:Landroid/os/Handler;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Lg/efx;ZLg/eqi;I)V
    .locals 0

    iput p4, p0, Lg/eas;->j:I

    invoke-direct {p0, p1, p2}, Lg/csm;-><init>(Lg/efx;Z)V

    iput-object p3, p0, Lg/eas;->i:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final c(Lg/bcq;Lg/auj;)V
    .locals 9

    iget-object v0, p1, Lg/bcq;->al:Landroid/view/ViewGroup;

    iget-object v1, p1, Lg/bcq;->am:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lg/eas;->k(Lg/auj;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lg/bcq;->al:Landroid/view/ViewGroup;

    new-instance v2, Lg/esb;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p1, Lg/bcq;->ak:Landroid/widget/ImageView;

    iget-object v3, p2, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lg/eax;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, p1, v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Lg/csm;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p1, Lg/bcq;->an:Landroid/widget/TextView;

    iget-object v5, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-boolean v7, p0, Lg/csm;->f:Z

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p2, Lg/auj;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v8, v3

    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, p2}, Lg/eas;->k(Lg/auj;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lg/esb;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lg/csm;->e:Lg/efx;

    const/4 v8, 0x1

    invoke-virtual {p2, v0, v8}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lg/eas;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/bcq;->am:Landroid/widget/TextView;

    iget-object v0, p2, Lg/auj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lg/csm;->e:Lg/efx;

    const v0, 0x7f120454

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lg/auj;->f:Ljava/lang/String;

    const-string v0, ";"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_0
    iget-object p1, p1, Lg/bcq;->am:Landroid/widget/TextView;

    iget-object v0, p2, Lg/auj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lg/csm;->e:Lg/efx;

    const v0, 0x7f120097

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    iget-object p2, p2, Lg/auj;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_1
    iget-object p1, p1, Lg/bcq;->am:Landroid/widget/TextView;

    iget-object v0, p2, Lg/auj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p0, Lg/csm;->e:Lg/efx;

    const v0, 0x7f120097

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    iget-object p2, p2, Lg/auj;->d:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lg/auj;)Landroid/view/View$OnClickListener;
    .locals 2

    iget v0, p0, Lg/eas;->j:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/anh;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/anh;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
