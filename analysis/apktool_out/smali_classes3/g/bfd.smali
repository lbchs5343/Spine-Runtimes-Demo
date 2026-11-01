.class public final Lg/bfd;
.super Lg/cwg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lg/bfd;->a:I

    invoke-direct {p0, p1}, Lg/cwg;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public zzl(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lg/bfd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/cwg;->zzl(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    const/4 p1, 0x4

    iput p1, p0, Lg/cwg;->g:I

    iget-object p1, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
