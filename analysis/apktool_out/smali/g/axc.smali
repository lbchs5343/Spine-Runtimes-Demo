.class public final synthetic Lg/axc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/axc;->a:I

    iput-object p2, p0, Lg/axc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget v0, p0, Lg/axc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/axc;->b:Ljava/lang/Object;

    check-cast p1, Lg/anw;

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Lg/anw;->an(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/axc;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    new-instance p2, Lg/fvi;

    const/4 p3, 0x6

    invoke-direct {p2, p3, v0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/axc;->b:Ljava/lang/Object;

    check-cast p1, Lg/ebw;

    invoke-virtual {p1}, Lg/ebw;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
