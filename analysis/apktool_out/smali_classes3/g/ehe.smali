.class public final Lg/ehe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lg/ehe;


# instance fields
.field public final b:Ljava/util/List;

.field public c:Z

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/ehe;

    invoke-direct {v0}, Lg/ehe;-><init>()V

    sput-object v0, Lg/ehe;->a:Lg/ehe;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ehe;->c:Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/ehe;->d:Ljava/util/List;

    iput-object v0, p0, Lg/ehe;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/ehe;->e()Lg/ehe;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lg/ehe;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ehe;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final f(Ljava/lang/Class;Z)Z
    .locals 2

    iget-boolean v0, p0, Lg/ehe;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/cpe;->a:Lg/eyt;

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_2

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lg/cpe;->a:Lg/eyt;

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lg/ehe;->d:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lg/ehe;->b:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 3

    iget-object v0, p2, Lg/ri;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lg/ehe;->f(Ljava/lang/Class;Z)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lg/ehe;->f(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lg/gka;

    invoke-direct {v0, p0, v1, p1, p2}, Lg/gka;-><init>(Lg/ehe;ZLg/eem;Lg/ri;)V

    return-object v0
.end method
