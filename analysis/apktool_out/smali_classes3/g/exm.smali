.class public final Lg/exm;
.super Lg/gom;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lg/eeg;


# direct methods
.method public synthetic constructor <init>(Lg/bku;Lg/eyd;Lg/eya;Lg/eeg;I)V
    .locals 0

    iput p5, p0, Lg/exm;->a:I

    invoke-direct {p0, p1, p2, p3}, Lg/gom;-><init>(Lg/bku;Lg/eyd;Lg/eya;)V

    iput-object p4, p0, Lg/exm;->b:Lg/eeg;

    return-void
.end method


# virtual methods
.method public final c(Lg/fdw;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/exm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/exm;->b:Lg/eeg;

    invoke-interface {v0, p1}, Lg/eeg;->c(Lg/fdw;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/czh;

    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Lg/bdp;

    :try_start_0
    new-instance v0, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    new-instance v1, Lg/fug;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lg/fug;-><init>(Lg/czh;I)V

    invoke-virtual {v0, v1}, Lg/gsn;->y(Lg/and;)V

    new-instance v1, Lg/dcq;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Lg/czh;->d(Lg/bmm;)V

    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1, p2}, Lg/acr;->ar(Ljava/lang/Throwable;Lg/bdp;)Lg/cxr;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object p2, p0, Lg/exm;->b:Lg/eeg;

    invoke-interface {p2, p1}, Lg/eeg;->c(Lg/fdw;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
