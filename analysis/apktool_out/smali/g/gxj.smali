.class public final Lg/gxj;
.super Lg/fox;
.source "SourceFile"


# instance fields
.field public final a:Lg/fly;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/gsh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/fly;->VAR:Lg/fly;

    iput-object v0, p0, Lg/gxj;->a:Lg/fly;

    iput-object p1, p0, Lg/gxj;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/ve;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/fly;->CLASS_INSTANCE:Lg/fly;

    iput-object v0, p0, Lg/gxj;->a:Lg/fly;

    iput-object p1, p0, Lg/gxj;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->ax:Lg/acq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REPLACE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gxj;->a:Lg/fly;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gxj;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
