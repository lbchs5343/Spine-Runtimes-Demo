.class public final Lg/fnq;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ebz;
.implements Lg/egz;
.implements Lg/byf;
.implements Lg/bmm;
.implements Lg/adi;
.implements Lg/bcz;
.implements Lg/btp;
.implements Lg/hdb;
.implements Lg/fsz;
.implements Lg/fsj;
.implements Lg/asz;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/nc;
.implements Lg/bez;
.implements Lg/fjn;
.implements Lcom/google/android/gms/internal/ads/zzenh;
.implements Lg/fbf;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v0, 0x8

    iput v0, p0, Lg/fnq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lg/eyo;->n(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v1, Landroid/os/Handler;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Looper;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Handler$Callback;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fnq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fnq;->e:I

    iput-object p2, p0, Lg/fnq;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0xc

    iput v0, p0, Lg/fnq;->e:I

    sget-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    :goto_0
    const-wide/32 v0, 0x100000

    int-to-long v2, p1

    mul-long v2, v2, v0

    const-wide/16 v0, 0x7

    div-long/2addr v2, v0

    long-to-int p1, v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cjm;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg/fnq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbky;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg/fnq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkx;-><init>(Landroid/content/Context;Lg/fnd;)V

    iput-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lg/fnq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/dgd;->d(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    return-void
.end method

.method public static h(Lg/hed;)Lg/ve;
    .locals 4

    sget-object v0, Lg/acq;->h:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/fpr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/fpr;->a:Ljava/util/HashSet;

    sget-object v2, Lg/evh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lg/ebp;

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lg/ebp;->j()Lg/ayu;

    move-result-object p0

    iget-object p0, p0, Lg/ayu;->d:Lg/ve;

    return-object p0

    :cond_2
    sget-object v0, Lg/acq;->aj:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/bbo;

    if-eqz v0, :cond_3

    iget-object p0, v0, Lg/bbo;->a:Lg/hed;

    invoke-static {p0}, Lg/fnq;->h(Lg/hed;)Lg/ve;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lg/hed;->al:Lg/ayu;

    iget-object p0, p0, Lg/ayu;->d:Lg/ve;

    return-object p0
.end method

.method public static j(Ljava/lang/String;Lg/cgh;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lottie_cache_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, ".temp"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lg/cgh;->ox:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lg/cgh;->ox:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 3

    invoke-static {}, Lg/dqe;->g()Lg/dqe;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fjv;

    const/4 v1, 0x0

    sget-boolean v2, Lg/cyz;->c:Z

    invoke-virtual {p1, v0, v1, p2, v2}, Lg/dqe;->p(Lg/fjv;ZZZ)V

    return p2

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    const-string v0, "UpdateManager is empty"

    invoke-static {v0, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public _cj(Lg/ftn;)V
    .locals 3

    iget v0, p0, Lg/fnq;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/esf;->af()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->at:Lg/fck;

    iget-object v1, v1, Lg/fck;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/arz;

    check-cast v2, Lg/bjn;

    iget-object v2, v2, Lg/bjn;->a:Landroidx/fragment/app/v;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/v;->bs(Landroid/view/Menu;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->n:Lg/dcq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg/dcq;->_cj(Lg/ftn;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->f:Lg/egz;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lg/egz;->_cj(Lg/ftn;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public _cr()I
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Lg/dgd;->g(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lg/aka;

    check-cast p2, Lg/eeo;

    invoke-virtual {p1}, Lg/adw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lg/drm;

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/axe;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p1, Lg/ob;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v2, Lg/gui;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, v1, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_0
    iget-object p1, p1, Lg/ob;->_cb:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object p1, p2, Lg/eeo;->a:Lg/chw;

    invoke-virtual {p1, v0}, Lg/chw;->m(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ad(Lg/czh;Lg/anx;)V
    .locals 4

    iget v0, p0, Lg/fnq;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/gsn;

    iget-object v1, p2, Lg/anx;->a:Lg/enb;

    invoke-virtual {v1}, Lg/enb;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lg/anx;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lg/czh;->b()Lg/daw;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/daw;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-class p2, Lg/dau;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast p1, Lg/dau;

    iget-object p2, p1, Lg/dau;->b:Ljava/lang/Class;

    iget-object p1, p1, Lg/dau;->d:Ljava/lang/reflect/Method;

    new-instance v1, Lg/nj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lg/hbk;

    invoke-direct {p1, p2}, Lg/hbk;-><init>(Lg/anx;)V

    invoke-static {p1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Lg/aux;

    invoke-static {p1, p2}, Lg/o;->o(Lg/aux;Lg/anx;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonWriter;)V
    .locals 3

    sget-object v0, Lg/dzz;->c:Ljava/lang/Object;

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    const-string v2, "body"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_0
    const-string v2, "MD5"

    invoke-static {v0, v2}, Lg/mx;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "bodydigest"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1
    :goto_0
    const-string v0, "bodylength"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public c()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Lg/dgd;->q(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    return-void
.end method

.method public d()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public dq(Lg/hcl;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/akg;

    iget-object v1, p1, Lg/hcl;->d:Ljava/lang/String;

    iget-object v2, p1, Lg/hcl;->c:Ljava/lang/String;

    iget-object v3, p1, Lg/hcl;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "${"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "image:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v1, v4}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v5

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v5

    :cond_4
    iget-object v2, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v2

    iget-object v2, v2, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v3, v0, Lg/dlv;->ig:Lg/dmm;

    new-instance v4, Lg/fpd;

    const/16 v5, 0xf

    invoke-direct {v4, p0, p1, v1, v5}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3, v1, v4}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    iget-object p1, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 4

    iget v0, p0, Lg/fnq;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lg/fde;->ia(Lg/fde;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lg/fde;->p(Lg/fde;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {v0}, Lg/fde;->p(Lg/fde;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    :goto_0
    invoke-static {v1, p1, v0}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lg/efr;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dlv;

    iget-boolean v1, v0, Lg/dlv;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/dlv;->s:Landroid/content/Context;

    iget v0, v0, Lg/dlv;->ob:F

    float-to-int v0, v0

    invoke-static {v1, p1, v0}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lg/ggx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/ggx;-><init>(Lg/fnq;Landroid/graphics/Bitmap;I)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lg/ggx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/ggx;-><init>(Lg/fnq;Landroid/graphics/Bitmap;I)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(I)Z
    .locals 4

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lc/a/a;

    iget-object v1, v0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {v1, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lg/vc;

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    check-cast p1, Lg/vc;

    iget-object p1, p1, Lg/vc;->b:Ljava/lang/String;

    iget-object v0, v0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0, v2, p1, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v3

    :cond_1
    instance-of v1, p1, Lg/gzr;

    if-eqz v1, :cond_2

    check-cast p1, Lg/gzr;

    iget-object p1, p1, Lg/gzr;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0, v2, p1, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSource()I
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Lg/dgd;->h(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public i(Lg/x;)V
    .locals 1

    iget-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/dmr;->k(Lg/dmr;Z)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/io/InputStream;Lg/cgh;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lg/fnq;->j(Ljava/lang/String;Lg/cgh;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lg/fnq;->n()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public l(Lg/cwx;Lg/ayu;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Lg/ayu;->o()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lg/ayu;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lg/cci;->av()V

    iget-object p1, v3, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    iget-object v4, v0, Lg/hed;->al:Lg/ayu;

    invoke-virtual {p2, v4}, Lg/ayu;->q(Lg/ayu;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v2, :cond_9

    iget-object p1, v3, Lg/cci;->af:Lg/cwx;

    invoke-virtual {p0, p1, p2, p3}, Lg/fnq;->l(Lg/cwx;Lg/ayu;Ljava/util/ArrayList;)Z

    iget-object p1, v3, Lg/cci;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {p0, v0, p2, p3}, Lg/fnq;->l(Lg/cwx;Lg/ayu;Ljava/util/ArrayList;)Z

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v0, p1}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, p1, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fhm;

    iget-object v4, v3, Lg/fhm;->m:Lg/ayu;

    invoke-virtual {p2, v4}, Lg/ayu;->q(Lg/ayu;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    iget-object p1, p1, Lg/aht;->e:[Lg/cwx;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_9

    aget-object v3, p1, v2

    invoke-virtual {p0, v3, p2, p3}, Lg/fnq;->l(Lg/cwx;Lg/ayu;Ljava/util/ArrayList;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return v1
.end method

.method public m(Lg/ayu;)Lg/ebp;
    .locals 8

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    invoke-virtual {v0, p1}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    iget-object v1, v0, Lg/cut;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lg/ayu;->d:Lg/ve;

    iget-object v3, p1, Lg/ayu;->e:Ljava/lang/String;

    iget-object v2, v2, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aht;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, v1, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fhm;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    iget-object v1, v1, Lg/aht;->e:[Lg/cwx;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    iget-object v6, v0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/aht;

    if-nez v6, :cond_3

    iget-object v7, v0, Lg/cut;->c:Ljava/util/HashSet;

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v6, :cond_4

    iget-object v5, v6, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fhm;

    if-eqz v5, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lg/ei;

    invoke-direct {v0, p1}, Lg/ei;-><init>(Lg/ayu;)V

    return-object v0
.end method

.method public n()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lg/ccb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v2, "lottie_network_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v1
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lg/dmr;->j(Lg/dmr;ZI)V

    return-void
.end method

.method public p(Lg/ftn;Landroid/view/MenuItem;)Z
    .locals 3

    iget p1, p0, Lg/fnq;->e:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->m:Lg/cwb;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Lg/emr;

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->at:Lg/fck;

    invoke-virtual {v1, p2}, Lg/fck;->d(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ac:Lg/hax;

    if-eqz p1, :cond_1

    check-cast p1, Lg/aoy;

    iget-object p1, p1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/bbp;

    iget-object p1, p1, Lg/bbp;->f:Landroid/view/Window$Callback;

    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lg/gif;)Lg/ebp;
    .locals 2

    sget-object v0, Lg/acq;->j:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ebp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lg/gif;->ac()Lg/ayu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fnq;->m(Lg/ayu;)Lg/ebp;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/recyclerview/widget/p;I)V
    .locals 0

    instance-of p2, p1, Lg/aam;

    if-eqz p2, :cond_1

    check-cast p1, Lg/aam;

    iget-object p1, p1, Lg/aam;->am:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public t(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v3, "query = ?"

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/fnq;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public v(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    check-cast p1, Lg/etm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/etm;->getData()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ProxyBillingActivityV2"

    invoke-static {v1, v2}, Lg/gbs;->d(Landroid/content/Intent;Ljava/lang/String;)Lg/ejd;

    move-result-object v2

    iget v2, v2, Lg/ejd;->a:I

    iget-object v3, v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->e:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lg/fnq;->e:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Lg/gsn;

    invoke-static {p2}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Lg/aux;

    invoke-static {p1, p2}, Lg/o;->z(Lg/aux;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public zza()V
    .locals 2

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzend;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lg/fnq;->e:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-static {p1}, Lg/gvi;->zzb(Ljava/lang/Throwable;)Lg/gvi;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvm;->zze(Lg/gvi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "DefaultGmsgHandlers.attributionReportingManager"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/fnq;->e:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrq;

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzend;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzend;->c:Lcom/google/android/gms/internal/ads/zzcwf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :sswitch_0
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_1
    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvm;->zzf(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lg/bfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v0

    iget-object v0, v0, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lg/bfn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bgf;->zzb()Lg/dcy;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public zzdg()V
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpn;->i:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzb()V

    return-void
.end method

.method public zzdh()V
    .locals 1

    iget-object v0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpn;->i:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzc()V

    return-void
.end method
