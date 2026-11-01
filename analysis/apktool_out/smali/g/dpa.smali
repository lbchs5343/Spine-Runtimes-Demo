.class public final Lg/dpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dad;
.implements Lcom/google/android/gms/internal/ads/zzgee;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Lg/dpa;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final synthetic f:I

.field public g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dpa;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/dpa;->f:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dpa;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/tl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lg/dpa;->d:Ljava/lang/Object;

    new-instance p1, Lg/asv;

    invoke-direct {p1}, Lg/asv;-><init>()V

    iput-object p1, p0, Lg/dpa;->e:Ljava/lang/Object;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    invoke-static {p1}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "adas"

    const-string v4, "config"

    invoke-static {p1, v2, v4, v2, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lg/buj;->av(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lg/fsv;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/bgf;-><init>(I)V

    new-array v0, v0, [Lg/cbj;

    sget-object v2, Lg/ex;->d:Ljava/util/TimeZone;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    sget-object v2, Lg/mh;->a:Lg/mh;

    sget v3, Lg/ex;->a:I

    invoke-static {p1, v1, v2, v3, v0}, Lg/ex;->h(Ljava/lang/String;Ljava/lang/reflect/Type;Lg/mh;I[Lg/cbj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "adRegexList.txt"

    invoke-static {p1, v0, v4, v0, v1}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-static {p1}, Lg/buj;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    const-string v1, "\u8df3\u8fc7\u5e7f\u544a\\s*\\(*\\s*\\d*\\S*\\s*\\)*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\u8df3\u8fc7\u5e7f\u544a\\s*>"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\u8df3\u8fc7\\s*\\(*\\s*\\d*\\S*\\s*\\)*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\\(*\\s*\\d*\\S*\\s*\\)*\\s*\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\u8df3\u8fc7\\s*>"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\u5e7f\u544a\\s*\\(*\\s*\\d*\\S*\\s*\\)*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "\u5e7f\u544a\\s*>"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2
    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lg/buj;->al(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lg/fsj;Ljava/util/HashMap;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    :goto_0
    iput-object p4, p0, Lg/dpa;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpa;->e:Ljava/lang/Object;

    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkd;Ljava/util/Map;Lg/evo;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dpa;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p4, p0, Lg/dpa;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/dpa;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzcvt;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpa;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwr;[Z)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lg/dpa;->e:Ljava/lang/Object;

    new-array p1, p1, [Z

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dpa;Lg/ffr;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpa;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/gmr;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    const-string p1, "default_event_parameters"

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lg/dpa;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/dpa;->f:I

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpa;->e:Ljava/lang/Object;

    iput-object p4, p0, Lg/dpa;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/dpa;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpa;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dpa;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpa;->e:Ljava/lang/Object;

    iput-object p1, p0, Lg/dpa;->c:Ljava/lang/Object;

    return-void
.end method

.method public static h(Landroid/content/Context;)Lg/dpa;
    .locals 2

    sget-object v0, Lg/dpa;->b:Lg/dpa;

    if-nez v0, :cond_1

    const-class v0, Lg/dpa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dpa;->b:Lg/dpa;

    if-nez v1, :cond_0

    new-instance v1, Lg/dpa;

    invoke-direct {v1, p0}, Lg/dpa;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/dpa;->b:Lg/dpa;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/dpa;->b:Lg/dpa;

    return-object p0
.end method

.method public static i(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-object p0, Lg/dpa;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public j(Lg/gey;)Lg/gey;
    .locals 1

    iget-object v0, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p0, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lg/gey;
    .locals 2

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lg/dpa;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " is not defined"

    invoke-static {p1, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lg/dpa;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/dpa;->l(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public m(Ljava/lang/String;Lg/gey;)V
    .locals 2

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n()Z
    .locals 3

    iget-object v0, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "ad_auto_skip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    return v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lg/ke;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ke;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/ke;->m(Lg/eyn;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ke;->n()Lg/eyn;

    move-result-object p1

    iget-object v0, p1, Lg/eyn;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lg/dpa;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "baseUrl must end in /: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->g()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/a;

    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public p()Landroid/os/Bundle;
    .locals 12

    iget-object v0, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v0, Lg/gmr;

    iget-object v1, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v4, v5, :cond_8

    :try_start_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "n"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x64

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_3

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_2

    const/16 v9, 0x73

    if-eq v8, v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const-string v8, "l"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, -0x1

    :goto_2
    const-string v9, "v"

    if-eqz v8, :cond_7

    if-eq v8, v11, :cond_6

    if-eq v8, v10, :cond_5

    :try_start_2
    iget-object v5, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v5, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v5, v7, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    :try_start_3
    iget-object v5, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v5, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    iput-object v2, p0, Lg/dpa;->e:Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_a

    iget-object v0, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    :cond_a
    :goto_5
    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public q(Ljava/lang/String;Lg/gey;)V
    .locals 3

    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lg/dpa;

    iget-object v1, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/dpa;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, Lg/gmr;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "n"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v5, v6, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "t"

    if-eqz v5, :cond_3

    :try_start_1
    const-string v5, "s"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_3
    instance-of v5, v6, Ljava/lang/Long;

    if-eqz v5, :cond_4

    const-string v5, "l"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    instance-of v5, v6, Ljava/lang/Double;

    if-eqz v5, :cond_5

    const-string v5, "d"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    iget-object v5, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v5, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Cannot serialize bundle value to SharedPreferences. Type"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    iget-object v6, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v6, v6, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Cannot serialize bundle value to SharedPreferences"

    invoke-virtual {v6, v5, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lg/dpa;->e:Ljava/lang/Object;

    return-void
.end method

.method public s()Lg/daw;
    .locals 9

    iget-object v0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/eyn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v1, Lg/fys;

    if-nez v1, :cond_0

    new-instance v1, Lg/fys;

    new-instance v2, Lg/gjb;

    invoke-direct {v2}, Lg/gjb;-><init>()V

    invoke-direct {v1, v2}, Lg/fys;-><init>(Lg/gjb;)V

    :cond_0
    move-object v4, v1

    sget-object v8, Lg/bfh;->a:Lg/dbi;

    sget-object v1, Lg/bfh;->c:Lg/ao;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8}, Lg/ao;->am(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lg/ao;->aj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lg/dvi;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lg/dvi;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    new-instance v3, Lg/daw;

    iget-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lg/eyn;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-direct/range {v3 .. v8}, Lg/daw;-><init>(Lg/eyd;Lg/eyn;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Lg/gwa;)Lg/gey;
    .locals 3

    sget-object v0, Lg/gey;->o:Lg/gdz;

    invoke-virtual {p1}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {p1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v2, v0, Lg/enl;

    if-eqz v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/dpa;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public u()Lg/dpa;
    .locals 2

    new-instance v0, Lg/dpa;

    iget-object v1, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-direct {v0, p0, v1}, Lg/dpa;-><init>(Lg/dpa;Lg/ffr;)V

    return-object v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "OpenGmsgHandler.attributionReportingManager"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/dpa;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjJ:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "u"

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v1, Lg/dpa;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbkd;

    iget-object v0, v1, Lg/dpa;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/evo;

    iget-object v0, v1, Lg/dpa;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzbkd;->c:Lcom/google/android/gms/internal/ads/zzedp;

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v0

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzR()Lcom/google/android/gms/internal/ads/zzfew;

    move-result-object v6

    const/4 v12, 0x0

    const-string v7, ""

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfew;->zzb:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkr:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v13, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_2

    const-string v0, "sc"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzmt:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v15, "true"

    if-eqz v0, :cond_3

    const-string v0, "ig_cl"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v16, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v16, v8

    const/4 v8, 0x0

    :goto_2
    const-string v0, "expand"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzf(Ljava/util/Map;)Z

    move-result v0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/util/Map;)I

    move-result v3

    invoke-interface {v5, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaL(ZIZ)V

    return-void

    :cond_5
    const-string v0, "webapp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlD:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_allowed_for_lock_screen"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-eqz v16, :cond_7

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzf(Ljava/util/Map;)Z

    move-result v6

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/util/Map;)I

    move-result v7

    move v9, v2

    move-object/from16 v8, v16

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaN(ZILjava/lang/String;ZZ)V

    return-void

    :cond_7
    move v7, v2

    move-object v15, v5

    check-cast v15, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzf(Ljava/util/Map;)Z

    move-result v16

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/util/Map;)I

    move-result v17

    const-string v0, "html"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    const-string v0, "baseurl"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_8
    move/from16 v20, v2

    const-string v0, "chrome_custom_tab"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzeH:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "User opt out chrome custom tab."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbkd;->o(I)V

    goto :goto_5

    :cond_9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzeF:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lg/eab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v12, 0x1

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdo;->zzg(Landroid/content/Context;)Z

    move-result v12

    :cond_b
    :goto_4
    if-nez v12, :cond_c

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbkd;->o(I)V

    :goto_5
    const-string v0, "use_first_package"

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v20

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbkd;->k(Lg/evo;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    :cond_c
    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v20

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Cannot open browser with null or empty url"

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbkd;->o(I)V

    return-void

    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v13

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v15

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v16

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v17

    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzbkd;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbkd;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v5, :cond_e

    if-eqz v10, :cond_e

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbkd;->m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_d

    :cond_e
    new-instance v4, Lg/egs;

    invoke-direct {v4, v2}, Lg/egs;-><init>(Lcom/google/android/gms/internal/ads/zzbkd;)V

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    new-instance v9, Lg/etg;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/16 v19, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v9 .. v19}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    invoke-interface {v5, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V

    return-void

    :cond_f
    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v20

    const-string v0, "app"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "system_browser"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbkd;->k(Lg/evo;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    :cond_11
    :goto_6
    const-string v0, "open_app"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "p"

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhS:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "Package name missing from open app action."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_12
    if-eqz v5, :cond_13

    if-eqz v10, :cond_13

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v6}, Lcom/google/android/gms/internal/ads/zzbkd;->m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_13
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_14

    const-string v0, "Cannot get package manager from open app action."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    new-instance v3, Lg/etg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    invoke-direct {v3, v0, v2}, Lg/etg;-><init>(Landroid/content/Intent;Lg/fre;)V

    invoke-interface {v5, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V

    return-void

    :cond_15
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbkd;->l(Z)V

    const-string v0, "intent_url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v17, 0x0

    if-nez v0, :cond_16

    :try_start_0
    invoke-static {v13, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    :goto_7
    move-object/from16 v0, v17

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v12, "Error parsing the url: "

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_8
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v18

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v20

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v21

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v22

    move-object/from16 v19, v12

    invoke-static/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzbkd;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzbkd;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbcn;->zzhT:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v14, Lg/edt;->a:Lg/edt;

    iget-object v14, v14, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    :cond_17
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_18
    :goto_9
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbcn;->zzil:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v13, Lg/edt;->a:Lg/edt;

    iget-object v13, v13, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v13, "event_id"

    if-eqz v12, :cond_19

    const-string v12, "intent_async"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v14, 0x1

    goto :goto_a

    :cond_19
    const/4 v14, 0x0

    :goto_a
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v14, :cond_1a

    new-instance v12, Lg/cri;

    invoke-direct {v12, v7, v3, v9, v4}, Lg/cri;-><init>(ZLg/evo;Ljava/util/HashMap;Ljava/util/Map;)V

    iput-object v12, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    const/4 v12, 0x0

    goto :goto_b

    :cond_1a
    move v12, v7

    :goto_b
    const-string v7, "openIntentAsync"

    if-eqz v0, :cond_1c

    if-eqz v5, :cond_1b

    if-eqz v10, :cond_1b

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v5, v10, v6}, Lcom/google/android/gms/internal/ads/zzbkd;->m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v14, :cond_1f

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v5, v7, v9}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d

    :cond_1b
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    new-instance v3, Lg/etg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    invoke-direct {v3, v0, v2}, Lg/etg;-><init>(Landroid/content/Intent;Lg/fre;)V

    invoke-interface {v5, v3, v12, v8}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V

    goto/16 :goto_d

    :cond_1c
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v18

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v20

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v21

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v22

    invoke-static/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzbkd;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzffs;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbkd;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1d
    move-object/from16 v0, v16

    :goto_c
    if-eqz v5, :cond_1e

    if-eqz v10, :cond_1e

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v0, v6}, Lcom/google/android/gms/internal/ads/zzbkd;->m(Lg/evo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v14, :cond_1f

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v5, v7, v9}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_d

    :cond_1e
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcgu;

    new-instance v16, Lg/etg;

    const-string v3, "i"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    const-string v3, "m"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/String;

    const-string v3, "c"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Ljava/lang/String;

    const-string v3, "f"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Ljava/lang/String;

    const-string v3, "e"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbkd;->h:Lg/fre;

    move-object/from16 v18, v0

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/fre;)V

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v12, v8}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V

    :cond_1f
    :goto_d
    return-void
.end method
