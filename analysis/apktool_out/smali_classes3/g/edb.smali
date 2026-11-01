.class public final Lg/edb;
.super Lg/bhb;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lg/zq;I)V
    .locals 0

    iput p2, p0, Lg/edb;->a:I

    invoke-direct {p0, p1}, Lg/bhb;-><init>(Lg/zq;)V

    return-void
.end method


# virtual methods
.method public u()V
    .locals 2

    iget v0, p0, Lg/edb;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bhb;->x:Lg/zq;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/zq;->f:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Lg/zq;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, v1}, Lg/cux;->at(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
