.class public final Lg/bee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cuz;


# direct methods
.method public synthetic constructor <init>(Lg/cuz;I)V
    .locals 0

    iput p2, p0, Lg/bee;->a:I

    iput-object p1, p0, Lg/bee;->b:Lg/cuz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lg/bee;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/bee;->b:Lg/cuz;

    invoke-virtual {p1}, Lg/cuz;->af()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bee;->b:Lg/cuz;

    invoke-virtual {p1}, Lg/cuz;->af()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/bee;->b:Lg/cuz;

    iget-object p1, p1, Lg/cuz;->s:Lg/gaf;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/gaf;->onCancelled()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
