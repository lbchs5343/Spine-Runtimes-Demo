.class public final Lg/fzn;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bol;
.implements Lg/dds;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lcom/google/android/gms/internal/ads/zzakd;
.implements Lcom/google/android/gms/internal/ads/zzezu;
.implements Lcom/google/android/gms/internal/ads/zzcqx;
.implements Lg/bmo;
.implements Lg/bjb;
.implements Lg/lb;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lg/fzn;

.field public static c:Lg/fzn;


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final synthetic g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fzn;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/fzn;->g:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    const-string p1, "GET"

    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    new-instance p1, Lg/ais;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/ais;-><init>(I)V

    iput-object p1, p0, Lg/fzn;->e:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    new-instance v0, Lg/eqi;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lg/eqi;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/gkr;)V
    .locals 6

    const/16 v0, 0x8

    iput v0, p0, Lg/fzn;->g:I

    new-instance v0, Lg/euw;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v3}, Lg/euw;-><init>(Landroid/content/Context;Lg/gkr;I)V

    new-instance v1, Lg/euw;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lg/euw;-><init>(Landroid/content/Context;Lg/gkr;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lg/djv;->a:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    new-instance v4, Lg/wk;

    invoke-direct {v4, v3, p2}, Lg/wk;-><init>(Landroid/content/Context;Lg/gkr;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lg/fsi;

    invoke-direct {v4, v3, p2}, Lg/fsi;-><init>(Landroid/content/Context;Lg/gkr;)V

    :goto_0
    new-instance v3, Lg/euw;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v3, v5, p2, v2}, Lg/euw;-><init>(Landroid/content/Context;Lg/gkr;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    iput-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object v1, p0, Lg/fzn;->e:Ljava/lang/Object;

    iput-object v4, p0, Lg/fzn;->f:Ljava/lang/Object;

    iput-object v3, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x10

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lg/fzn;->i:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v4, p0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfqw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    iput-object v0, v3, Lg/fzn;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, v3, Lg/fzn;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/adw;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public constructor <init>(Lg/aem;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg/fzn;->f:Ljava/lang/Object;

    iput-object p4, p0, Lg/fzn;->i:Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lg/aem;->w(Ljava/util/TreeSet;Z)V

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/bxr;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/16 v0, 0xd

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object v2

    iput-object v2, p0, Lg/fzn;->h:Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p2

    iput-object p2, p0, Lg/fzn;->d:Ljava/lang/Object;

    iget-object p3, p1, Lg/bxr;->cr:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v0, p1, Lg/bxr;->aq:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-direct {v5, v2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfcm;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    iget-object p3, p1, Lg/bxr;->cr:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfas;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzfas;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v6

    iput-object v6, p0, Lg/fzn;->e:Ljava/lang/Object;

    iget-object v3, p1, Lg/bxr;->z:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v4, p1, Lg/bxr;->ak:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffq;->zza()Lcom/google/android/gms/internal/ads/zzffq;

    move-result-object v7

    iget-object v8, p1, Lg/bxr;->ab:Lcom/google/android/gms/internal/ads/zzcid;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfau;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfau;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    move-object v7, v8

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v5

    iput-object v5, p0, Lg/fzn;->f:Ljava/lang/Object;

    iget-object v8, p1, Lg/bxr;->k:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfba;

    move-object v3, v2

    move-object v2, v4

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfba;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object p1

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/bxr;Lg/dku;Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzcqy;)V
    .locals 11

    const/16 v0, 0xe

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v2, p3}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(Lcom/google/android/gms/internal/ads/zzcsg;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcsh;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/zzcsh;-><init>(Lcom/google/android/gms/internal/ads/zzcsg;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhgl;->zza(II)Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object v0

    iget-object v4, p2, Lg/dku;->bv:Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v4, p2, Lg/dku;->di:Lcom/google/android/gms/internal/ads/zzdch;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgl;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzcxm;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v0

    iput-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4, v4}, Lcom/google/android/gms/internal/ads/zzhgl;->zza(II)Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object v4

    iget-object v5, p2, Lg/dku;->o:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->bx:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->bk:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->bz:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->ab:Lcom/google/android/gms/internal/ads/zzdte;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->db:Lcom/google/android/gms/internal/ads/zzdcq;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->j:Lcom/google/android/gms/internal/ads/zzdci;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v5, p2, Lg/dku;->ao:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgl;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcxz;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzcxz;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v9

    iput-object v9, p0, Lg/fzn;->d:Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcsi;

    invoke-direct {v5, p3}, Lcom/google/android/gms/internal/ads/zzcsi;-><init>(Lcom/google/android/gms/internal/ads/zzcsg;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcsj;

    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/ads/zzcsj;-><init>(Lcom/google/android/gms/internal/ads/zzcsg;)V

    iget-object v6, p2, Lg/dku;->dj:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v8, p2, Lg/dku;->bj:Lcom/google/android/gms/internal/ads/zzhgg;

    move-object v4, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcwg;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcwg;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdax;->zza()Lcom/google/android/gms/internal/ads/zzdax;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v8

    iput-object v8, p0, Lg/fzn;->e:Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-static {p3, p3}, Lcom/google/android/gms/internal/ads/zzhgl;->zza(II)Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object v5

    iget-object v6, p2, Lg/dku;->cr:Lcom/google/android/gms/internal/ads/zzdcr;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    iget-object v6, p2, Lg/dku;->cb:Lcom/google/android/gms/internal/ads/zzduz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgl;

    move-result-object v5

    move-object v6, v5

    move-object v5, v9

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcyd;

    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/ads/zzcyd;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzhgl;->zza(II)Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object p3

    iget-object v1, p2, Lg/dku;->s:Lcom/google/android/gms/internal/ads/zzdcy;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzhgk;->zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgl;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdeb;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzdeb;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v10

    iput-object v10, p0, Lg/fzn;->f:Ljava/lang/Object;

    iget-object v6, p2, Lg/dku;->bc:Lcom/google/android/gms/internal/ads/zzddc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcua;

    move-object v7, v3

    move-object v3, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzcua;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcra;

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzcra;-><init>(Lcom/google/android/gms/internal/ads/zzcqy;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcqz;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzcqz;-><init>(Lcom/google/android/gms/internal/ads/zzcqy;)V

    iget-object p1, p1, Lg/bxr;->z:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-direct {p4, v1, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object p1

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/cci;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/fzn;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lg/dcy;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lg/fzn;->g:I

    iput-object p2, p0, Lg/fzn;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg/fzn;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg/fzn;->f:Ljava/lang/Object;

    iput-object p1, p0, Lg/fzn;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lg/fzn;->g:I

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/fzn;->e:Ljava/lang/Object;

    iput-object p4, p0, Lg/fzn;->f:Ljava/lang/Object;

    iput-object p5, p0, Lg/fzn;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x7

    iput p1, p0, Lg/fzn;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final aa()V
    .locals 0

    return-void
.end method

.method public static j()Lg/fzn;
    .locals 4

    sget-object v0, Lg/fzn;->b:Lg/fzn;

    if-nez v0, :cond_1

    const-class v0, Lg/fzn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fzn;->b:Lg/fzn;

    if-nez v1, :cond_0

    new-instance v1, Lg/fzn;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/fzn;-><init>(IZ)V

    sput-object v1, Lg/fzn;->b:Lg/fzn;

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
    sget-object v0, Lg/fzn;->b:Lg/fzn;

    return-object v0
.end method

.method public static k(Lg/fzn;Lg/ctg;)V
    .locals 10

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Lg/ctx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const p1, 0x7f120091

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Lg/fsv;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lg/bgf;-><init>(I)V

    new-array v4, v1, [Lg/cbj;

    sget-object v5, Lg/ex;->d:Ljava/util/TimeZone;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Ljava/lang/reflect/Type;

    sget-object v5, Lg/mh;->a:Lg/mh;

    sget v6, Lg/ex;->a:I

    invoke-static {p1, v3, v5, v6, v4}, Lg/ex;->h(Ljava/lang/String;Ljava/lang/reflect/Type;Lg/mh;I[Lg/cbj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cbf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/cbf;->getData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ctg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v2

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_2
    if-nez p1, :cond_1

    iget-object p0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p0, Lg/fzk;

    const p1, 0x7f12008e

    iget-object v0, p0, Lg/fzk;->l:Lg/ctx;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lg/fzk;->p(I)V

    iget-object p0, p0, Lg/fzk;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    new-array v0, v1, [Lg/fwx;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lg/fwx;

    :goto_5
    invoke-virtual {p1, v2}, Lg/ctg;->setAllianceArray([Lg/fwx;)Lg/ctg;

    iput-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lg/fzn;->r()V

    :goto_6
    return-void
.end method

.method public static l(Landroid/content/Context;)Lg/fzn;
    .locals 2

    sget-object v0, Lg/fzn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fzn;->c:Lg/fzn;

    if-nez v1, :cond_0

    new-instance v1, Lg/fzn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lg/fzn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/fzn;->c:Lg/fzn;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lg/fzn;->c:Lg/fzn;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static m()Lcom/google/android/gms/internal/ads/zzata;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzata;->zza()Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasf;->zzD(J)Lcom/google/android/gms/internal/ads/zzasf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzata;

    return-object v0
.end method


# virtual methods
.method public ai()V
    .locals 5

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lg/fhf;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lg/fhf;-><init>(ILjava/lang/Object;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lg/fcd;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg/cuc;

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    invoke-virtual {v0}, Lg/fpd;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/ahe;

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/ahy;

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/ddc;

    new-instance v1, Lg/fyn;

    invoke-direct/range {v1 .. v6}, Lg/fyn;-><init>(Ljava/util/concurrent/Executor;Lg/cuc;Lg/ahe;Lg/ahy;Lg/ddc;)V

    return-object v1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lg/ais;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/dyd;->bn(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lg/dyd;->al(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/ais;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lg/ais;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Lg/ayu;)Lg/ayu;
    .locals 2

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ayu;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    :try_start_0
    iget-object v1, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzp()Lcom/google/android/gms/internal/ads/zzfrb;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqx;

    iget-object v3, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfqx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfrb;->zze(Lcom/google/android/gms/internal/ads/zzfqx;)Lcom/google/android/gms/internal/ads/zzfqz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqz;->zza()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    :goto_1
    invoke-virtual {p0}, Lg/fzn;->zzc()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    :try_start_2
    invoke-static {}, Lg/fzn;->m()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lg/fzn;->zzc()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lg/nk;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lg/fzn;->m()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lg/fzn;->m()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public p(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    iget-object v3, v1, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    if-eqz v12, :cond_2

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    move-object v14, v3

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_8

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dhg;

    if-eqz v12, :cond_3

    iget-object v9, v3, Lg/dhg;->b:Landroid/content/IntentFilter;

    invoke-static {v9}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    iget-boolean v9, v3, Lg/dhg;->d:Z

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move-object v9, v3

    iget-object v3, v9, Lg/dhg;->b:Landroid/content/IntentFilter;

    move-object/from16 v16, v9

    const-string v9, "LocalBroadcastManager"

    move-object/from16 v10, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    if-eqz v12, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_5
    if-nez v14, :cond_6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v10, Lg/dhg;->d:Z

    :cond_7
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    if-eqz v14, :cond_b

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dhg;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lg/dhg;->d:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget-object v3, v1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Lg/fdy;

    const/16 v5, 0xc

    invoke-direct {v4, v0, v5, v14}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()V
    .locals 7

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v0, Lg/ctg;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2}, Lg/fwx;->setStatus(I)Lg/fwx;

    iget-object v5, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v4}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4}, Lg/fwx;->getVersionCode()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lg/fwx;->setStatus(I)Lg/fwx;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lg/fzk;

    iget-object v1, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v1, Lg/ctg;

    iget-object v3, v0, Lg/fzk;->l:Lg/ctx;

    iget-object v4, v0, Lg/fzk;->a:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lg/fzk;->p(I)V

    invoke-virtual {v1}, Lg/ctg;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v5}, Lg/fzk;->p(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Lg/fzk;->p(I)V

    iget-object v4, v0, Lg/fzk;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Lg/ctg;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v1}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    array-length v4, v4

    :goto_4
    iget v6, v0, Lg/fzk;->c:I

    if-le v4, v6, :cond_9

    iget-object v4, v0, Lg/fzk;->m:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v1}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v4, v0, Lg/fzk;->c:I

    invoke-interface {v1, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lg/fzk;->f:Lg/fcz;

    if-nez v2, :cond_8

    new-instance v2, Lg/fcz;

    invoke-direct {v2, v3, v1}, Lg/fcz;-><init>(Lg/ctx;Ljava/util/List;)V

    iput-object v2, v0, Lg/fzk;->f:Lg/fcz;

    iget-object v0, v0, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    goto :goto_5

    :cond_8
    iput-object v1, v2, Lg/fcz;->b:Ljava/util/List;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lg/fzk;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v2, v0, Lg/fzk;->f:Lg/fcz;

    if-nez v2, :cond_b

    new-instance v2, Lg/fcz;

    invoke-virtual {v1}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lg/fcz;-><init>(Lg/ctx;Ljava/util/List;)V

    iput-object v2, v0, Lg/fzk;->f:Lg/fcz;

    iget-object v0, v0, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lg/fcz;->b:Ljava/util/List;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_c
    :goto_5
    return-void
.end method

.method public s(Lg/dsj;)Lg/dsj;
    .locals 2

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dsj;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lg/cxc;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lg/cxc;->h(J)V

    return-void
.end method

.method public u(Landroid/content/BroadcastReceiver;)V
    .locals 11

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dhg;

    iput-boolean v3, v4, Lg/dhg;->a:Z

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, Lg/dhg;->b:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v4, Lg/dhg;->b:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    if-ltz v8, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/dhg;

    iget-object v10, v9, Lg/dhg;->c:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_1

    iput-boolean v3, v9, Lg/dhg;->a:Z

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_3

    iget-object v7, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lg/dhg;

    invoke-direct {v1, p1, p2}, Lg/dhg;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Ljava/lang/String;Lg/sz;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "method "

    if-nez p2, :cond_1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PROPPATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "REPORT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, " must have a request body."

    invoke-static {v0, p1, p2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p1}, Lg/ckd;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-object p1, p0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/fzn;->f:Ljava/lang/Object;

    return-void

    :cond_2
    const-string p2, " must not have a request body."

    invoke-static {v0, p1, p2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Lg/daw;
    .locals 7

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/eyn;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lg/ais;

    invoke-virtual {v0}, Lg/ais;->d()Lg/dvq;

    move-result-object v4

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/sz;

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lg/erq;->c:[B

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lg/dyq;->a:Lg/dyq;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "{\n    Collections.unmodi\u2026(LinkedHashMap(this))\n  }"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lg/daw;

    invoke-direct/range {v1 .. v6}, Lg/daw;-><init>(Lg/eyn;Ljava/lang/String;Lg/dvq;Lg/sz;Ljava/util/Map;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(ILg/ayu;)V
    .locals 2

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    invoke-static {p1, v0, v1}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/ke;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ke;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/ke;->m(Lg/eyn;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ke;->n()Lg/eyn;

    move-result-object p1

    iput-object p1, p0, Lg/fzn;->h:Ljava/lang/Object;

    return-void
.end method

.method public zza()I
    .locals 1

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzcpd;
    .locals 1

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgf;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzfaz;
    .locals 1

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfaz;

    return-object v0
.end method

.method public zza(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzele;

    iget-object v1, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzekz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzekz;->a:Lcom/google/android/gms/internal/ads/zzeli;

    iget-object v2, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v3, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzeli;->zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzele;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "Internal error. "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzhr:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "SignalGeneratorImpl.generateSignals"

    if-eqz v2, :cond_0

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v2, Lg/dcy;

    iget-object v3, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-static {v2, v3}, Lg/der;->an(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    const/4 p1, 0x0

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    :cond_1
    :try_start_0
    const-string p1, "Unknown format is no longer supported."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p1, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbze;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbze;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public zzb(I)J
    .locals 3

    iget-object v0, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public zzb()V
    .locals 0

    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 12

    const-string v0, "QueryInfo generation has been disabled."

    iget-object v1, p0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbze;

    iget-object v2, p0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfka;

    const-string v3, "Internal error for request JSON: "

    iget-object v4, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v4, Lg/dcy;

    check-cast p1, Lg/ggs;

    iget-object v5, p0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-static {v4, v5}, Lg/der;->an(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v4

    iget-object v5, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v5, Lg/der;

    iget-object v6, v5, Lg/der;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzhm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v8, Lg/edt;->a:Lg/edt;

    iget-object v8, v8, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbze;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzfka;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :cond_0
    const-string v0, "SignalGeneratorImpl.generateSignals.onSuccess"

    const-string v6, ""

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :try_start_1
    invoke-interface {v1, p1, p1, p1}, Lcom/google/android/gms/internal/ads/zzbze;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, p1, Lg/ggs;->e:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "request_id"

    invoke-virtual {v9, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "The request ID is empty in request JSON."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    const-string p1, "Internal error: request ID is empty in request JSON."

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbze;->zzb(Ljava/lang/String;)V

    const-string p1, "Request ID empty"

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :cond_2
    :try_start_4
    iget-object v3, p1, Lg/ggs;->a:Landroid/os/Bundle;

    iget-boolean v9, v5, Lg/der;->f:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    iget-object v9, v5, Lg/der;->y:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_3

    iget-object v9, v5, Lg/der;->y:Ljava/lang/String;

    iget-object v10, v5, Lg/der;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-boolean v9, v5, Lg/der;->k:Z

    if-eqz v9, :cond_5

    if-eqz v3, :cond_5

    iget-object v9, v5, Lg/der;->ai:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v5, Lg/der;->s:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lg/ti;->a:Lg/ti;

    iget-object v9, v9, Lg/ti;->z:Lg/esy;

    iget-object v10, v5, Lg/der;->ae:Landroid/content/Context;

    iget-object v11, v5, Lg/der;->g:Lg/akx;

    iget-object v11, v11, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lg/esy;->at(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lg/der;->s:Ljava/lang/String;

    :cond_4
    iget-object v9, v5, Lg/der;->ai:Ljava/lang/String;

    iget-object v5, v5, Lg/der;->s:Ljava/lang/String;

    invoke-virtual {v3, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, p1, Lg/ggs;->c:Ljava/lang/String;

    iget-object p1, p1, Lg/ggs;->e:Ljava/lang/String;

    invoke-interface {v1, v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzbze;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :catch_2
    move-exception p1

    :try_start_5
    const-string v5, "Failed to create JSON object from the request string."

    invoke-static {v5}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzbze;->zzb(Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    return-void

    :goto_1
    :try_start_6
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-static {v6, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    :cond_6
    return-void

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    :cond_7
    throw p1
.end method

.method public zzc(J)Ljava/util/List;
    .locals 13

    iget-object v0, p0, Lg/fzn;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    iget-object v0, p0, Lg/fzn;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    iget-object v0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v1, Lg/aem;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lg/aem;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, v12}, Lg/aem;->q(JLjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v9, 0x0

    iget-object v10, v1, Lg/aem;->a:Ljava/lang/String;

    move-object v6, v1

    move-object v11, v7

    move-wide v7, p1

    invoke-virtual/range {v6 .. v11}, Lg/aem;->v(JZLjava/lang/String;Ljava/util/TreeMap;)V

    move-wide v2, v7

    move-object v7, v11

    iget-object v6, v1, Lg/aem;->a:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lg/aem;->u(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    array-length v6, v4

    invoke-static {v4, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/asr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcr;

    iget v4, v3, Lg/asr;->g:F

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(F)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzi(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v4, v3, Lg/asr;->i:F

    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    iget v4, v3, Lg/asr;->c:I

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v4, v3, Lg/asr;->e:F

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v4, v3, Lg/asr;->j:F

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzd(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v3, Lg/asr;->h:I

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzo(I)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/asr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-class v6, Lg/djq;

    invoke-virtual {v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lg/djq;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    const-string v10, ""

    invoke-virtual {v3, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ge v4, v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_4

    move v8, v6

    :goto_5
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    sub-int/2addr v8, v6

    if-lez v8, :cond_4

    add-int/2addr v8, v4

    invoke-virtual {v3, v4, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_6

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v8, 0xa

    if-ge v4, v6, :cond_8

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_7

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_7

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    move v4, v6

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_9

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_b

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_a

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    invoke-virtual {v3, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    move v4, v6

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_c

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v3, v2, Lg/asr;->i:F

    iget v4, v2, Lg/asr;->b:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v2, Lg/asr;->c:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v2, Lg/asr;->g:F

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v2, Lg/asr;->e:F

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v2, Lg/asr;->f:F

    iget v4, v2, Lg/asr;->a:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzn(FI)Lcom/google/android/gms/internal/ads/zzcr;

    iget v2, v2, Lg/asr;->h:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzo(I)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object p1
.end method

.method public zzc()V
    .locals 2

    iget v0, p0, Lg/fzn;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/adw;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/adw;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lg/adw;->disconnect()V

    :cond_1
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
