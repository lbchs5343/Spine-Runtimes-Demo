.class public abstract Lg/amq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dba;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68929dc81c4e557dL


# instance fields
.field protected name:Ljava/lang/String;


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    const-string v0, "NOP"

    invoke-static {v0}, Lg/dsr;->l(Ljava/lang/String;)Lg/dba;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u(Lg/bmk;)Z
    .locals 0

    invoke-static {p0, p1}, Lg/awf;->v(Lg/dba;Lg/bmk;)Z

    move-result p1

    return p1
.end method
