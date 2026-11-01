.class public final Lg/gea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Z

.field public d:Lg/sz;

.field public e:Lg/ke;

.field public final f:Lg/fzn;

.field public final g:Ljava/lang/String;

.field public final h:Lg/ais;

.field public final i:Lg/dzh;

.field public final j:Lg/eyn;

.field public final k:Lg/fdy;

.field public l:Ljava/lang/String;

.field public m:Lg/dpd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lg/gea;->a:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg/gea;->b:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lg/eyn;Ljava/lang/String;Lg/dvq;Lg/dpd;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gea;->g:Ljava/lang/String;

    iput-object p2, p0, Lg/gea;->j:Lg/eyn;

    iput-object p3, p0, Lg/gea;->l:Ljava/lang/String;

    new-instance p1, Lg/fzn;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lg/fzn;-><init>(I)V

    iput-object p1, p0, Lg/gea;->f:Lg/fzn;

    iput-object p5, p0, Lg/gea;->m:Lg/dpd;

    iput-boolean p6, p0, Lg/gea;->c:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lg/dvq;->f()Lg/ais;

    move-result-object p1

    iput-object p1, p0, Lg/gea;->h:Lg/ais;

    goto :goto_0

    :cond_0
    new-instance p1, Lg/ais;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/ais;-><init>(I)V

    iput-object p1, p0, Lg/gea;->h:Lg/ais;

    :goto_0
    if-eqz p7, :cond_1

    new-instance p1, Lg/fdy;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lg/fdy;-><init>(I)V

    iput-object p1, p0, Lg/gea;->k:Lg/fdy;

    return-void

    :cond_1
    if-eqz p8, :cond_3

    new-instance p1, Lg/dzh;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lg/dzh;-><init>(I)V

    iput-object p1, p0, Lg/gea;->i:Lg/dzh;

    sget-object p2, Lg/cso;->f:Lg/dpd;

    const-string p3, "type"

    invoke-static {p2, p3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p2, Lg/dpd;->d:Ljava/lang/String;

    const-string p4, "multipart"

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-object p2, p1, Lg/dzh;->f:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "multipart != "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lg/gea;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lg/gea;->j:Lg/eyn;

    invoke-virtual {v2, v0}, Lg/eyn;->p(Ljava/lang/String;)Lg/ke;

    move-result-object v0

    iput-object v0, p0, Lg/gea;->e:Lg/ke;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lg/gea;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lg/gea;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    iget-object p3, p0, Lg/gea;->e:Lg/ke;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "encodedName"

    invoke-static {p1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    :cond_2
    iget-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    const/16 v3, 0xd3

    const-string v4, " \"\'<>#&="

    invoke-static {v0, v0, v3, p1, v4}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    invoke-static {v0, v0, v3, p2, v4}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-object p3, p0, Lg/gea;->e:Lg/ke;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "name"

    invoke-static {p1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    :cond_5
    iget-object v2, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    const/16 v3, 0xdb

    const-string v4, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    invoke-static {v0, v0, v3, p1, v4}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lg/ke;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    invoke-static {v0, v0, v3, p2, v4}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v1, 0x0

    const-string v2, "name"

    iget-object v3, p0, Lg/gea;->k:Lg/fdy;

    if-eqz p3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    const/16 v2, 0x53

    invoke-static {v1, v1, v2, p1, v0}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v3, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v1, v1, v2, p2, v0}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    const/16 v2, 0x5b

    invoke-static {v1, v1, v2, p1, v0}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v3, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v1, v1, v2, p2, v0}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object p1, Lg/dpd;->a:Ljava/util/regex/Pattern;

    invoke-static {p2}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object p1

    iput-object p1, p0, Lg/gea;->m:Lg/dpd;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed content type: "

    invoke-static {v0, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    iget-object v0, p0, Lg/gea;->h:Lg/ais;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p1, p2}, Lg/ais;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Lg/dvq;Lg/sz;)V
    .locals 2

    iget-object v0, p0, Lg/gea;->i:Lg/dzh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "body"

    invoke-static {p2, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lg/bmb;

    invoke-direct {v1, p1, p2}, Lg/bmb;-><init>(Lg/dvq;Lg/sz;)V

    iget-object p1, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
