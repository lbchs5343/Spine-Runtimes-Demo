.class public abstract Lg/cbt;
.super Ljava/lang/Object;

# interfaces
.implements Lg/faq;


# instance fields
.field public b:Lg/faq;

.field public c:Lg/faq;

.field public final e:Lg/ekx;


# direct methods
.method public constructor <init>(Lg/ekx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cbt;->e:Lg/ekx;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v1}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cbt;->e:Lg/ekx;

    invoke-virtual {v1}, Lg/ekx;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq()Lg/axb;
    .locals 1

    sget-object v0, Lg/gt;->dq:Lg/gt;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/cbt;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
