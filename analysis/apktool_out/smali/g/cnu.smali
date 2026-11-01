.class public final Lg/cnu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lg/aca;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/TimeZone;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lg/cbq;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/Locale;

.field public i:I

.field public final j:Lg/cxa;

.field public k:Ljava/util/IdentityHashMap;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/cxa;Lg/cbq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cnu;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/cnu;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/cnu;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/cnu;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/cnu;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/cnu;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lg/cnu;->i:I

    iput-object v0, p0, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    sget-object v0, Lg/ex;->d:Ljava/util/TimeZone;

    iput-object v0, p0, Lg/cnu;->d:Ljava/util/TimeZone;

    sget-object v1, Lg/ex;->e:Ljava/util/Locale;

    iput-object v1, p0, Lg/cnu;->h:Ljava/util/Locale;

    iput-object p1, p0, Lg/cnu;->j:Lg/cxa;

    iput-object p2, p0, Lg/cnu;->f:Lg/cbq;

    iput-object v0, p0, Lg/cnu;->d:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/cnu;->j:Lg/cxa;

    if-nez p1, :cond_1

    iget p1, v0, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->WriteNullStringAsEmpty:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const-string p1, ""

    invoke-virtual {v0, p1}, Lg/cxa;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/cxa;->o()V

    return-void

    :cond_1
    iget v1, v0, Lg/cxa;->k:I

    sget-object v2, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lg/cxa;->r(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lg/cxa;->v(ZLjava/lang/String;C)V

    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg/cnu;->b:Lg/aca;

    iget-object v1, v0, Lg/aca;->c:Ljava/lang/Object;

    iget-object v2, p0, Lg/cnu;->j:Lg/cxa;

    if-ne p1, v1, :cond_0

    const-string p1, "{\"$ref\":\"@\"}"

    invoke-virtual {v2, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lg/aca;->b:Lg/aca;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lg/aca;->c:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    const-string p1, "{\"$ref\":\"..\"}"

    invoke-virtual {v2, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, v0, Lg/aca;->b:Lg/aca;

    if-nez v1, :cond_3

    iget-object v0, v0, Lg/aca;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    const-string p1, "{\"$ref\":\"$\"}"

    invoke-virtual {v2, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/aca;

    invoke-virtual {p1}, Lg/aca;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\"$ref\":\""

    invoke-virtual {v2, v0}, Lg/cxa;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final p()V
    .locals 3

    const/16 v0, 0xa

    iget-object v1, p0, Lg/cnu;->j:Lg/cxa;

    invoke-virtual {v1, v0}, Lg/cxa;->write(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lg/cnu;->i:I

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lg/cxa;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg/cnu;->j:Lg/cxa;

    iget v0, v0, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lg/aca;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lg/aca;-><init>(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lg/cnu;->b:Lg/aca;

    iget-object p1, p0, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object p1, p0, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lg/cnu;->b:Lg/aca;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/cnu;->j:Lg/cxa;

    invoke-virtual {p1}, Lg/cxa;->o()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lg/cnu;->f:Lg/cbq;

    invoke-virtual {v1, v0}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v1, v1}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lg/bfj;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cnu;->j:Lg/cxa;

    invoke-virtual {v0}, Lg/cxa;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
