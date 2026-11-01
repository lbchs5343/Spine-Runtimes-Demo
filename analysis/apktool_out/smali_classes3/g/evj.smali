.class public final Lg/evj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/evj;->a:I

    iput-object p2, p0, Lg/evj;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/evj;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/evj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/evj;->b:Ljava/lang/Object;

    check-cast v0, Lg/bxr;

    new-instance v1, Lg/det;

    iget-object v0, v0, Lg/bxr;->ch:Lg/bxr;

    invoke-direct {v1, v0}, Lg/det;-><init>(Lg/bxr;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lg/evj;->b:Ljava/lang/Object;

    check-cast v0, Lg/bxr;

    new-instance v1, Lg/fqs;

    iget-object v0, v0, Lg/bxr;->ch:Lg/bxr;

    invoke-direct {v1, v0}, Lg/fqs;-><init>(Lg/bxr;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
