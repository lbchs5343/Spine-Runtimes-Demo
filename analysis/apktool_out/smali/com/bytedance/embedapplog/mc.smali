.class public Lcom/bytedance/embedapplog/mc;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final dq:Lcom/bytedance/embedapplog/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/embedapplog/cc;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/cc;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/mc;->dq:Lcom/bytedance/embedapplog/cc;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/mc;->d:Ljava/util/Map;

    return-void
.end method

.method public static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/embedapplog/mc;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/bytedance/embedapplog/mc;->dq:Lcom/bytedance/embedapplog/cc;

    invoke-virtual {v1, p0}, Lcom/bytedance/embedapplog/cc;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method
