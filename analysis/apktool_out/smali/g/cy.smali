.class public final Lg/cy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg/cy;


# instance fields
.field public final b:Lg/hj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cy;

    invoke-direct {v0}, Lg/cy;-><init>()V

    sput-object v0, Lg/cy;->a:Lg/cy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/hj;

    invoke-direct {v0}, Lg/hj;-><init>()V

    iput-object v0, p0, Lg/cy;->b:Lg/hj;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lg/cgf;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/cy;->b:Lg/hj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lg/hj;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/hj;->d:I

    iget-object v1, v0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, v0, Lg/hj;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lg/hj;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/hj;->r()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
