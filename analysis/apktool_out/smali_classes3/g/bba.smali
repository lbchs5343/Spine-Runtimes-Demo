.class public final Lg/bba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field public final synthetic b:I

.field public final synthetic c:Lg/brv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lg/brv;I)V
    .locals 0

    iput p3, p0, Lg/bba;->b:I

    iput-object p1, p0, Lg/bba;->a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lg/bba;->c:Lg/brv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/bba;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bba;->a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    iget-object v1, v1, Lg/cyg;->m:Lg/dkq;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, p0, Lg/bba;->c:Lg/brv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    iget-object v3, v0, Lg/cyg;->ad:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lg/cyg;->ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lg/dkq;->as(Lg/brv;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bba;->a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    iget-object v1, p0, Lg/bba;->c:Lg/brv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/os;->zza()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v2

    new-instance v3, Lg/eax;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v2, v1, v4}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
