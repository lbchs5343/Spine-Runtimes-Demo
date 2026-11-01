.class public Lcom/ss/android/downloadlib/mn;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/ss/android/downloadlib/mn;


# instance fields
.field private d:Lcom/ss/android/download/api/config/iw;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/mn;->d:Lcom/ss/android/download/api/config/iw;

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/mn;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/mn;->dq:Lcom/ss/android/downloadlib/mn;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/downloadlib/mn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/mn;->dq:Lcom/ss/android/downloadlib/mn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/downloadlib/mn;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/mn;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/mn;->dq:Lcom/ss/android/downloadlib/mn;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/android/downloadlib/mn;->dq:Lcom/ss/android/downloadlib/mn;

    return-object v0
.end method


# virtual methods
.method public d()Lcom/ss/android/download/api/config/iw;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn;->d:Lcom/ss/android/download/api/config/iw;

    return-object v0
.end method
