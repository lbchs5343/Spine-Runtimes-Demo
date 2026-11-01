.class public final synthetic Lg/ecn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bhb;


# direct methods
.method public synthetic constructor <init>(Lg/bhb;I)V
    .locals 0

    iput p2, p0, Lg/ecn;->a:I

    iput-object p1, p0, Lg/ecn;->b:Lg/bhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lg/ecn;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/ecn;->b:Lg/bhb;

    check-cast p1, Lg/chp;

    iput-boolean p2, p1, Lg/chp;->e:Z

    invoke-virtual {p1}, Lg/bhb;->ah()V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg/chp;->am(Z)V

    iput-boolean p2, p1, Lg/chp;->i:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/ecn;->b:Lg/bhb;

    check-cast p1, Lg/azm;

    invoke-virtual {p1}, Lg/azm;->m()Z

    move-result p2

    invoke-virtual {p1, p2}, Lg/azm;->r(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
