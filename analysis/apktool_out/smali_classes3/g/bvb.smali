.class public final Lg/bvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bvb;->a:I

    iput-object p2, p0, Lg/bvb;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final e(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final f(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget p1, p0, Lg/bvb;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bvb;->b:Ljava/lang/Object;

    check-cast p1, Lg/cuz;

    invoke-virtual {p1}, Lg/cuz;->ak()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, Lg/bvb;->a:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget p2, p0, Lg/bvb;->a:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lg/bvb;->b:Ljava/lang/Object;

    check-cast p2, Lg/efx;

    iget-object p3, p2, Lg/efx;->aq:Lg/fvi;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lg/efx;->ar:Lg/sd;

    if-eqz p1, :cond_0

    const/4 p4, 0x3

    invoke-virtual {p1, p4}, Lg/cle;->ak(I)V

    const/4 p1, 0x0

    iput-object p1, p2, Lg/efx;->ar:Lg/sd;

    :cond_0
    invoke-virtual {p2}, Lg/efx;->bm()V

    iget-object p1, p2, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p2, Lg/efx;->an:Landroid/widget/EditText;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
