.class public final Lg/agz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gyy;


# direct methods
.method public synthetic constructor <init>(Lg/gyy;I)V
    .locals 0

    iput p2, p0, Lg/agz;->a:I

    iput-object p1, p0, Lg/agz;->b:Lg/gyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/agz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/agz;->b:Lg/gyy;

    iget-object v0, v0, Lg/gyy;->a:Lg/dbb;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/dbb;->l:Lg/ake;

    invoke-virtual {v0}, Lg/dbb;->p()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/agz;->b:Lg/gyy;

    iget-object v1, v0, Lg/gyy;->a:Lg/dbb;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->v:Landroid/content/Context;

    iget-object v0, v0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lg/dbb;->o(Lg/dbb;Landroid/content/ComponentName;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
