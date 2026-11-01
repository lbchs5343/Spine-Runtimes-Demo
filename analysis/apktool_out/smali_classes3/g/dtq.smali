.class public final synthetic Lg/dtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Lg/bza;


# direct methods
.method public synthetic constructor <init>(Lg/bza;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lg/dtq;->b:I

    iput-object p1, p0, Lg/dtq;->c:Lg/bza;

    iput-object p2, p0, Lg/dtq;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lg/dtq;->c:Lg/bza;

    iget-object v1, p0, Lg/dtq;->a:Landroid/content/Context;

    iget-object v2, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/bza;->p(Landroid/content/Context;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/dtq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dtq;->c:Lg/bza;

    iget-object v1, p0, Lg/dtq;->a:Landroid/content/Context;

    iget-object v2, v0, Lg/bza;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/bza;->p(Landroid/content/Context;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lg/dtq;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
