.class public final Lg/ekz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Lg/akj;

.field public final d:Lg/bnu;

.field public final e:Z


# direct methods
.method public constructor <init>(Lg/bnu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ekz;->d:Lg/bnu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput p1, p0, Lg/ekz;->a:I

    iput-boolean p1, p0, Lg/ekz;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lg/ekz;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/ekz;

    iget-object v0, p0, Lg/ekz;->d:Lg/bnu;

    iget-object p1, p1, Lg/ekz;->d:Lg/bnu;

    invoke-virtual {v0, p1}, Lg/bnu;->n(Lg/bnu;)I

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/ekz;->d:Lg/bnu;

    :try_start_0
    iget-boolean v1, v0, Lg/bnu;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, v0, Lg/bnu;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v1, v0, Lg/bnu;->k:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/bfj;

    const-string v2, "get property error\u3002 "

    invoke-static {v2, v0}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g(Lg/cnu;)V
    .locals 4

    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    iget v0, p1, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->QuoteFieldNames:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lg/ekz;->d:Lg/bnu;

    if-eqz v1, :cond_1

    sget-object v1, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v3, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lg/cxa;->p(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, v3, Lg/bnu;->c:[C

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lg/cxa;->write([CII)V

    return-void

    :cond_1
    iget-object v0, v3, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lg/cxa;->p(Ljava/lang/String;Z)V

    return-void
.end method

.method public final h(Lg/cnu;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p1, Lg/cnu;->f:Lg/cbq;

    iget-object v1, p1, Lg/cnu;->j:Lg/cxa;

    iget-object v2, p0, Lg/ekz;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v3, p1, Lg/cnu;->h:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p1, p1, Lg/cnu;->d:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/cxa;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lg/cnu;->r(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lg/ekz;->c:Lg/akj;

    iget-object v3, p0, Lg/ekz;->d:Lg/bnu;

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    iget-object v2, v3, Lg/bnu;->b:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v4

    new-instance v5, Lg/akj;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lg/akj;-><init>(I)V

    iput-object v4, v5, Lg/akj;->h:Ljava/lang/Object;

    iput-object v2, v5, Lg/akj;->f:Ljava/lang/Object;

    iput-object v5, p0, Lg/ekz;->c:Lg/akj;

    :cond_3
    iget-object v2, p0, Lg/ekz;->c:Lg/akj;

    if-nez p2, :cond_7

    sget-object p2, Lg/gar;->WriteNullNumberAsZero:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    iget v0, p0, Lg/ekz;->a:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_4

    iget-object p2, v2, Lg/akj;->f:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p1, 0x30

    invoke-virtual {v1, p1}, Lg/cxa;->write(I)V

    return-void

    :cond_4
    sget-object p2, Lg/gar;->WriteNullBooleanAsFalse:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    iget-object p2, v2, Lg/akj;->f:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    if-ne v4, p2, :cond_5

    const-string p1, "false"

    invoke-virtual {v1, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_5
    sget-object p2, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_6

    iget-object p2, v2, Lg/akj;->f:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "[]"

    invoke-virtual {v1, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p2, v2, Lg/akj;->h:Ljava/lang/Object;

    check-cast p2, Lg/duf;

    iget-object v0, v3, Lg/bnu;->i:Ljava/lang/String;

    iget-object v1, v2, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {p2, p1, v2, v0, v1}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v4, v2, Lg/akj;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    if-ne v1, v4, :cond_8

    iget-object v0, v2, Lg/akj;->h:Ljava/lang/Object;

    check-cast v0, Lg/duf;

    iget-object v1, v3, Lg/bnu;->i:Ljava/lang/String;

    iget-object v2, v3, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v1, v2}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void

    :cond_8
    invoke-virtual {v0, v1}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v0

    iget-object v1, v3, Lg/bnu;->i:Ljava/lang/String;

    iget-object v2, v3, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v1, v2}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void
.end method
