.class public final Lg/crh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/ab;


# instance fields
.field public final b:Lg/dwp;

.field public final c:Lg/cqi;

.field public final d:Lg/cqi;

.field public final e:Lg/ekr;


# direct methods
.method public constructor <init>(Lg/cqi;Lg/cqi;Lg/ekr;Lg/dwp;Lg/efs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/crh;->c:Lg/cqi;

    iput-object p2, p0, Lg/crh;->d:Lg/cqi;

    iput-object p3, p0, Lg/crh;->e:Lg/ekr;

    iput-object p4, p0, Lg/crh;->b:Lg/dwp;

    iget-object p1, p5, Lg/efs;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lg/arp;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p5}, Lg/arp;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lg/crh;->a:Lg/ab;

    if-nez v0, :cond_1

    const-class v0, Lg/crh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/crh;->a:Lg/ab;

    if-nez v1, :cond_0

    new-instance v1, Lg/cva;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lg/cva;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lg/cva;->b()Lg/ab;

    move-result-object p0

    sput-object p0, Lg/crh;->a:Lg/ab;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final g(Lg/bpj;)Lg/fpd;
    .locals 6

    new-instance v0, Lg/fpd;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lg/dzj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/dzj;->a:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lg/cep;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lg/cep;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-static {}, Lg/ku;->d()Lg/fpd;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "cct"

    iput-object v3, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast p1, Lg/dzj;

    iget-object v3, p1, Lg/dzj;->d:Ljava/lang/String;

    iget-object p1, p1, Lg/dzj;->e:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v4, "1$"

    const-string v5, "\\"

    invoke-static {v4, v3, v5, p1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    iput-object p1, v2, Lg/fpd;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Lg/fpd;->w()Lg/ku;

    move-result-object v2

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    return-object v0
.end method
