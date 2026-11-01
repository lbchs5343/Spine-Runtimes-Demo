.class public Lc/b/ac;
.super Lg/ka;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ka;->g:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lg/ka;->e:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lg/ka;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
