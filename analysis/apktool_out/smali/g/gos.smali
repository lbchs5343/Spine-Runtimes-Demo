.class public final Lg/gos;
.super Lg/fox;
.source "SourceFile"


# instance fields
.field public final a:Lg/hed;

.field public final b:Lg/eek;


# direct methods
.method public constructor <init>(Lg/hed;Lg/eek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gos;->a:Lg/hed;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lg/gos;->b:Lg/eek;

    return-void
.end method


# virtual methods
.method public final d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->bj:Lg/acq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INIT{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gos;->b:Lg/eek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
