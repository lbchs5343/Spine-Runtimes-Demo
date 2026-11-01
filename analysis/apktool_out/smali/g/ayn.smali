.class public abstract Lg/ayn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/PriorityBlockingQueue;

.field public static final b:I

.field public static final c:I

.field public static final d:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput v2, Lg/ayn;->b:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    sput v0, Lg/ayn;->c:I

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lg/ayn;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lg/ayn;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    return-void
.end method
