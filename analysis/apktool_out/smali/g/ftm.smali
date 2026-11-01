.class public final Lg/ftm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public b:Lg/bnp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ftm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lg/ftm;->a:Ljava/util/ArrayDeque;

    new-instance v0, Lg/bnp;

    invoke-direct {v0}, Lg/bnp;-><init>()V

    iput-object v0, p0, Lg/ftm;->b:Lg/bnp;

    return-void
.end method


# virtual methods
.method public final c(Lg/fza;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/ftm;->b:Lg/bnp;

    iget-object v0, v0, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lg/ftm;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bnp;

    iput-object v0, p0, Lg/ftm;->b:Lg/bnp;

    return-void
.end method

.method public final e(Lg/bjk;)V
    .locals 2

    iget-object v0, p0, Lg/ftm;->b:Lg/bnp;

    iget-object v1, p0, Lg/ftm;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lg/ftm;->b:Lg/bnp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/bnp;

    invoke-direct {v1, v0, p1}, Lg/bnp;-><init>(Lg/bnp;Lg/bjk;)V

    iput-object v1, p0, Lg/ftm;->b:Lg/bnp;

    return-void

    :cond_0
    new-instance p1, Lg/blf;

    const-string v0, "Regions stack size limit reached"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Region stack size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/ftm;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ftm;->b:Lg/bnp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
