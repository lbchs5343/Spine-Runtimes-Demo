.class public final Lg/fyl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;


# instance fields
.field public b:Lg/cdy;

.field public volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg/fyl;->a:Ljava/util/HashSet;

    return-void
.end method

.method public static d(Lg/fyl;Lg/cdy;Lg/vg;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "dpa-ati"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dpa-ame"

    invoke-static {p1, p0, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dpa-ack"

    invoke-static {p1, p0, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dpa-ass"

    invoke-static {p1, p0, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static e(Lg/btp;ILjava/lang/Throwable;)V
    .locals 1

    invoke-interface {p0, p1}, Lg/btp;->o(I)V

    const/16 p0, 0x4d8

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0x44e

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "vs code is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static f(Lg/btp;)V
    .locals 2

    const-string v0, "a"

    sget-object v1, Lg/fyl;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lg/btp;->i(Lg/x;)V

    return-void
.end method


# virtual methods
.method public final g(Lg/btp;Z)Z
    .locals 4

    const-string v0, "a"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 p2, 0x44d

    invoke-static {p1, p2, v2}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return v3

    :cond_0
    sget-object v1, Lg/fyl;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lg/fyl;->f(Lg/btp;)V

    return v3

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lg/fyl;->c:Z

    if-nez p2, :cond_2

    const/16 p2, 0x44e

    invoke-static {p1, p2, v2}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Ljava/lang/String;Lg/btp;)V
    .locals 9

    iget-object v0, p0, Lg/fyl;->b:Lg/cdy;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lg/fyl;->g(Lg/btp;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    const/16 p1, 0x517

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-static {v0}, Lg/dtw;->c(Landroid/content/Context;)Lg/daw;

    move-result-object v1

    const-class v2, Lg/haw;

    invoke-virtual {v1, v2}, Lg/daw;->r(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/haw;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v5

    invoke-static {v0}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lg/haw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lg/czh;

    move-result-object p1

    new-instance v0, Lg/dzh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v3, v1}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lg/czh;->d(Lg/bmm;)V

    return-void
.end method
