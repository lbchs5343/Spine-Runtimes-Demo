.class public final synthetic Lg/emy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/ParcelFileDescriptor;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/emy;->c:Landroid/os/ParcelFileDescriptor;

    iput-wide p2, p0, Lg/emy;->d:J

    iput-object p4, p0, Lg/emy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p5, p0, Lg/emy;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg/emy;->c:Landroid/os/ParcelFileDescriptor;

    iget-wide v1, p0, Lg/emy;->d:J

    iget-object v3, p0, Lg/emy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lg/for;

    invoke-direct {v5, v0, v1, v2, v3}, Lg/for;-><init>(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v5}, Lg/egh;->ai(Lg/for;)Lg/he;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lg/for;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Lg/for;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    sget-object v0, Lg/bew;->f:Landroid/os/Handler;

    new-instance v1, Lg/cdl;

    const/4 v2, 0x0

    iget v3, p0, Lg/emy;->b:I

    invoke-direct {v1, v4, v3, v2}, Lg/cdl;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
