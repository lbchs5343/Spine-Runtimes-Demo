.class public final Lg/bml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/edx;


# direct methods
.method public synthetic constructor <init>(Lg/edx;I)V
    .locals 0

    iput p2, p0, Lg/bml;->a:I

    iput-object p1, p0, Lg/bml;->b:Lg/edx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget p1, p0, Lg/bml;->a:I

    packed-switch p1, :pswitch_data_0

    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/bml;->b:Lg/edx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/edx;->q:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object p1, p0, Lg/bml;->b:Lg/edx;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/edx;->ag:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
