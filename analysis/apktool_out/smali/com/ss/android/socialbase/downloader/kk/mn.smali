.class public Lcom/ss/android/socialbase/downloader/kk/mn;
.super Ljava/lang/Object;


# static fields
.field private static dq:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/kk/mn;->dq:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic dq()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/kk/mn;->dq:Landroid/os/Handler;

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/mn;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$24;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$24;-><init>(Lcom/ss/android/socialbase/downloader/depend/mn;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/ia;)Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$22;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$22;-><init>(Lcom/ss/android/socialbase/downloader/depend/ia;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/kk;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$25;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$25;-><init>(Lcom/ss/android/socialbase/downloader/depend/kk;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/cd;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$19;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$19;-><init>(Lcom/ss/android/socialbase/downloader/depend/f;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/er;)Lcom/ss/android/socialbase/downloader/depend/ce;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$17;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$17;-><init>(Lcom/ss/android/socialbase/downloader/depend/er;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/depend/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$23;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$23;-><init>(Lcom/ss/android/socialbase/downloader/depend/kx;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/ce;)Lcom/ss/android/socialbase/downloader/depend/er;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$18;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$18;-><init>(Lcom/ss/android/socialbase/downloader/depend/ce;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/downloader/depend/f;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$31;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$31;-><init>(Lcom/ss/android/socialbase/downloader/depend/cd;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/jy;)Lcom/ss/android/socialbase/downloader/depend/fw;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$2;-><init>(Lcom/ss/android/socialbase/downloader/depend/jy;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/k;)Lcom/ss/android/socialbase/downloader/depend/i;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$28;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$28;-><init>(Lcom/ss/android/socialbase/downloader/depend/k;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/depend/ia;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$6;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$6;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/downloader/depend/ig;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$9;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$9;-><init>(Lcom/ss/android/socialbase/downloader/depend/mp;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/iw;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$3;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$3;-><init>(Lcom/ss/android/socialbase/downloader/depend/q;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/fw;)Lcom/ss/android/socialbase/downloader/depend/jy;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$20;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$20;-><init>(Lcom/ss/android/socialbase/downloader/depend/fw;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/k;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$15;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$15;-><init>(Lcom/ss/android/socialbase/downloader/depend/i;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/kk;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$12;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/kk/mn$12;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/depend/kx;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$7;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$7;-><init>(Lcom/ss/android/socialbase/downloader/depend/e;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/depend/le;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$30;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$30;-><init>(Lcom/ss/android/socialbase/downloader/depend/r;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/depend/mn;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$29;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$29;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/ig;)Lcom/ss/android/socialbase/downloader/depend/mp;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$8;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$8;-><init>(Lcom/ss/android/socialbase/downloader/depend/ig;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/op;)Lcom/ss/android/socialbase/downloader/depend/n;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$26;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$26;-><init>(Lcom/ss/android/socialbase/downloader/depend/op;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/wp;)Lcom/ss/android/socialbase/downloader/depend/o;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$4;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$4;-><init>(Lcom/ss/android/socialbase/downloader/depend/wp;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/op;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$10;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$10;-><init>(Lcom/ss/android/socialbase/downloader/depend/n;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/iw;)Lcom/ss/android/socialbase/downloader/depend/q;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$13;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$13;-><init>(Lcom/ss/android/socialbase/downloader/depend/iw;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/le;)Lcom/ss/android/socialbase/downloader/depend/r;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$16;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$16;-><init>(Lcom/ss/android/socialbase/downloader/depend/le;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/downloader/ia;)Lcom/ss/android/socialbase/downloader/depend/s;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$5;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$5;-><init>(Lcom/ss/android/socialbase/downloader/downloader/ia;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/downloader/gh;)Lcom/ss/android/socialbase/downloader/depend/u;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$27;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$27;-><init>(Lcom/ss/android/socialbase/downloader/downloader/gh;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/o;)Lcom/ss/android/socialbase/downloader/depend/wp;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$14;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$14;-><init>(Lcom/ss/android/socialbase/downloader/depend/o;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/downloader/gh;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$21;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$21;-><init>(Lcom/ss/android/socialbase/downloader/depend/u;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/depend/s;)Lcom/ss/android/socialbase/downloader/downloader/ia;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$11;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$11;-><init>(Lcom/ss/android/socialbase/downloader/depend/s;)V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/model/dq;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->dq()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->d()Lcom/ss/android/socialbase/downloader/depend/s;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/s;)Lcom/ss/android/socialbase/downloader/downloader/ia;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/ia;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->ox()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/depend/kx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/kx;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->s()Lcom/ss/android/socialbase/downloader/depend/ia;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/ia;)Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->interceptor(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->iw()Lcom/ss/android/socialbase/downloader/depend/iw;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/iw;)Lcom/ss/android/socialbase/downloader/depend/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->o()Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/o;)Lcom/ss/android/socialbase/downloader/depend/wp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/wp;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->mn()Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->forbiddenHandler(Lcom/ss/android/socialbase/downloader/depend/k;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->kk()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/cd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->no()Lcom/ss/android/socialbase/downloader/depend/mn;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/mn;)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->p()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/op;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/op;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/dq;->ia()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/downloader/gh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/gh;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/iw;->dq:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/ss/android/socialbase/downloader/model/dq;->d(I)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kk;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/iw;->d:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {p0, v4}, Lcom/ss/android/socialbase/downloader/model/dq;->d(I)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kk;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->subThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_2
    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/iw;->ox:Lcom/ss/android/socialbase/downloader/constants/iw;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {p0, v5}, Lcom/ss/android/socialbase/downloader/model/dq;->d(I)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kk;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_3
    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;Lcom/ss/android/socialbase/downloader/constants/iw;)V

    invoke-static {v1, p0, v3}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;Lcom/ss/android/socialbase/downloader/constants/iw;)V

    invoke-static {v1, p0, v4}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;Lcom/ss/android/socialbase/downloader/constants/iw;)V

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/dq;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/kk/mn$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/kk/mn$1;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-object v0
.end method

.method private static dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/model/dq;->ig()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/model/dq;->ox(I)Lcom/ss/android/socialbase/downloader/depend/ig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/ig;)Lcom/ss/android/socialbase/downloader/depend/mp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/mp;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dq(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/dq;Lcom/ss/android/socialbase/downloader/constants/iw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/model/dq;->dq(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/model/dq;->dq(II)Lcom/ss/android/socialbase/downloader/depend/kk;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/kk;->dq()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/kk;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadListeners(Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/constants/iw;)V

    return-void
.end method
