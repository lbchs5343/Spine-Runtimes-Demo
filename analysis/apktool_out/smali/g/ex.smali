.class public abstract Lg/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fpk;
.implements Lg/aeu;


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String;

.field public static final c:I

.field public static final d:Ljava/util/TimeZone;

.field public static final e:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lg/ex;->d:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lg/ex;->e:Ljava/util/Locale;

    sget-object v0, Lg/cbj;->AutoCloseSource:Lg/cbj;

    iget v0, v0, Lg/cbj;->mask:I

    sget-object v1, Lg/cbj;->InternFieldNames:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->UseBigDecimal:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->AllowUnQuotedFieldNames:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->SortFeidFastMatch:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/cbj;->IgnoreNotMatch:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    or-int/2addr v0, v1

    sput v0, Lg/ex;->a:I

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lg/ex;->b:Ljava/lang/String;

    sget-object v0, Lg/gar;->QuoteFieldNames:Lg/gar;

    iget v0, v0, Lg/gar;->mask:I

    sget-object v1, Lg/gar;->SkipTransientField:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/gar;->WriteEnumUsingToString:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lg/gar;->SortField:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    or-int/2addr v0, v1

    sput v0, Lg/ex;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lg/cbj;

    sget-object v1, Lg/mh;->a:Lg/mh;

    sget v2, Lg/ex;->a:I

    invoke-static {p1, p0, v1, v2, v0}, Lg/ex;->h(Ljava/lang/String;Ljava/lang/reflect/Type;Lg/mh;I[Lg/cbj;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lg/ccw;

    sget-object v2, Lg/mh;->a:Lg/mh;

    new-instance v3, Lg/fzg;

    sget v4, Lg/ex;->a:I

    invoke-direct {v3, p0, v4}, Lg/fzg;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v2}, Lg/ccw;-><init>(Lg/fzg;Lg/mh;)V

    iget-object p0, v1, Lg/ccw;->h:Lg/fzg;

    iget v2, p0, Lg/fzg;->o:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lg/fzg;->az()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lg/fzg;->ad()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lg/gll;

    invoke-virtual {v1, v2, p0, v0}, Lg/ccw;->aa(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lg/ccw;->ab()V

    move-object v0, p0

    :goto_0
    invoke-virtual {v1}, Lg/ccw;->close()V

    return-object v0
.end method

.method public static final varargs h(Ljava/lang/String;Ljava/lang/reflect/Type;Lg/mh;I[Lg/cbj;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    iget v3, v3, Lg/cbj;->mask:I

    or-int/2addr p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p4, Lg/ccw;

    new-instance v1, Lg/fzg;

    invoke-direct {v1, p0, p3}, Lg/fzg;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, v1, p2}, Lg/ccw;-><init>(Lg/fzg;Lg/mh;)V

    invoke-virtual {p4, v0, p1}, Lg/ccw;->p(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4}, Lg/ccw;->ab()V

    invoke-virtual {p4}, Lg/ccw;->close()V

    return-object p0
.end method

.method public static final i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lg/cbq;->a:Lg/cbq;

    const/4 v1, 0x0

    new-array v1, v1, [Lg/gar;

    new-instance v2, Lg/cxa;

    sget v3, Lg/ex;->c:I

    invoke-direct {v2, v3, v1}, Lg/cxa;-><init>(I[Lg/gar;)V

    :try_start_0
    new-instance v1, Lg/cnu;

    invoke-direct {v1, v2, v0}, Lg/cnu;-><init>(Lg/cxa;Lg/cbq;)V

    invoke-virtual {v1, p0}, Lg/cnu;->r(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lg/cxa;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lg/cxa;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lg/cxa;->close()V

    throw p0
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 3

    new-instance v0, Lg/cxa;

    sget v1, Lg/ex;->c:I

    sget-object v2, Lg/gar;->EMPTY:[Lg/gar;

    invoke-direct {v0, v1, v2}, Lg/cxa;-><init>(I[Lg/gar;)V

    :try_start_0
    new-instance v1, Lg/cnu;

    sget-object v2, Lg/cbq;->a:Lg/cbq;

    invoke-direct {v1, v0, v2}, Lg/cnu;-><init>(Lg/cxa;Lg/cbq;)V

    invoke-virtual {v1, p0}, Lg/cnu;->r(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/cxa;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/cxa;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lg/cxa;->close()V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/ex;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
