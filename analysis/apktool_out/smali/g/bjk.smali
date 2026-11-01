.class public abstract Lg/bjk;
.super Lg/lh;
.source "SourceFile"

# interfaces
.implements Lg/cfm;


# static fields
.field public static final c:Lg/dba;


# instance fields
.field public d:Lg/cfm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/bjk;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/bjk;->c:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cfm;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p1, p0, Lg/bjk;->d:Lg/cfm;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lg/bjk;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Lg/amj;Lg/amj;)Z
    .locals 1

    const-string p1, "Replace sub block not supported for class \"{}\""

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lg/bjk;->c:Lg/dba;

    invoke-interface {v0, p2, p1}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
