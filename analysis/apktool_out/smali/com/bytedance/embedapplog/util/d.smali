.class public Lcom/bytedance/embedapplog/util/d;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/bytedance/embedapplog/util/dq;

.field private static final dq:Lcom/bytedance/embedapplog/util/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/embedapplog/util/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/dq$dq;-><init>()V

    const-string v1, "https://log.snssdk.com/service/2/device_register_only/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://log.snssdk.com/service/2/app_log/"

    const-string v2, "https://applog.snssdk.com/service/2/app_log/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->dq([Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://rtlog.snssdk.com/service/2/app_log/"

    const-string v2, "https://rtapplog.snssdk.com/service/2/app_log/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->d([Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://log.snssdk.com/service/2/log_settings/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/util/dq$dq;->dq()Lcom/bytedance/embedapplog/util/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/d;->dq:Lcom/bytedance/embedapplog/util/dq;

    new-instance v0, Lcom/bytedance/embedapplog/util/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/dq$dq;-><init>()V

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/device_register_only/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/app_log/"

    const-string v2, "https://tobapplog.ctobsnssdk.com/service/2/app_log/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->dq([Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/log_settings/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->ox(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    const-string v1, "https://success.ctobsnssdk.com/service/2/app_log/"

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/util/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/embedapplog/util/dq$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/util/dq$dq;->dq()Lcom/bytedance/embedapplog/util/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/d;->d:Lcom/bytedance/embedapplog/util/dq;

    return-void
.end method

.method public static final dq(I)Lcom/bytedance/embedapplog/util/dq;
    .locals 0

    sget-object p0, Lcom/bytedance/embedapplog/util/d;->d:Lcom/bytedance/embedapplog/util/dq;

    return-object p0
.end method
