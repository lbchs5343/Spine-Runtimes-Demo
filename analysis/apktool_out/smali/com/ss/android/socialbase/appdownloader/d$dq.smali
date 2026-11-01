.class Lcom/ss/android/socialbase/appdownloader/d$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private final d:I

.field private final dq:Lcom/ss/android/socialbase/appdownloader/d$s;

.field private ox:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/d$d;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->ox:Lorg/json/JSONObject;

    const-string v0, "query_interval"

    const/16 v1, 0x3e8

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->d:I

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$s;

    int-to-long v5, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/d$s;-><init>(Landroid/content/Context;Landroid/content/Intent;ILcom/ss/android/socialbase/appdownloader/d$d;J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->dq:Lcom/ss/android/socialbase/appdownloader/d$s;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->dq:Lcom/ss/android/socialbase/appdownloader/d$s;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d$s;->dq(Lcom/ss/android/socialbase/appdownloader/d$s;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->dq:Lcom/ss/android/socialbase/appdownloader/d$s;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/d$s;->d(Lcom/ss/android/socialbase/appdownloader/d$s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d;->dq(Lcom/ss/android/socialbase/appdownloader/d$dq;)Lcom/ss/android/socialbase/appdownloader/d$dq;

    return-void
.end method

.method public ox()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->ox:Lorg/json/JSONObject;

    const-string v1, "time_out_second"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->dq:Lcom/ss/android/socialbase/appdownloader/d$s;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/d$s;->d(Lcom/ss/android/socialbase/appdownloader/d$s;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-lez v0, :cond_0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$dq;->dq:Lcom/ss/android/socialbase/appdownloader/d$s;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/d$s;->d(Lcom/ss/android/socialbase/appdownloader/d$s;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
