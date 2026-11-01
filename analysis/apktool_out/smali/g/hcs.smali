.class public final Lg/hcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/hcs;->a:I

    iput-object p2, p0, Lg/hcs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget p1, p0, Lg/hcs;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/hcs;->b:Ljava/lang/Object;

    check-cast p1, Lg/fvy;

    iget-object v0, p1, Lg/fvy;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lg/fvy;->l:Landroid/widget/TextView;

    const v0, 0x7f1203ba

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return v1

    :pswitch_0
    iget-object p1, p0, Lg/hcs;->b:Ljava/lang/Object;

    check-cast p1, Lg/amy;

    iget-object v0, p1, Lg/amy;->e:Lg/amy;

    iget-object p1, p1, Lg/amy;->f:Ljava/lang/CharSequence;

    invoke-static {p1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
