.class public final Lg/cvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/axw;


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Lg/ctk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cvp;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cvp;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cvp;->b:Ljava/util/Set;

    sget-object v0, Lg/nd;->SECURE_ZIP_READER:Lg/nd;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lg/ahh;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p1, Lg/acq;->e:Lg/acq;

    :goto_0
    iput-object p1, p0, Lg/cvp;->c:Lg/ctk;

    return-void
.end method


# virtual methods
.method public final bt(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0, p1}, Lg/ctk;->bt(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final bu(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0, p1, p2}, Lg/ctk;->bu(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public final bv(Lg/ffs;)Z
    .locals 1

    iget-object v0, p0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0, p1}, Lg/ctk;->bv(Lg/ffs;)Z

    move-result p1

    return p1
.end method

.method public final bw()Z
    .locals 1

    iget-object v0, p0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0}, Lg/ctk;->bw()Z

    move-result v0

    return v0
.end method

.method public final bx()I
    .locals 1

    iget-object v0, p0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0}, Lg/ctk;->bx()I

    move-result v0

    return v0
.end method
